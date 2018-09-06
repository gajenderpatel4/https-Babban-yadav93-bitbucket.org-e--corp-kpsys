-- Adds kp_anpr_log table
-- Created by dkhvatov on 2017-01-17

CREATE TABLE kp_anpr_log
(
    ANPRLOGGIDNO     BIGINT PRIMARY KEY NOT NULL IDENTITY,
    CLNTIDNO         INT                NOT NULL,
    DVCEIDNO         INT                NOT NULL,
    LOGGTMST         DATETIME           NOT NULL,
    DRCTNMBR         TINYINT            NOT NULL,
    NMBRPLTE         VARCHAR(20)        NOT NULL,
    STATNMBR         TINYINT            NOT NULL,
    PAYMSTATNMBR     TINYINT            NOT NULL,
    MTCHANPRLOGGIDNO BIGINT,
    OBSVIDFC         VARCHAR(35),
    CONSTRAINT fkp_anr_log_client FOREIGN KEY (CLNTIDNO) REFERENCES kp_client (CLNTIDNO),
    CONSTRAINT fkp_anr_log_device FOREIGN KEY (DVCEIDNO) REFERENCES guru_anprgate_device (ANPRDVCEIDNO)
);
CREATE UNIQUE INDEX akp_anpr_log
    ON kp_anpr_log (NMBRPLTE, DRCTNMBR, LOGGTMST);
CREATE INDEX ikp_anpr_log_device
    ON kp_anpr_log (DVCEIDNO);

ALTER TABLE kp_anpr_log
    ADD IMAGADDR VARCHAR(256);
