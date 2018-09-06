-- Adds TCKT (parking fine) role to default user
-- Created by dkhvatov on 2017-05-14

INSERT INTO kp_role_to_user (ROLEIDNO, USERIDNO, ADITPARM, CLNTIDNO) VALUES (21, 401, NULL, 24);
