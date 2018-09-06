-- Adds page editor role and corresponding role authorisations
-- Created by dkhvatov on 2016-11-19

SET IDENTITY_INSERT kp_role ON;
INSERT INTO kp_role (ROLEIDNO, CLNTIDNO, ROLENAME) VALUES (37, NULL, 'Page editor');
SET IDENTITY_INSERT kp_role OFF;

INSERT INTO kp_role_to_user (ROLEIDNO, USERIDNO, ADITPARM, CLNTIDNO) VALUES (37, 401, NULL, 24);

INSERT INTO kp_role_authorisation (ROLEIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ACCSLEVLNMBR)
VALUES (37, 'PAGES', 1, 1, 1, 0);
