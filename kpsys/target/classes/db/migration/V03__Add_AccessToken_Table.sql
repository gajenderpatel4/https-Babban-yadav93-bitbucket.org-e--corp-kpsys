-- Adds access_token table
-- Created by dkhvatov on 2016-05-08

CREATE TABLE kpsys.dbo.access_token
(
    token   VARCHAR(36) PRIMARY KEY NOT NULL,
    _user   INT                     NOT NULL,
    created DATETIME                NOT NULL,
    CONSTRAINT access_token_kp_user_USERIDNO_fk FOREIGN KEY (_user) REFERENCES kp_user (USERIDNO)
);
CREATE UNIQUE INDEX access_token_token_uindex ON kpsys.dbo.access_token (token);
CREATE INDEX access_token__user_index ON kpsys.dbo.access_token (_user);
