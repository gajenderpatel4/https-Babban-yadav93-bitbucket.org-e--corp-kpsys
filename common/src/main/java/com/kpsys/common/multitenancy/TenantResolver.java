package com.kpsys.common.multitenancy;

import com.kpsys.domain.Client;

/**
 * @author Dmitriy Khvatov (<i>dimax4@gmail.com</i>)
 * @version $Id$
 */
public interface TenantResolver {

    Client resolve();

}
