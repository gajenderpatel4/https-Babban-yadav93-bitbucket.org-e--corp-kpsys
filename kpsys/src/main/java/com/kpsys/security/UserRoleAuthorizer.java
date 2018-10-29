package com.kpsys.security;

import com.google.inject.Inject;
import com.kpsys.common.dao.RoleAuthorisationDao;
import com.kpsys.common.exceptions.KpsysException;
import com.kpsys.domain.RoleAuthorisation;
import com.kpsys.domain.User;
import io.dropwizard.auth.Authorizer;
import org.apache.commons.lang3.StringUtils;

import javax.ws.rs.core.Response;
import java.util.List;

import static com.kpsys.security.UserRoleAuthorizer.Actions.add;
import static com.kpsys.security.UserRoleAuthorizer.Actions.delete;
import static com.kpsys.security.UserRoleAuthorizer.Actions.edit;
import static com.kpsys.security.UserRoleAuthorizer.Actions.read;

/**
 * @author dkhvatov
 */
public class UserRoleAuthorizer implements Authorizer<User> {

    private final RoleAuthorisationDao roleAuthorisationDao;

    @Inject
    public UserRoleAuthorizer(RoleAuthorisationDao roleAuthorisationDao) {
        this.roleAuthorisationDao = roleAuthorisationDao;
    }

    public static boolean actionAllowed(RoleAuthorisation roleAuthorisation, String objCode, String action) {
        if (!objCode.equals(roleAuthorisation.getObjCode())) {
            return false;
        }
        if (read.toString().equals(action)) {
            return Boolean.TRUE == roleAuthorisation.getRead();
        }
        if (add.toString().equals(action)) {
            return Boolean.TRUE == roleAuthorisation.getAdd();
        }
        if (edit.toString().equals(action)) {
            return Boolean.TRUE == roleAuthorisation.getEdit();
        }
        return delete.toString().equals(action)
            && Boolean.TRUE == roleAuthorisation.getDelete();
    }

    public static boolean authorize(RoleAuthorisationDao roleAuthorisationDao, Integer userId, String objCode, String action) {
        List<RoleAuthorisation> roleAuthorisations = roleAuthorisationDao.getRoleAuthorisation(userId);
        return roleAuthorisations.stream()
            .anyMatch(r -> actionAllowed(r, objCode, action));
    }

    @Override
    public boolean authorize(User principal, String permission) {
        if (StringUtils.isEmpty(permission)) {
            throw new KpsysException("You are not authorized to perform this action", Response.Status.UNAUTHORIZED);
        }
        if (permission.indexOf(':') < 0) {
            throw new KpsysException("Wrong permission format: " + permission, Response.Status.UNAUTHORIZED);
        }
        String[] parts = permission.split(":");
        String objCode = parts[0];
        String action = parts[1];
        return authorize(roleAuthorisationDao, principal.getUserId(), objCode, action);
    }

    public enum Actions {
        read, add, edit, delete
    }

}
