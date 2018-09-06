-- kp_client --
CREATE TABLE dbo.kp_client (
    CLNTIDNO     INT IDENTITY (1, 1) NOT NULL,
    CLNTNAME     VARCHAR(35)         NOT NULL,
    CLNTSTATNMBR TINYINT             NULL,
    DATEPTRN     VARCHAR(15)         NULL
);

SET IDENTITY_INSERT kp_client ON;
INSERT INTO dbo.kp_client (CLNTIDNO, CLNTNAME, CLNTSTATNMBR, DATEPTRN)
VALUES (24, 'Test Client', 0, 'd/M-yyyy');
SET IDENTITY_INSERT kp_client OFF;
-- kp_customer --
CREATE TABLE dbo.kp_customer (
    CUSTIDNO     INT IDENTITY (1, 1) NOT NULL,
    CLNTIDNO     INT                 NOT NULL,
    STATNMBR     TINYINT             NOT NULL,
    CUSTIDFC     VARCHAR(20)         NULL,
    EXTNCUSTIDFC VARCHAR(20)         NULL,
    CUSTTYPENMBR TINYINT             NOT NULL,
    CUSTNAME1    VARCHAR(35)         NOT NULL,
    CUSTNAME2    VARCHAR(35)         NULL,
    CUSTADDR1    VARCHAR(35)         NULL,
    CUSTADDR2    VARCHAR(35)         NULL,
    CUSTPOOFIDFC VARCHAR(35)         NULL,
    CUSTPOOFNAME VARCHAR(35)         NULL,
    CNTCPRSNNAME VARCHAR(35)         NULL,
    PHONNMBR     VARCHAR(15)         NULL,
    VLIDFROMDATE DATE                NULL,
    VLIDUNTLDATE DATE                NULL,
    LANGCODE     VARCHAR(2)          NOT NULL,
    INVCNAME1    VARCHAR(35)         NULL,
    INVCNAME2    VARCHAR(35)         NULL,
    INVCADDR1    VARCHAR(35)         NULL,
    INVCADDR2    VARCHAR(35)         NULL,
    INVCPOOFIDFC VARCHAR(35)         NULL,
    INVCPOOFNAME VARCHAR(35)         NULL,
    EMALADDR     VARCHAR(256)        NULL,
    CUSTPSWD     VARCHAR(256)        NULL,
    CLNTCUSTIDNO INT                 NULL,
    BIRTDATE     DATE                NULL,
    CUSTCTRYCODE VARCHAR(2)          NULL,
    NO02PHONNMBR VARCHAR(15)         NULL,
    NO03PHONNMBR VARCHAR(15)         NULL,
    CUSTLOGOURLL VARCHAR(70)         NULL,
    USERIDNO     NUMERIC(19, 0)      NULL,
    LOGOIMAGURLL VARCHAR(128)        NULL,
    EXTNCUSTIDNO VARCHAR(20)         NULL
);
SET IDENTITY_INSERT kp_customer ON;
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (464, 24, 0, NULL, '', 0, 'Øystein Løken', 'Fabritius', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '',
                                                                                                                         'post@kpsys.no',
                                                                                                                         NULL, 0, NULL,
                                                                                                                         'no', '', '', NULL,
        NULL, 'http://gjesteparkering.no/fabritius.jpg', NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (465, 24, 0, NULL, '', 0, 'Skanlog', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', 'post@kpsys.no', NULL, 1,
                                                                                                          NULL, 'no', '', '', NULL, NULL,
        'http://gjesteparkering.no/skanlog.gif', NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (466, 24, 0, NULL, '', 0, 'SRO ', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', 'post@kpsys.no', NULL, 2, NULL,
                                                                                                    'no', '', '', NULL, NULL,
     'http://gjesteparkering.no/sro.jpg', '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1013, 24, 0, NULL, NULL, 0, 'Storcash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1014, 24, 0, NULL, NULL, 0, 'Ahlsell', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1015, 24, 0, NULL, NULL, 0, 'Kuehne + Nagel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1016, 24, 0, NULL, NULL, 0, 'Luxaflex', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1017, 24, 0, NULL, NULL, 0, 'Ingram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1018, 24, 0, NULL, NULL, 0, 'Rosim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1019, 24, 0, NULL, NULL, 0, 'Vishay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1020, 24, 0, NULL, NULL, 0, 'Attend IT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1021, 24, 0, NULL, NULL, 0, 'CDS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1022, 24, 0, NULL, NULL, 0, 'Kraus & Naimer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1023, 24, 0, NULL, NULL, 0, 'ABK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1024, 24, 0, NULL, NULL, 0, 'Byggimpuls', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1025, 24, 0, NULL, NULL, 0, 'Panzerprint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1026, 24, 0, NULL, NULL, 0, 'Kantine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1027, 24, 0, NULL, NULL, 0, 'Storcash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1028, 24, 0, NULL, NULL, 0, 'Netcontrol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1029, 24, 0, NULL, NULL, 0, 'Geoplan Øst', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1030, 24, 0, NULL, NULL, 0, 'Coloro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1031, 24, 0, NULL, NULL, 0, 'Ascom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1032, 24, 0, NULL, NULL, 0, 'Vestas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1033, 24, 0, NULL, NULL, 0, 'Tegnesenteret', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1034, 24, 0, NULL, NULL, 0, 'Coloro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1035, 24, 0, NULL, NULL, 0, 'Fagprofil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1036, 24, 0, NULL, NULL, 0, 'Bøckmann', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1037, 24, 0, NULL, NULL, 0, 'ProKon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1038, 24, 0, NULL, NULL, 0, 'Optimalprint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1039, 24, 0, NULL, NULL, 0, 'Oslo VVS-service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL,
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1040, 24, 0, NULL, NULL, 0, 'ABK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1041, 24, 0, NULL, NULL, 0, 'Elanders Novum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1042, 24, 0, NULL, NULL, 0, 'Rørmontasje', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1043, 24, 0, NULL, NULL, 0, 'Aco Kjemi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1044, 24, 0, NULL, NULL, 0, 'Converse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1045, 24, 0, NULL, NULL, 0, 'Henry Hansen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1046, 24, 0, NULL, NULL, 0, 'Sprinklerteknikk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL,
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1047, 24, 0, NULL, NULL, 0, 'Leica', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1048, 24, 0, NULL, NULL, 0, 'Call4All', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1049, 24, 0, NULL, NULL, 0, 'Entreprenør 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1050, 24, 0, NULL, NULL, 0, 'Juul VVS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1051, 24, 0, NULL, NULL, 0, 'Poseidon VVS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1052, 24, 0, NULL, NULL, 0, 'INVA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1053, 24, 0, NULL, NULL, 0, 'NVS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1054, 24, 0, NULL, NULL, 0, 'Trio Ving', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1055, 24, 0, NULL, NULL, 0, 'Cramo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1056, 24, 0, NULL, NULL, 0, 'WENAAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1057, 24, 0, NULL, NULL, 0, 'STORCASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1058, 24, 0, NULL, NULL, 0, 'Sinsen Kolonial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL,
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1059, 24, 0, NULL, NULL, 0, 'IMTECH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1060, 24, 0, NULL, NULL, 0, 'DOLLY DIMPLE''S ASKER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1061, 24, 0, NULL, NULL, 0, 'AF Gruppen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
                                                                                                                                      NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1062, 24, 0, NULL, NULL, 0, 'Sortera Norge AS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL,
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1063, 24, 0, NULL, NULL, 0, 'SpareBank 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
                                                                                                                                       NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1064, 24, 0, NULL, NULL, 0, 'Adecco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1065, 24, 0, NULL, NULL, 0, 'NEAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1066, 24, 0, NULL, NULL, 0, 'Vestlibakken Boligsameie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1067, 24, 0, NULL, NULL, 0, 'SKATT ØST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1068, 24, 0, NULL, NULL, 0, 'JESSHEIM ØYELEGESENTER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1069, 24, 0, NULL, NULL, 0, 'Conmec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1070, 24, 0, NULL, NULL, 0, 'Løkkalia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1071, 24, 0, NULL, NULL, 0, 'Tom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1072, 24, 0, NULL, NULL, 0, 'NEASDRIFT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
                                                                                                                                     NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1073, 24, 0, NULL, NULL, 0, 'CA Technology Sys. As', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1074, 24, 0, NULL, '', 1, 'Berendsen', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 0, NULL, 'no',
                                                                                                          '', '', NULL, NULL, '', '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1075, 24, 0, NULL, '', 1, 'Cramo', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 1, NULL, 'no', '',
                                                                                                      '', NULL, NULL, '', '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1076, 24, 0, NULL, '', 1, 'CA Technology Sys AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 2,
                                                                                                                        NULL, 'no', '', '',
                                                                                                                        NULL, NULL, '', '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1077, 24, 0, NULL, '', 1, 'Lås & Sikring', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 3, NULL,
                                                                                                                 'no', '', '', NULL, NULL,
        '', '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1078, 24, 0, NULL, '', 1, 'Envirobox', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 4, NULL, 'no',
                                                                                                          '', '', NULL, NULL, '', '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1086, 24, 0, NULL, '', 0, 'Jessheim Øyelegesenter', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 5,
                                                                                                                       NULL, NULL, NULL,
                                                                                                                       NULL, NULL, NULL,
     NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1087, 24, 0, NULL, '', 0, 'Jessheim Øyelegesenter', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 6,
                                                                                                                       NULL, NULL, NULL,
                                                                                                                       NULL, NULL, NULL,
     NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1088, 24, 0, NULL, '', 0, 'Skatt Øst', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 7, NULL, NULL,
                                                                                                          NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1089, 24, 0, NULL, '', 0, 'Sisa', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 8, NULL, NULL, NULL,
                                                                                                     NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1090, 24, 0, NULL, '', 0, 'Adecco', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 9, NULL, NULL,
                                                                                                          NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1091, 24, 0, NULL, '', 0, 'Sparebank1', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 10, NULL, NULL,
                                                                                                           NULL, NULL, NULL, NULL, NULL,
     '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1143, 24, 0, NULL, '', 0, 'Skatt Øst NY', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 11, NULL,
                                                                                                                NULL, NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1146, 24, 0, NULL, '', 0, 'B80', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 12, NULL, NULL, NULL,
                                                                                                    NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1147, 24, 0, NULL, '', 0, 'KWINTET NORGE AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 13, NULL,
                                                                                                                 NULL, NULL, NULL, NULL,
     NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1148, 24, 0, NULL, '', 0, 'PANZERPRINT', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 14, NULL,
                                                                                                               NULL, NULL, NULL, NULL, NULL,
        NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1153, 24, 0, NULL, '', 0, 'COLORO', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 15, NULL, NULL,
                                                                                                          NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1154, 24, 0, NULL, '', 0, 'ROSIM', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 16, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1155, 24, 0, NULL, '', 0, 'AQUATIC', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 17, NULL, 'no',
                                                                                                           '', '', NULL, NULL, '', '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1156, 24, 0, NULL, '', 0, 'Kuehne + Nagel AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 18,
                                                                                                                     NULL, NULL, NULL, NULL,
                                                                                                                     NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1157, 24, 0, NULL, '', 0, 'BYGGEIMPULS AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 19, NULL,
                                                                                                               NULL, NULL, NULL, NULL, NULL,
     NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1158, 24, 0, NULL, '', 0, 'AHLSELL BUTIKK', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 20, NULL,
                                                                                                               NULL, NULL, NULL, NULL, NULL,
     NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1159, 24, 0, NULL, '', 0, 'Abmas Elektro ', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 21, NULL,
                                                                                                               NULL, NULL, NULL, NULL, NULL,
     NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1160, 24, 0, NULL, '', 0, 'ABK AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 22, NULL, NULL,
                                                                                                          NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1161, 24, 0, NULL, '', 0, 'Malorama AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 23, NULL,
                                                                                                               NULL, NULL, NULL, NULL, NULL,
        NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1162, 24, 0, NULL, '', 0, 'COMMERCIAL DATA SERVERS AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL,
                                                                                                                           24, NULL, NULL,
                                                                                                                           NULL, NULL, NULL,
     NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1163, 24, 0, NULL, '', 0, 'Sprinklerteknikk AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 25,
                                                                                                                       NULL, NULL, NULL,
                                                                                                                       NULL, NULL, NULL,
        NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1164, 24, 0, NULL, '', 0, 'Oslo Kjøleteknikk as', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 26,
                                                                                                                     NULL, NULL, NULL, NULL,
                                                                                                                     NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1165, 24, 0, NULL, '', 0, 'Berendsen', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 27, NULL, NULL,
                                                                                                          NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1166, 24, 0, NULL, '', 0, 'Attend IT ', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 28, NULL, NULL,
                                                                                                           NULL, NULL, NULL, NULL, NULL,
     '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1167, 24, 0, NULL, '', 0, 'Ullevål Malermesterforretning AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '',
                                                                                                                                 NULL, 29,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
     NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1168, 24, 0, NULL, '', 0, 'Luxaflex Scandinavia AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL,
                                                                                                                           30, NULL, NULL,
                                                                                                                           NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1169, 24, 0, NULL, '', 0, 'GREENCARRIER SHIPPING', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 31,
                                                                                                                      NULL, NULL, NULL,
                                                                                                                      NULL, NULL, NULL,
     NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1170, 24, 0, NULL, '', 0, 'Sortera Norge AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 32, NULL,
                                                                                                                 NULL, NULL, NULL, NULL,
     NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1171, 24, 0, NULL, '', 0, 'Kraus & Naimer AB', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 33,
                                                                                                                     NULL, NULL, NULL, NULL,
                                                                                                                     NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1172, 24, 0, NULL, '', 0, 'Netcontrol AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 34, NULL,
                                                                                                                 NULL, NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1173, 24, 0, NULL, '', 0, 'Inva Engineering AS ', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 35,
                                                                                                                     NULL, NULL, NULL, NULL,
                                                                                                                     NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1174, 24, 0, NULL, '', 0, 'ABC Clausen as', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 36, NULL,
                                                                                                               NULL, NULL, NULL, NULL, NULL,
     NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1175, 24, 0, NULL, '', 0, 'KANTINE', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 37, NULL, NULL,
                                                                                                           NULL, NULL, NULL, NULL, NULL,
        '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1176, 24, 0, NULL, '', 0, 'entreprenor-1', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 38, NULL,
                                                                                                                 NULL, NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1177, 24, 0, NULL, '', 0, 'STORCASH NORGE', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 39, NULL,
                                                                                                               NULL, NULL, NULL, NULL, NULL,
     NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1178, 24, 0, NULL, '', 0, 'Imtech Norge AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 40, NULL,
                                                                                                                NULL, NULL, NULL, NULL,
     NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1179, 24, 0, NULL, '', 0, 'Vestas Wind Systems A/S', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL,
                                                                                                                           41, NULL, NULL,
                                                                                                                           NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1180, 24, 0, NULL, '', 0, 'Juuls Rørservice AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 42,
                                                                                                                       NULL, NULL, NULL,
                                                                                                                       NULL, NULL, NULL,
        NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1181, 24, 0, NULL, '', 0, 'AHLSELL HK', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 43, NULL, NULL,
                                                                                                           NULL, NULL, NULL, NULL, NULL,
     '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1182, 24, 0, NULL, '', 0, 'BØCKMAN', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 44, NULL, NULL,
                                                                                                           NULL, NULL, NULL, NULL, NULL,
        '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1183, 24, 0, NULL, '', 0, 'CONMEC', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 45, NULL, NULL,
                                                                                                          NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1184, 24, 0, NULL, '', 0, 'PROKON', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 46, NULL, NULL,
                                                                                                          NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1185, 24, 0, NULL, '', 0, 'RØRMONTASJE', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 47, NULL,
                                                                                                               NULL, NULL, NULL, NULL, NULL,
        NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1186, 24, 0, NULL, '', 0, 'CA TECHNOLOGY', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 48, NULL,
                                                                                                                 NULL, NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1187, 24, 0, NULL, '', 0, 'ERGOFAST', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 49, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1188, 24, 0, NULL, '', 0, 'OSLO VVS-service', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 50, NULL,
                                                                                                                 NULL, NULL, NULL, NULL,
     NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1189, 24, 0, NULL, '', 0, 'OSLO TAPET OG GULVBELEGG', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL,
                                                                                                                         51, NULL, NULL,
                                                                                                                         NULL, NULL, NULL,
     NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1190, 24, 0, NULL, '', 0, 'Call4All', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 52, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1191, 24, 0, NULL, '', 0, 'S. Lauritzen', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 53, NULL,
                                                                                                                NULL, NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1192, 24, 0, NULL, '', 0, 'Larsens Montasje', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 54, NULL,
                                                                                                                 NULL, NULL, NULL, NULL,
     NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1193, 24, 0, NULL, '', 0, 'Geoplan Øst', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 55, NULL,
                                                                                                               NULL, NULL, NULL, NULL, NULL,
        NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1194, 24, 0, NULL, '', 0, 'Ascom', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 56, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1195, 24, 0, NULL, '', 0, 'Vishay Nobel', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 57, NULL,
                                                                                                                NULL, NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1199, 24, 0, NULL, '', 0, 'TrioVing', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 58, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1200, 24, 0, NULL, '', 0, 'EnviroBox', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 59, NULL, NULL,
                                                                                                          NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1201, 24, 0, NULL, '', 0, 'Henry Hansen ', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 60, NULL,
                                                                                                                 NULL, NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1202, 24, 0, NULL, '', 0, 'lassikring', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 61, NULL, NULL,
                                                                                                           NULL, NULL, NULL, NULL, NULL,
     '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1203, 24, 0, NULL, '', 0, 'S. Lauritzen ', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 62, NULL,
                                                                                                                 NULL, NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1204, 24, 0, NULL, '', 0, 'Duri Fagprofil ', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 63, NULL,
                                                                                                                NULL, NULL, NULL, NULL,
     NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1208, 24, 0, NULL, '', 0, 'Døgnvakta', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 64, NULL, NULL,
                                                                                                          NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1209, 24, 0, NULL, '', 0, 'Ladysdesign', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 65, NULL,
                                                                                                               NULL, NULL, NULL, NULL, NULL,
        NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1210, 24, 0, NULL, '', 0, 'TB Elektro', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 66, NULL, NULL,
                                                                                                           NULL, NULL, NULL, NULL, NULL,
     '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1211, 24, 0, NULL, '', 0, 'AVM', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 67, NULL, NULL, NULL,
                                                                                                    NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1213, 24, 0, NULL, '', 0, 'Juul VVS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 68, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1214, 24, 0, NULL, '', 0, 'Emballeringsprodukter', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 69,
                                                                                                                      NULL, NULL, NULL,
                                                                                                                      NULL, NULL, NULL,
     NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1217, 24, 0, NULL, '', 1, 'Hyundai', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 70, NULL, 'no',
                                                                                                           '', '', NULL, NULL, '', '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1259, 24, 0, NULL, '', 0, 'TRESS FASTEBRUKERE', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 71,
                                                                                                                      NULL, NULL, NULL,
                                                                                                                      NULL, NULL, NULL,
        NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1260, 24, 0, NULL, '', 0, 'KUNST', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 72, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1436, 24, 0, NULL, '', 0, 'Vestlibakken', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 73, NULL,
                                                                                                                NULL, NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1444, 24, 0, NULL, '', 0, 'Responsiv Media', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 74, NULL,
                                                                                                                NULL, NULL, NULL, NULL,
     NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1445, 24, 0, NULL, '', 0, 'Palmgren', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 75, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1446, 24, 0, NULL, '', 0, 'Scanomat', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 76, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1447, 24, 0, NULL, '', 0, 'Hauge Elektro', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 77, NULL,
                                                                                                                 NULL, NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (1452, 24, 0, NULL, '', 0, 'Oslo IsolasjonsService', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 78,
                                                                                                                       NULL, NULL, NULL,
                                                                                                                       NULL, NULL, NULL,
     NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (1471, 24, 0, NULL, '', 0, 'Responsiv Media AS', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 79,
                                                                                                                      NULL, 'no', '', '',
                                                                                                                      NULL, NULL, '', '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2564, 24, 0, NULL, '', 0, 'Hultafors Group Norge ', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 80,
                                                                                                                       NULL, NULL, NULL,
                                                                                                                       NULL, NULL, NULL,
     NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2565, 24, 0, NULL, '', 0, 'Java Personal', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 81, NULL,
                                                                                                                 NULL, NULL, NULL, NULL,
        NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2566, 24, 0, NULL, '', 0, 'SRO', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 82, NULL, NULL, NULL,
                                                                                                    NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2577, 24, 0, NULL, '', 0, 'TEST', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 83, NULL, NULL, NULL,
                                                                                                     NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2601, 24, 0, NULL, NULL, 2, '101 - Ødegård - 2', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2602, 24, 0, NULL, NULL, 2, '102 - Stokvold - 2', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2603, 24, 0, NULL, NULL, 2, '103 - Paulsen - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2604, 24, 0, NULL, NULL, 2, '104 - Thaugland - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2605, 24, 0, NULL, NULL, 2, '105 - Rauken - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2606, 24, 0, NULL, NULL, 2, '106 - Wilberg - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2607, 24, 0, NULL, NULL, 2, '107 - Lilia - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2608, 24, 0, NULL, NULL, 2, '107 - Solli - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2609, 24, 0, NULL, NULL, 2, '108 - Utrimark - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2610, 24, 0, NULL, NULL, 2, '109 - Tangen - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2611, 24, 0, NULL, NULL, 2, '110 - Himle - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2612, 24, 0, NULL, NULL, 2, '110 - Levinh - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2613, 24, 0, NULL, NULL, 2, '111 - Bech - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2614, 24, 0, NULL, NULL, 2, '112 - Sørensen - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2615, 24, 0, NULL, NULL, 2, '113 - Valente - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2616, 24, 0, NULL, NULL, 2, '114 - Damler - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2617, 24, 0, NULL, NULL, 2, '115 - HASSANFAREY - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2618, 24, 0, NULL, NULL, 2, '116 - Greve - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2619, 24, 0, NULL, NULL, 2, '117 - Hagen - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2620, 24, 0, NULL, NULL, 2, '118 - Johnsen - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2621, 24, 0, NULL, NULL, 2, '119 - Kaleab - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2622, 24, 0, NULL, NULL, 2, '124 - Olerud - 13', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2623, 24, 0, NULL, NULL, 2, '125 - Rønning - 13', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2624, 24, 0, NULL, NULL, 2, '126 - Husa - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2625, 24, 0, NULL, NULL, 2, '127 - Borge - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2626, 24, 0, NULL, NULL, 2, '127 - Jacobsen - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2627, 24, 0, NULL, NULL, 2, '128 - Bruun - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2628, 24, 0, NULL, NULL, 2, '128 - Hernes - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2629, 24, 0, NULL, NULL, 2, '129 - Katralen - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2630, 24, 0, NULL, NULL, 2, '130 - Jaabæk - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2631, 24, 0, NULL, NULL, 2, '131 - Hatlen - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2632, 24, 0, NULL, NULL, 2, '132 - Danielsen - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2633, 24, 0, NULL, NULL, 2, '133 - Bjånes - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2634, 24, 0, NULL, NULL, 2, '133 - Eng - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2635, 24, 0, NULL, NULL, 2, '134 - Gjerstad - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2636, 24, 0, NULL, NULL, 2, '134 - Røe - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2637, 24, 0, NULL, NULL, 2, '135 - Haavind - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2638, 24, 0, NULL, NULL, 2, '136 - Høivik - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2639, 24, 0, NULL, NULL, 2, '136 - Straume - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2640, 24, 0, NULL, NULL, 2, '137 - Harbo - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2641, 24, 0, NULL, NULL, 2, '138 - Færden - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2642, 24, 0, NULL, NULL, 2, '139 - Reintz - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2643, 24, 0, NULL, NULL, 2, '139 - Særvold - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2644, 24, 0, NULL, NULL, 2, '140 - Tang - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2645, 24, 0, NULL, NULL, 2, '141 - Stjernholm - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2646, 24, 0, NULL, NULL, 2, '142 - Kasaya Ayalew - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL,
                                                                                                 NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2647, 24, 0, NULL, NULL, 2, '143 - Aas - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2648, 24, 0, NULL, NULL, 2, '144 - Vaage - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2649, 24, 0, NULL, NULL, 2, '145 - Nordhus - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2650, 24, 0, NULL, NULL, 2, '146 - Andersen - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2651, 24, 0, NULL, NULL, 2, '147 - Nordlund - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2652, 24, 0, NULL, NULL, 2, '148 - Kramarics - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2653, 24, 0, NULL, NULL, 2, '148 - Marble - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2654, 24, 0, NULL, NULL, 2, '155 - Quemere - 25', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2655, 24, 0, NULL, NULL, 2, '156 - Kjærstad - 25', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2656, 24, 0, NULL, NULL, 2, '157 - Maldal - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2657, 24, 0, NULL, NULL, 2, '157 - Radic - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2658, 24, 0, NULL, NULL, 2, '158 - Franklin - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2659, 24, 0, NULL, NULL, 2, '158 - Sigurjonsson - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2660, 24, 0, NULL, NULL, 2, '159 - Falck - 27', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2661, 24, 0, NULL, NULL, 2, '159 - Falck (sønn) - 27', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2662, 24, 0, NULL, NULL, 2, '160 - Rokvam - 27', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2663, 24, 0, NULL, NULL, 2, '228 - Ngoc Dinh - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2664, 24, 0, NULL, NULL, 2, '228 - Pham - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2665, 24, 0, NULL, NULL, 2, '229 - Kvale - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2666, 24, 0, NULL, NULL, 2, '230 - Nordstad - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2667, 24, 0, NULL, NULL, 2, '231 - Raisanen - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2668, 24, 0, NULL, NULL, 2, '232 - Brandsrud - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2669, 24, 0, NULL, NULL, 2, '233 - Skotnes - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2670, 24, 0, NULL, NULL, 2, '234 - Grimelid - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2671, 24, 0, NULL, NULL, 2, '235 - Brochmann - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2672, 24, 0, NULL, NULL, 2, '235 - Østby-Deglum - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2673, 24, 0, NULL, NULL, 2, '236 - Gaustad - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2674, 24, 0, NULL, NULL, 2, '237 - Suso - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2675, 24, 0, NULL, NULL, 2, '238 - Gardsjord - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2676, 24, 0, NULL, NULL, 2, '239 - Sandbakken - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2677, 24, 0, NULL, NULL, 2, '240 - Busch - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2678, 24, 0, NULL, NULL, 2, '241 - Tørresby - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2679, 24, 0, NULL, NULL, 2, '242 - Hognes - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2680, 24, 0, NULL, NULL, 2, '242 - Larsen - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2681, 24, 0, NULL, NULL, 2, '243 - Lersbryggen - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2682, 24, 0, NULL, NULL, 2, '244 - Østhagen - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2683, 24, 0, NULL, NULL, 2, '247 - Haavie - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2684, 24, 0, NULL, NULL, 2, '248 - Daas - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2685, 24, 0, NULL, NULL, 2, '248 - Herstad - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2686, 24, 0, NULL, NULL, 2, '1001 - Bache - 2', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2687, 24, 0, NULL, NULL, 2, '1002 - Jore - 2', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2688, 24, 0, NULL, NULL, 2, '1003 - Heskestad - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2689, 24, 0, NULL, NULL, 2, '1004 - Eidjord - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2690, 24, 0, NULL, NULL, 2, '1004 - Heggelund - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2691, 24, 0, NULL, NULL, 2, '1005 - Remen - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2692, 24, 0, NULL, NULL, 2, '1005 - Rogne - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2693, 24, 0, NULL, NULL, 2, '1006 - Krogenæs - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2694, 24, 0, NULL, NULL, 2, '1007 - Kalvatn - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2695, 24, 0, NULL, NULL, 2, '1008 - Dalberg - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2696, 24, 0, NULL, NULL, 2, '1009 - Dilling - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2697, 24, 0, NULL, NULL, 2, '1009 - Nyborg - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2698, 24, 0, NULL, NULL, 2, '1010 - Bodin - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2699, 24, 0, NULL, NULL, 2, '1011 - Sveum - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2700, 24, 0, NULL, NULL, 2, '1011 - Vesterbekmo - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2701, 24, 0, NULL, NULL, 2, '1012 - Breivik - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2702, 24, 0, NULL, NULL, 2, '1013 - Lilledahl - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2703, 24, 0, NULL, NULL, 2, '1014 - Hannerød - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2704, 24, 0, NULL, NULL, 2, '1015 - Bowen - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2705, 24, 0, NULL, NULL, 2, '1015 - Bredahl - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2706, 24, 0, NULL, NULL, 2, '1016 - Enlid - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2707, 24, 0, NULL, NULL, 2, '1016 - Kristiansen - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2708, 24, 0, NULL, NULL, 2, '1017 - Larsen - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2709, 24, 0, NULL, NULL, 2, '1017 - Orlien - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2710, 24, 0, NULL, NULL, 2, '1018 - Gonzalez - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2711, 24, 0, NULL, NULL, 2, '1018 - Rosen - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2712, 24, 0, NULL, NULL, 2, '1019 - Welhaven - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2713, 24, 0, NULL, NULL, 2, '1020 - Grüner-Hegge - 10', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL,
                                                                                                 NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2714, 24, 0, NULL, NULL, 2, '1020 - Hennum - 10', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2715, 24, 0, NULL, NULL, 2, '1021 - Hansen - 10', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2716, 24, 0, NULL, NULL, 2, '1021 - Løkken - 10', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2717, 24, 0, NULL, NULL, 2, '1022 - Bjørnerud - 11', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2718, 24, 0, NULL, NULL, 2, '1023 - Ulltveit-Moe - 11', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL,
                                                                                                 NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2719, 24, 0, NULL, NULL, 2, '1024 - Evenrud - 13', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2720, 24, 0, NULL, NULL, 2, '1024 - Størkersen - 13', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2721, 24, 0, NULL, NULL, 2, '1025 - Strøm - 13', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2722, 24, 0, NULL, NULL, 2, '1026 - Fredriksen - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2723, 24, 0, NULL, NULL, 2, '1026 - Holan - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2724, 24, 0, NULL, NULL, 2, '1027 - Liland - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2725, 24, 0, NULL, NULL, 2, '1028 - Aanonsen - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2726, 24, 0, NULL, NULL, 2, '1028 - Eriksen - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2727, 24, 0, NULL, NULL, 2, '1029 - Ramsbacher - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2728, 24, 0, NULL, NULL, 2, '1029 - Sigurthorsson - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL,
                                                                                                  NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                    NULL, NULL, NULL, NULL,
                                                                                                                    NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2729, 24, 0, NULL, NULL, 2, '1030 - Larsen - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2730, 24, 0, NULL, NULL, 2, '1030 - Moe - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2731, 24, 0, NULL, NULL, 2, '1031 - Bergsholm - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2732, 24, 0, NULL, NULL, 2, '1031 - Holter - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2733, 24, 0, NULL, NULL, 2, '1032 - Fraas - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2734, 24, 0, NULL, NULL, 2, '1033 - Palm - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2735, 24, 0, NULL, NULL, 2, '1033 - Strand - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2736, 24, 0, NULL, NULL, 2, '1034 - Johansen (Finstad) - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no',
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
                                                                                                                               NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2737, 24, 0, NULL, NULL, 2, '1035 - Nyborg - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2738, 24, 0, NULL, NULL, 2, '1036 - Nytrø - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2739, 24, 0, NULL, NULL, 2, '1037 - Heggelund - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2740, 24, 0, NULL, NULL, 2, '1037 - Nysæter - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2741, 24, 0, NULL, NULL, 2, '1038 - Aarøe - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2742, 24, 0, NULL, NULL, 2, '1039 - Floten - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2743, 24, 0, NULL, NULL, 2, '1040 - Aasen - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2744, 24, 0, NULL, NULL, 2, '1040 - Rossing - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2745, 24, 0, NULL, NULL, 2, '1041 - Grønvik - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2746, 24, 0, NULL, NULL, 2, '1042 - Echarif - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2747, 24, 0, NULL, NULL, 2, '1043 - Korsmo - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2748, 24, 0, NULL, NULL, 2, '1044 - Larsen - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2749, 24, 0, NULL, NULL, 2, '1044 - Øksnes - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2750, 24, 0, NULL, NULL, 2, '1045 - Strømme - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2751, 24, 0, NULL, NULL, 2, '1046 - Aase - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2752, 24, 0, NULL, NULL, 2, '1046 - Moesødegård - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2753, 24, 0, NULL, NULL, 2, '1047 - GABRIELSEN - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2754, 24, 0, NULL, NULL, 2, '1048 - Kittelsen - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2755, 24, 0, NULL, NULL, 2, '1049 - Frosta - 22', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2756, 24, 0, NULL, NULL, 2, '1050 - Solvang - 22', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2757, 24, 0, NULL, NULL, 2, '1051 - Erichsen - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2758, 24, 0, NULL, NULL, 2, '1052 - Klavenes - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2759, 24, 0, NULL, NULL, 2, '1046 - Gunnæs - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2760, 24, 0, NULL, NULL, 2, '1046 - Ringen Mortensen - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL,
                                                                                                  NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                    NULL, NULL, NULL, NULL,
                                                                                                                    NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2761, 24, 0, NULL, NULL, 2, '1046 - Sulejman - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2762, 24, 0, NULL, NULL, 2, '1054 - Nilsen - 24', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2763, 24, 0, NULL, NULL, 2, '1055 - Horn - 25', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2764, 24, 0, NULL, NULL, 2, '1056 - Didriksen - 25', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2765, 24, 0, NULL, NULL, 2, '1057 - Danielsen - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2766, 24, 0, NULL, NULL, 2, '1057 - Tysnes - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2767, 24, 0, NULL, NULL, 2, '1058 - Dankertsen - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2768, 24, 0, NULL, NULL, 2, '1058 - Risnes - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2769, 24, 0, NULL, NULL, 2, '1059 - Hernæs - 27', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2770, 24, 0, NULL, NULL, 2, '1060 - Trædal - 27', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2771, 24, 0, NULL, NULL, 2, '1061 - Hoem - 28', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2772, 24, 0, NULL, NULL, 2, '1061 - Rensvold - 28', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2773, 24, 0, NULL, NULL, 2, '1062 - Helland - 28', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2774, 24, 0, NULL, NULL, 2, '1063 - Salterud - 29', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2775, 24, 0, NULL, NULL, 2, '1063 - Trætten - 29', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2776, 24, 0, NULL, NULL, 2, '1064 - Dramstad - 29', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2777, 24, 0, NULL, NULL, 2, '1064 - Strand - 29', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2778, 24, 0, NULL, NULL, 2, '2001 - Eilertsen - 2', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2779, 24, 0, NULL, NULL, 2, '2002 - Lund - 2', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2780, 24, 0, NULL, NULL, 2, '2002 - Miranda - 2', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2781, 24, 0, NULL, NULL, 2, '2003 - Haile - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2782, 24, 0, NULL, NULL, 2, '2004 - Kvadsheim - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2783, 24, 0, NULL, NULL, 2, '2005 - Hagen - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2784, 24, 0, NULL, NULL, 2, '2006 - Bruun - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2785, 24, 0, NULL, NULL, 2, '2006 - Dybvik - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2786, 24, 0, NULL, NULL, 2, '2007 - Solum - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2787, 24, 0, NULL, NULL, 2, '2007 - Vøygard - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2788, 24, 0, NULL, NULL, 2, '2008 - Linde - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2789, 24, 0, NULL, NULL, 2, '2009 - Walseth - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2790, 24, 0, NULL, NULL, 2, '2010 - Boudden - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2791, 24, 0, NULL, NULL, 2, '2011 - Amundsen - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2792, 24, 0, NULL, NULL, 2, '2012 - Kristoffersen - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL,
                                                                                                 NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2793, 24, 0, NULL, NULL, 2, '2013 - Lind - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2794, 24, 0, NULL, NULL, 2, '2014 - Huseby - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2795, 24, 0, NULL, NULL, 2, '2015 - Markussen - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2796, 24, 0, NULL, NULL, 2, '2015 - Picard - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2797, 24, 0, NULL, NULL, 2, '2016 - Isaksen - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2798, 24, 0, NULL, NULL, 2, '2016 - Roaldset - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2799, 24, 0, NULL, NULL, 2, '2017 - Nygren - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2800, 24, 0, NULL, NULL, 2, '2018 - Kvalsnes - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2801, 24, 0, NULL, NULL, 2, '2019 - Nissen - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2802, 24, 0, NULL, NULL, 2, '2020 - Hagen - 10', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2803, 24, 0, NULL, NULL, 2, '2021 - Rognlien - 10', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2804, 24, 0, NULL, NULL, 2, '2022 - Børja - 11', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2805, 24, 0, NULL, NULL, 2, '2023 - Tønnessen - 11', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2806, 24, 0, NULL, NULL, 2, '2024 - Langset - 13', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2807, 24, 0, NULL, NULL, 2, '2025 - Okema-Opira - 13', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2808, 24, 0, NULL, NULL, 2, '2025 - Raisanen - 13', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2809, 24, 0, NULL, NULL, 2, '2026 - Egeland - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2810, 24, 0, NULL, NULL, 2, '2026 - Evensen - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2811, 24, 0, NULL, NULL, 2, '2027 - Ore - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2812, 24, 0, NULL, NULL, 2, '2028 - Danielsen - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2813, 24, 0, NULL, NULL, 2, '2028 - Ryland - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2814, 24, 0, NULL, NULL, 2, '2029 - Nilsen - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2815, 24, 0, NULL, NULL, 2, '2030 - Løchen - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2816, 24, 0, NULL, NULL, 2, '2031 - Heier - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2817, 24, 0, NULL, NULL, 2, '2032 - Hagen - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2818, 24, 0, NULL, NULL, 2, '2033 - Dahl - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2819, 24, 0, NULL, NULL, 2, '2034 - Fahre - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2820, 24, 0, NULL, NULL, 2, '2034 - Lutro - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2821, 24, 0, NULL, NULL, 2, '2035 - Tangen - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2822, 24, 0, NULL, NULL, 2, '2036 - Svendsrud - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2823, 24, 0, NULL, NULL, 2, '2037 - Dyrseth - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2824, 24, 0, NULL, NULL, 2, '2037 - Greve - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2825, 24, 0, NULL, NULL, 2, '2038 - Falch - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2826, 24, 0, NULL, NULL, 2, '2039 - Aubert - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2827, 24, 0, NULL, NULL, 2, '2039 - Zamecznik - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2828, 24, 0, NULL, NULL, 2, '2040 - Gryvill - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2829, 24, 0, NULL, NULL, 2, '2041 - Helgetveit (Halvorsen) - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no',
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2830, 24, 0, NULL, NULL, 2, '2041 - Johansen - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2831, 24, 0, NULL, NULL, 2, '2042 - Lutro - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2832, 24, 0, NULL, NULL, 2, '2043 - Johansen - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2833, 24, 0, NULL, NULL, 2, '2043 - Udnæs (Moe) - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2834, 24, 0, NULL, NULL, 2, '2044 - Fremme - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2835, 24, 0, NULL, NULL, 2, '2045 - Rygg - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2836, 24, 0, NULL, NULL, 2, '2046 - Rønningen - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2837, 24, 0, NULL, NULL, 2, '2047 - Karlsen - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2838, 24, 0, NULL, NULL, 2, '2048 - Martinsen - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2839, 24, 0, NULL, NULL, 2, '2049 - Kjerstad - 22', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2840, 24, 0, NULL, NULL, 2, '2049 - Tuscano - 22', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2841, 24, 0, NULL, NULL, 2, '2050 - Taugbøl - 22', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2842, 24, 0, NULL, NULL, 2, '2051 - Myrstad - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2843, 24, 0, NULL, NULL, 2, '2051 - Myrstad (Hammernes) - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no',
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
                                                                                                                                NULL, NULL,
        NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2844, 24, 0, NULL, NULL, 2, '2052 - Letnes - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2845, 24, 0, NULL, NULL, 2, '2052 - Wiig - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2846, 24, 0, NULL, NULL, 2, '2053 - Strand - 24', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2847, 24, 0, NULL, NULL, 2, '2054 - Ching - 24', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2848, 24, 0, NULL, NULL, 2, '2054 - Kok - 24', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2849, 24, 0, NULL, NULL, 2, '2055 - Haraldson - 25', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2850, 24, 0, NULL, NULL, 2, '2056 - Saltrø - 25', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2851, 24, 0, NULL, NULL, 2, '2057 - Dyvik - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2852, 24, 0, NULL, NULL, 2, '2058 - Muller-Nilssen - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL,
                                                                                                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                     NULL, NULL, NULL, NULL,
                                                                                                                     NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2853, 24, 0, NULL, NULL, 2, '2058 - Müller-Nilssen - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL,
                                                                                                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                     NULL, NULL, NULL, NULL,
                                                                                                                     NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2854, 24, 0, NULL, NULL, 2, '2059 - Berner - 27', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2855, 24, 0, NULL, NULL, 2, '2060 - Wongraven - 27', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2856, 24, 0, NULL, NULL, 2, '2061 - Bakketun - 28', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2857, 24, 0, NULL, NULL, 2, '2062 - Kandal - 28', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2858, 24, 0, NULL, NULL, 2, '2063 - Lund - 29', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2859, 24, 0, NULL, NULL, 2, '2063 - Maanum - 29', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2860, 24, 0, NULL, NULL, 2, '2064 - Thorjussen - 29', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2861, 24, 0, NULL, NULL, 2, '3001 - Fagerli - 2', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2862, 24, 0, NULL, NULL, 2, '3001 - Yggeseth - 2', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2863, 24, 0, NULL, NULL, 2, '3002 - Hole - 2', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2864, 24, 0, NULL, NULL, 2, '3002 - Young - 2', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2865, 24, 0, NULL, NULL, 2, '3003 - Løchting - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2866, 24, 0, NULL, NULL, 2, '3003 - Moen - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2867, 24, 0, NULL, NULL, 2, '3004 - Båum - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2868, 24, 0, NULL, NULL, 2, '3005 - Sollund - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2869, 24, 0, NULL, NULL, 2, '3006 - Grøndal - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2870, 24, 0, NULL, NULL, 2, '3006 - Wolberg - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2871, 24, 0, NULL, NULL, 2, '3007 - Ulvin - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2872, 24, 0, NULL, NULL, 2, '3008 - Johannessen - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2873, 24, 0, NULL, NULL, 2, '3009 - Johnsen - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2874, 24, 0, NULL, NULL, 2, '3010 - Gann - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2875, 24, 0, NULL, NULL, 2, '3011 - Gjersem - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2876, 24, 0, NULL, NULL, 2, '3012 - Sundby - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2877, 24, 0, NULL, NULL, 2, '3013 - Langsrud - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2878, 24, 0, NULL, NULL, 2, '3013 - Vive - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2879, 24, 0, NULL, NULL, 2, '3014 - Krøtøe - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2880, 24, 0, NULL, NULL, 2, '3015 - Grundseth - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2881, 24, 0, NULL, NULL, 2, '3016 - Busterud - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2882, 24, 0, NULL, NULL, 2, '3016 - Jensen - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2883, 24, 0, NULL, NULL, 2, '3017 -   - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2884, 24, 0, NULL, NULL, 2, '3017 - Sivertsen - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2885, 24, 0, NULL, NULL, 2, '3018 - Ore - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2886, 24, 0, NULL, NULL, 2, '3018 - Wikstrøm - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2887, 24, 0, NULL, NULL, 2, '3019 - Bjørge - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2888, 24, 0, NULL, NULL, 2, '3020 - Haugslien - 10', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2889, 24, 0, NULL, NULL, 2, '3021 - Davidsen - 10', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2890, 24, 0, NULL, NULL, 2, '3021 - Heggen - 10', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2891, 24, 0, NULL, NULL, 2, '3022 - Hirsch - 11', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2892, 24, 0, NULL, NULL, 2, '3023 - Földesi - 11', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2893, 24, 0, NULL, NULL, 2, '3023 - Preg - 11', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2894, 24, 0, NULL, NULL, 2, '3024 - Rønningen - 13', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2895, 24, 0, NULL, NULL, 2, '3025 - Bysting - 13', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2896, 24, 0, NULL, NULL, 2, '3025 - Gangsø - 13', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2897, 24, 0, NULL, NULL, 2, '3026 - Hellstrøm - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2898, 24, 0, NULL, NULL, 2, '3026 - Sveen - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2899, 24, 0, NULL, NULL, 2, '3027 - Larsen - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2900, 24, 0, NULL, NULL, 2, '3028 - Kjemperud - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2901, 24, 0, NULL, NULL, 2, '3029 - Bull - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2902, 24, 0, NULL, NULL, 2, '3030 - Hansen - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2903, 24, 0, NULL, NULL, 2, '3031 - Krogh - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2904, 24, 0, NULL, NULL, 2, '3032 - Kiær - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2905, 24, 0, NULL, NULL, 2, '3033 - Husa - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2906, 24, 0, NULL, NULL, 2, '3034 - Moen - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2907, 24, 0, NULL, NULL, 2, '3034 - Sara - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2908, 24, 0, NULL, NULL, 2, '3035 - Svard - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2909, 24, 0, NULL, NULL, 2, '3036 - Løvold - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2910, 24, 0, NULL, NULL, 2, '3037 - Grønnestad - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2911, 24, 0, NULL, NULL, 2, '3038 - Hauge - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2912, 24, 0, NULL, NULL, 2, '3039 - Krafft - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2913, 24, 0, NULL, NULL, 2, '3040 - Lunde - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2914, 24, 0, NULL, NULL, 2, '3041 - Westheim - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2915, 24, 0, NULL, NULL, 2, '3042 - Mogstad - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2916, 24, 0, NULL, NULL, 2, '3042 - Øvrevik - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2917, 24, 0, NULL, NULL, 2, '3043 - Pedersen - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2918, 24, 0, NULL, NULL, 2, '3044 - Halvorsen - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2919, 24, 0, NULL, NULL, 2, '3045 - Østeby - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2920, 24, 0, NULL, NULL, 2, '3046 - Bergø - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2921, 24, 0, NULL, NULL, 2, '3047 - Jørgedal - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2922, 24, 0, NULL, NULL, 2, '3048 - Bakke - 21', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2923, 24, 0, NULL, NULL, 2, '3049 - Lie - 22', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2924, 24, 0, NULL, NULL, 2, '3050 - Michelsen - 22', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2925, 24, 0, NULL, NULL, 2, '3051 - Kallevik - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2926, 24, 0, NULL, NULL, 2, '3051 - Tenfjord - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2927, 24, 0, NULL, NULL, 2, '3052 - Yli - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2928, 24, 0, NULL, NULL, 2, '3053 - Norheim - 24', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2929, 24, 0, NULL, NULL, 2, '3054 - Barkenæs - 24', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2930, 24, 0, NULL, NULL, 2, '3055 - Francis - 25', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2931, 24, 0, NULL, NULL, 2, '3055 - Jonasen - 25', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2932, 24, 0, NULL, NULL, 2, '3056 - Ringstad - 25', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2933, 24, 0, NULL, NULL, 2, '3057 - Bjørntvedt (Fredriksen) - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no',
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2934, 24, 0, NULL, NULL, 2, '3057 - Fredriksen - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2935, 24, 0, NULL, NULL, 2, '3058 - Ustgård - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2936, 24, 0, NULL, NULL, 2, '3059 - Karlsen - 27', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2937, 24, 0, NULL, NULL, 2, '3059 - Svadberg - 27', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2938, 24, 0, NULL, NULL, 2, '3060 - Paulsen - 27', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2939, 24, 0, NULL, NULL, 2, '3061 - Kopstad - 28', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2940, 24, 0, NULL, NULL, 2, '3061 - Svendsen - 28', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2941, 24, 0, NULL, NULL, 2, '3062 - Hegna - 28', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2942, 24, 0, NULL, NULL, 2, '3063 - Nilsen - 29', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2943, 24, 0, NULL, NULL, 2, '3064 - Andresen - 29', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2944, 24, 0, NULL, NULL, 2, '4003 - Hanche Olsen - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2945, 24, 0, NULL, NULL, 2, '4003 - Tandberg - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2946, 24, 0, NULL, NULL, 2, '4004 - Tørnby - 3', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2947, 24, 0, NULL, NULL, 2, '4005 - Williams - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2948, 24, 0, NULL, NULL, 2, '4006 - Øgaard - 4', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2949, 24, 0, NULL, NULL, 2, '4007 - Kaalen - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2950, 24, 0, NULL, NULL, 2, '4007 - Schaug - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2951, 24, 0, NULL, NULL, 2, '4008 - Myklebust - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2952, 24, 0, NULL, NULL, 2, '4009 - Bjørke - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2953, 24, 0, NULL, NULL, 2, '4009 - Schei - 5', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2954, 24, 0, NULL, NULL, 2, '4010 - Langseth - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2955, 24, 0, NULL, NULL, 2, '4011 - Tamburstuen - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2956, 24, 0, NULL, NULL, 2, '4012 - Rødseth - 6', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2957, 24, 0, NULL, NULL, 2, '4013 - Kaspersen - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2958, 24, 0, NULL, NULL, 2, '4014 - Dalskau f.1953 - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL,
                                                                                                  NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                    NULL, NULL, NULL, NULL,
                                                                                                                    NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2959, 24, 0, NULL, NULL, 2, '4015 - Moene - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2960, 24, 0, NULL, NULL, 2, '4015 - Ognedal - 7', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2961, 24, 0, NULL, NULL, 2, '4016 - SELVANAYAGAM - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2962, 24, 0, NULL, NULL, 2, '4017 - Olsen - 8', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2963, 24, 0, NULL, NULL, 2, '4018 - Sveen - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2964, 24, 0, NULL, NULL, 2, '4019 - Ilstad - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2965, 24, 0, NULL, NULL, 2, '4019 - Ilstad (Steen-Nøkleberg) - 9', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no',
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
                                                                                                                                 NULL, NULL,
     NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2966, 24, 0, NULL, NULL, 2, '4020 - Krohn - 10', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2967, 24, 0, NULL, NULL, 2, '4021 - Solum - 10', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2968, 24, 0, NULL, NULL, 2, '4022 - Køhler - 11', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2969, 24, 0, NULL, NULL, 2, '4023 - Svendsen - 11', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2970, 24, 0, NULL, NULL, 2, '4023 - Tilleskjør - 11', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2971, 24, 0, NULL, NULL, 2, '4026 - Brito - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2972, 24, 0, NULL, NULL, 2, '4027 - Johnsen - 14', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2973, 24, 0, NULL, NULL, 2, '4028 - Skotnes - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2974, 24, 0, NULL, NULL, 2, '4029 - Olsen - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2975, 24, 0, NULL, NULL, 2, '4030 - Cuppari - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2976, 24, 0, NULL, NULL, 2, '4030 - Tørnby - 15', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2977, 24, 0, NULL, NULL, 2, '4031 - Kiær - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2978, 24, 0, NULL, NULL, 2, '4031 - Skjeldal Tveten - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL,
                                                                                                 NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2979, 24, 0, NULL, NULL, 2, '4032 - Skibenes - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2980, 24, 0, NULL, NULL, 2, '4033 - Christie - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2981, 24, 0, NULL, NULL, 2, '4033 - Larsson - 16', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2982, 24, 0, NULL, NULL, 2, '4034 - Johannessen - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2983, 24, 0, NULL, NULL, 2, '4034 - Lee - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                     NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2984, 24, 0, NULL, NULL, 2, '4035 - Rydmark - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2985, 24, 0, NULL, NULL, 2, '4036 - Østhagen - 17', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2986, 24, 0, NULL, NULL, 2, '4037 - Fiskaa - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2987, 24, 0, NULL, NULL, 2, '4037 - Gjelsvik - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2988, 24, 0, NULL, NULL, 2, '4038 - GREPPERUD - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2989, 24, 0, NULL, NULL, 2, '4038 - Thorseth - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2990, 24, 0, NULL, NULL, 2, '4039 - Moen - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2991, 24, 0, NULL, NULL, 2, '4039 - Norenberg - 18', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2992, 24, 0, NULL, NULL, 2, '4040 - Haver - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2993, 24, 0, NULL, NULL, 2, '4040 - Moen - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2994, 24, 0, NULL, NULL, 2, '4041 - Ruud - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2995, 24, 0, NULL, NULL, 2, '4042 - Larsen - 19', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2996, 24, 0, NULL, NULL, 2, '4043 - Bang - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2997, 24, 0, NULL, NULL, 2, '4043 - Onsager - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (2998, 24, 0, NULL, NULL, 2, '4044 - Tronstad - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (2999, 24, 0, NULL, NULL, 2, '4045 - Mengshoel - 20', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3000, 24, 0, NULL, NULL, 2, '4051 - Forfang - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3001, 24, 0, NULL, NULL, 2, '4052 - Christiansen - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL,
                                                                                                 NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (3002, 24, 0, NULL, NULL, 2, '4052 - Hauge - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                       NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (3003, 24, 0, NULL, NULL, 2, '4052 - Lund - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3004, 24, 0, NULL, NULL, 2, '4052 - Tennum - 23', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3005, 24, 0, NULL, NULL, 2, '4053 - Thoresen - 24', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3006, 24, 0, NULL, NULL, 2, '4053 - Øvsthus - 24', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3007, 24, 0, NULL, NULL, 2, '4054 - Bendixen - 24', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3008, 24, 0, NULL, NULL, 2, '4055 - Brandal - 25', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3009, 24, 0, NULL, NULL, 2, '4056 - Hellum - 25', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (3010, 24, 0, NULL, NULL, 2, '4057 - Brynildsen - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3011, 24, 0, NULL, NULL, 2, '4058 - Trasti - 26', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3012, 24, 0, NULL, NULL, 2, '4059 - Simonsen - 27', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                         NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (3013, 24, 0, NULL, NULL, 2, '4060 - Kvam - 27', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3014, 24, 0, NULL, NULL, 2, '4061 - Børstad - 28', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                        NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3015, 24, 0, NULL, NULL, 2, '4062 - Rønvik - 28', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL,
                                                                                           NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                       NULL, NULL, NULL, NULL, NULL, NULL,
        NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (3016, 24, 0, NULL, NULL, 2, '4063 - Norwie-Håkonsen - 29', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL,
                                                                                                 NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
                                                                                                                   NULL, NULL, NULL, NULL,
     NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (3017, 24, 0, NULL, NULL, 2, '4064 - Ross - 29', 'HOFFSGRENDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL,
                                                                                      NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                            NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES
    (3037, 24, 0, NULL, '', 0, 'Itum', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 84, NULL, NULL, NULL,
                                                                                                     NULL, NULL, NULL, NULL, '');
INSERT INTO dbo.kp_customer (CUSTIDNO, CLNTIDNO, STATNMBR, CUSTIDFC, EXTNCUSTIDFC, CUSTTYPENMBR, CUSTNAME1, CUSTNAME2, CUSTADDR1, CUSTADDR2, CUSTPOOFIDFC, CUSTPOOFNAME, CNTCPRSNNAME, PHONNMBR, VLIDFROMDATE, VLIDUNTLDATE, LANGCODE, INVCNAME1, INVCNAME2, INVCADDR1, INVCADDR2, INVCPOOFIDFC, INVCPOOFNAME, EMALADDR, CUSTPSWD, CLNTCUSTIDNO, BIRTDATE, CUSTCTRYCODE, NO02PHONNMBR, NO03PHONNMBR, CUSTLOGOURLL, USERIDNO, LOGOIMAGURLL, EXTNCUSTIDNO)
VALUES (3038, 24, 0, NULL, '', 1, 'Serit – Itum ', '', '', '', '', '', '', '', NULL, NULL, 'no', '', '', '', '', '', '', '', NULL, 85, NULL,
                                                                                                                 'no', '', '', NULL, NULL,
        'http://gjesteparkering.no/serit.jpg', '');
SET IDENTITY_INSERT kp_customer OFF;

-- kp_location --
CREATE TABLE dbo.kp_location (
    LOCTIDNO         INT IDENTITY (1, 1) NOT NULL,
    CLNTIDNO         INT                 NOT NULL,
    CLNTLOCTIDNO     SMALLINT            NOT NULL,
    CLNTLOCTNAME     VARCHAR(70)         NOT NULL,
    CLNTLOCTSQNO     SMALLINT            NULL,
    CLNTLOCTCATGCODE VARCHAR(3)          NOT NULL,
    CLNTLOCTDSCR     VARCHAR(2000)       NULL,
    GOGLENCDAREA     VARCHAR(2000)       NULL,
    CLNTVLTNGROPCODE VARCHAR(4)          NOT NULL,
    EXTNSYSTIDFC     VARCHAR(20)         NULL,
    EXTNLOCTIDFC     VARCHAR(100)        NULL,
    RPLCTCKTINUS     TINYINT             NULL,
    INTNCLNTLOCTDSCR VARCHAR(2000)       NULL,
    REGNIDNO         INT                 NULL,
    EXTNETTYIDFC     VARCHAR(8)          NULL,
    LOCTSTATNMBR     TINYINT             NULL
);
SET IDENTITY_INSERT kp_location ON;
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3027, 24, 300, 'Brobekkveien 80, Oslo', 4, 'UVA', 'Oppstart 01.11. 5 timer gratis parkering mot registrering på besøksparkering. Registrerte kan fortrinnsvis stå på besøksparkering, men kan benytte ansatteplasser hvis behov. Ansatte skal ha gyldig parkeringsbevis.Ansatte skal kun stå på plasser designert for ansatte. Det skal parkeres innenfor oppmerket / anvist område. Flere oppdateringer kan komme. Benytte avd nr 123 for Storcash og 124 for Ahlsell. På morgenen ved IMTECH (bygg 5) skal det ikke kontrolleres mellom kl 07.00 - 09.00.3 plasser korttidsparkering ved bygg 5 og 2 plasser ved bygg 9 og 2 plasser utenfor ABK-butikk. Disse behøver ikke logge seg inn. Logges på tid. Kan ikke stå over 30 minutter på disse plassene selv om du er logget inn.

MRK: Sortera kan parkere sine lastebiler (opphold inntil 1 time) på grusplassen nedenfor bygg 12/13 inntil ny beskjed. Ved opphold utover 1 time ilegges kontrollavgift.',
              '(59.93122922188479,10.83200991153717)||(59.931667327658616,10.830202102661132)||(59.93222637447636,10.829429626464843)||(59.93276391060804,10.829440355300903)||(59.93316168173731,10.829628109931945)||(59.93369920271184,10.830234289169311)||(59.93434421638295,10.831178426742553)||(59.934618343394824,10.831564664840698)||(59.93409696262495,10.833055973052978)||(59.93372070336966,10.834203958511352)||(59.933441193731205,10.83501935005188)||(59.932419888487274,10.834343433380127)||(59.93167270315365,10.833839178085327)||(59.93105451551459,10.833141803741455)||(59.93121578296591,10.832111835479736)||',
              '400', 'SA', '7010|7015', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3028, 24, 301, 'Brobekkveien 80 - StorCash', 4, 'UVA',
              'Det kontrolleres nå kun i forhold til HC plass, eller dersom biler står i kjøreveien til hinder for andre. Den tidligere gjennomkjøringen ved hovedinngangen er ikke kjørevei. Ansatte med p-bevis som løser billett StorCash kan stå på ordinære ansattplasser. StorCash kan velge å kjøre sporadiske stikkontroller. Dere får da beskjed om dette i forkant av driftsleder. DET ER VIKTIG AT DETTE FUNGERER MED UMIDDELBAR VIRKNING!!! SC kan også rekvirere ileggelser mot enkeltkjøretøyer.',
              '(59.93190653634446,10.83249807357788)||(59.93211886620467,10.832621455192566)||(59.932261314589624,10.832058191299438)||(59.93243601460389,10.831376910209655)||(59.93254352184764,10.830888748168945)||(59.93260265068319,10.830695629119873)||(59.93244138997434,10.83051860332489)||(59.932282816179494,10.831205248832702)||(59.93214574330527,10.831806063652038)||(59.93204629792432,10.83228349685669)||(59.9320100137246,10.832468569278717)||(59.93186622039469,10.832331776618957)||(59.931862188797005,10.832408219575882)||(59.93185614139957,10.832464545965194)||(59.931898473158405,10.832495391368866)||',
              '400', 'SA', '7015', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3029, 24, 302, 'Brobekkveien 80 - Ahlsell', 4, 'UVA',
              'Max 3 times kundeparkering mot innlogging på skiltede kundeparkeringsplasser. Det kontrolleres ikke mot uniformerte kjøretøy, men kontrolleres på vanlig måte mot privatbiler. det installeres ny tab i kantina 24 april.',
              '(59.93304342595391,10.833136439323425)||(59.93295473383967,10.833576321601867)||(59.9333955044317,10.833903551101684)||(59.93348150776671,10.83353340625763)||',
              '400', 'SA', '7011|7015', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3030, 24, 131, 'Granberg Borettslag (Bjørndal)', 1, 'UVA', 'avdeling fremdeles inaktiv fordi oppdragsgiver hevder kpsys ikke har lever det de har lovet.(31.03.15)
KONTROLL AV INDRE OMRÅDEP. VENT I 10 MINUTTER ETTER AT PARKERINGSLAPPEN HAR UTLØPT FØR ILEGGELSE. ELLERS SOM NEDENFOR.

Parkering i h t skilting.

Gjesteparkering mot elektronisk innlogging eller komplett utfylt midlertidig p-bevis. Vent 10 minutter før ileggelse.

Parkering forbudt utenfor anviste plasser.

Den nederste plassen utenfor Rimi tilhører borettslaget.

Rimi''s plasser kan benyttes av borettslagets gjester med gyldig p-bevis eller innlogging.

Beboere kan unntaksvis parkere utendørs, men skal ha beboerkort.

Tillatt parkeringstid er 72 timer med 24 timers karantene.

Ansatte ved legesenteret kan kun stå på legesenterets plasser, og kun mot gyldig p-bevis. Pasienter skal hente p-bevis ved legesenteret, og kun stå på legesenterets plasser med utfylt p-bevis. Pasienter kan stå parkert i inntil 4 timer.
Borttauing rekvireres av styremedlemmer eller driftsleder.
Christiania barnehage har egne merkede plasser med egne p-bevis. Kontrolleres kun når det bes om det, og når barnehagen er stengt.
Det ilegges ikke kontrollavgift på nyttekjøretøy parkert inne i borettslaget dersom ikke driftsleder eller styremedlemmer ber om dette.
Beboere kan selv rekvirere kontroll/borttauing dersom deres innendørs plass er opptatt.
Postbud skal ikke ilegges kontrollavgift.
Driftsleder og styremedlemmer kan hensette egne kjøretøy på borettslagets eiendom med gyldig parkerigsbevis merket "Vaktmester eller styret.',
              NULL, '400', 'SA', '7017', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3031, 24, 700, 'Fekjan 3', 2, 'UVA', 'REK REK REK Fra 04/02-2014.



Gamle Bellevue Hotel.Rundt huset. Kundeparkering maks to timer, eller med gjestekort utstedt av Tandberg Eiendom. Parkering er kun tillatt for besøkende til eiendommen.Reserverte plasser mot E-18 skal kontrolleres etter rek, det er dog ikke tillatt å stå parkert utenfor skiltet plass. Det er ikke tillatt å stå i kjøreveier, eller utenfor anvist område.',
              '(59.86487954635634,10.488772988319397)||(59.86426550076949,10.489239692687988)||(59.864157772304694,10.488638877868652)||(59.86433013768091,10.48820436000824)||(59.864790672038836,10.48845648765564)||(59.864790672038836,10.488338470458984)||(59.86444863835892,10.488156080245971)||(59.86427088718357,10.488032698631286)||(59.86430589885385,10.487861037254333)||(59.864928023156686,10.488247275352478)||(59.86494687522664,10.48867642879486)||',
              '500', NULL, '', 0, '', 39, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3032, 24, 701, 'Alfheim 10-26', 2, 'UVA', 'REK REK INNTIL VIDERE!!
INGEN KONTROLL!!

Parkering mot gyldig p-bevis utstedt av Tandberg Eiendom 2014. Kunder til Dolly Dimples skal være innlogget på fletskjerm i restauranten (Gjesteparkering). NÅR DOLLY ER ÅPEN SKAL DET SJEKKES I RESTAURANTEN FØR ILEGGELSE AV KJØRETØY SOM IKKE ER INNLOGGET. DFETTE ER VIKTIG.

DETTE SKAL IKKE KONTROLLERES:

Telenor (12 plasser)
Boxs arkitekter (5 plasser)
Bilruta (2 plasser)
ToneArt (2 plasser)

Biler på disse plassene kommer ikke til å stå med parkeringskort og skal ikke kontrolleres av oss.

Bilene til Bilruta må ha parkeringskort i ruten sin. Det hjelper ikke med logo på bilen eller visittkort som ligger i frontruten.

Ved spørsmål ring Driftsleder Singh på 99115592

HUSK DENNE ER FREDET!!!!! IKKE ILEGG DENNE : DN 96196, Audi A4, sort.',
              '(59.832826310805835,10.436877608299255)||(59.83305275325003,10.437709093093872)||(59.83356493881281,10.437349677085876)||(59.833516416307816,10.436840057373046)||(59.83288292156123,10.436802506446838)||',
              '500', 'SA', '7002', 0, '', 39, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3033, 24, 702, 'Alfheim 7', 2, 'UVA', 'REK REK INNTIL VIDERE!!
INGEN KONTROLL!!!

Asker. Parkering kun mot gyldig p-tillatelse utstedt av Tandberg Eiendom.',
              '(59.83401511646073,10.436652302742004)||(59.83389111603921,10.436180233955383)||(59.83405555128093,10.435933470726013)||(59.834263115918524,10.436480641365051)||',
              '500', NULL, '', 0, '', 39, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3034, 24, 705, 'Strøket 5', 2, 'UVA', 'REK.',
              '(59.83551386764627,10.434672832489013)||(59.83534135295955,10.434442162513733)||(59.835217357476445,10.434828400611877)||(59.835435697039585,10.4349946975708)||',
              '500', NULL, '', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3035, 24, 706, 'Lensmannslia 60', 2, 'UVA', 'REK.',
              '(59.83290987902997,10.434989333152771)||(59.83303118736929,10.434640645980835)||(59.83329536844593,10.435096621513366)||(59.83311205935002,10.434983968734741)||(59.83309049350768,10.435177087783813)||(59.833201018301985,10.435413122177124)||(59.8331282337226,10.435536503791809)||(59.83298535982637,10.43527364730835)||(59.83303388310515,10.434957146644592)||(59.83292874924511,10.435209274291992)||',
              '500', NULL, '', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3036, 24, 707, 'Drengsrudbekken 4, Asker', 2, 'UVA', 'REK.',
              '(59.83134900564443,10.41702389717102)||(59.83158893739968,10.416664481163025)||(59.83136518087328,10.416074395179748)||(59.83102010762066,10.416476726531982)||(59.83094731827482,10.416616201400756)||(59.830596848827156,10.415999293327331)||(59.830294902961086,10.416208505630493)||(59.83045666001549,10.416809320449829)||(59.8306372877978,10.417211651802063)||(59.83070468597308,10.41705071926117)||(59.83055640980743,10.416675209999084)||(59.83058606509338,10.416439175605774)||(59.830505186978605,10.41628360748291)||(59.830569889486114,10.416187047958374)||(59.830941926465094,10.416873693466186)||(59.83122499529561,10.417335033416748)||(59.83136518087328,10.417206287384033)||',
              '500', NULL, '', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3037, 24, 708, 'Vollenveien 184', 2, 'UVA', 'REK.',
              '(59.78614362980681,10.436400175094604)||(59.78646217287803,10.436818599700927)||(59.78664033971033,10.43678104877472)||(59.78670512741347,10.436614751815796)||(59.78714514056853,10.436652302742004)||(59.78721262673549,10.436400175094604)||(59.78691838604766,10.43603003025055)||(59.78678881134382,10.436121225357055)||(59.786499965921955,10.43577790260315)||(59.78608693961943,10.436223149299621)||(59.786111235425814,10.436421632766723)||',
              '500', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3038, 24, 709, 'Vollenveien 193', 2, 'UVA', 'REK.',
              '(59.78731250601208,10.434686243534088)||(59.78730710713992,10.434957146644592)||(59.787609442636125,10.435064435005188)||(59.78771741893511,10.434587001800537)||(59.78763913615318,10.434426069259643)||(59.78759054674789,10.434726476669311)||(59.78744747753245,10.434705018997192)||(59.78740968556177,10.434587001800537)||',
              '500', NULL, '', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3039, 24, 710, 'Åmotveien 2', 2, 'UVA', 'REK.',
              '(59.78650266542347,10.433294177055358)||(59.78612473308838,10.433170795440673)||(59.785703603443714,10.433208346366882)||(59.78570090387755,10.433122515678405)||(59.78578459032664,10.433042049407959)||(59.785762993843754,10.432795286178588)||(59.78525817207381,10.432677268981933)||(59.78521767801804,10.433101058006286)||(59.78556052613679,10.433186888694763)||(59.78561181807209,10.433605313301086)||(59.785663109928514,10.4337877035141)||(59.78581698502477,10.433734059333801)||(59.78578459032664,10.433396100997924)||(59.785970859411385,10.433331727981567)||(59.78602754979601,10.433734059333801)||(59.786454074363064,10.43350875377655)||(59.78657285238578,10.433540940284729)||',
              '500', NULL, '', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3040, 24, 305, 'Ensjøvn 16-18-20-22', 4, 'MVA', 'Rek etter tlf fra leietakere. Daglig kontroll mot kjøretøy parkert utenfor oppmerkede plasser. Vent 10 minutter før ileggelse foran lasteramper og i lastesoner. Er det ikke aktivitet, så ilegges ka. Plassene tilhørende varmesystemer (utenfor kontoret: Det er en plass skiltet på hushjørnet, men ikke oppmerket som vi ikke skal kontrollere på dersom vi ikke blir bedt om det. Videre disponerer Varmesystemer området fra inngangen til legesenteret langs veggen til lasteområdet og ned til pappcontaineren. Kontrolleres kun når de ber oss om det.EasyPark på egne merkede plasser. Logg inn. De som er sjekket inn er greie. De som ikke fremgår av lista ilegges kontrollavgift.

Mrk. PLASSENE LANGS ENSJØVEIEN (KJØKKEN SKREDDERN) ER IKKE VÅRE Å SKAL IKKE KONTROLLERES!!',
              '(59.91319736079941,10.79008162021637)||(59.913321065800524,10.79031229019165)||(59.91410900205319,10.790666341781616)||(59.914367161399156,10.790049433708191)||(59.91449086204093,10.789738297462463)||(59.91425690609076,10.789158940315246)||(59.91406059695229,10.788660049438476)||(59.9136115018175,10.789389610290527)||(59.91319467155513,10.790044069290161)||',
              '500', 'EP', '3800', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3041, 24, 306, 'Strømsveien 80', 4, 'UVA', 'Oslo. Kun kontroll av p-forbudssoner langs byggene inntil videre, eller etter rek fra Richard.


REK REK REK',
              '(59.91170345205127,10.795011520385742)||(59.91162613271203,10.795101374387741)||(59.91156831117542,10.795179158449173)||(59.91162680505488,10.795408487319946)||(59.9116826094645,10.795344114303588)||(59.911653026415664,10.795218050479889)||(59.91174110314257,10.795121490955352)||(59.91187019227425,10.795518457889556)||(59.91196969813736,10.795824229717254)||(59.91199322988569,10.795783996582031)||(59.911875570977195,10.795389711856842)||(59.9117599286722,10.794963240623474)||',
              '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3042, 24, 307, 'St. Hallvardsgate 65', 4, 'UVA',
              'Parkering kun mot P-bevis. Biler på reservert plass med skilt behøver ikke ha p-bevis.',
              '(59.90702564411121,10.780457854270935)||(59.907086835733864,10.780609399080276)||(59.9071191125883,10.78071802854538)||(59.90715878617889,10.780648291110992)||(59.90711709528582,10.780506134033203)||(59.90707876651537,10.780378729104995)||',
              '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3043, 24, 308, 'St Halvardsgate 25 a-c', 4, 'UVA', 'SKAL SLETTES', NULL, '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3044, 24, 309, 'Brattlikollen Boligsameie', 4, 'UVA', 'Generelt parkeringsforbud. Ileggelse etter 30 minutter dersom det ikke er aktivitet ved kjøretøyet. Kjøretøy på reserverte plasser behøver ikke ha p-bevis. Utenfor vaskeriet kan det parkeres med gyldig p-bevis utstedt av PT.

OBS!OBS! BIL MED REGNR. TAO-165 SKAL IKKE ILEGGES KONTROLLAVGIFT!! DETTE ER ARBEIDS BIL. REF. BEL.',
              '(59.88710144132059,10.802430510520935)||(59.8875374384519,10.80354630947113)||(59.88816181944314,10.804259777069091)||(59.88861933254903,10.804243683815002)||(59.88875927647622,10.804155170917511)||(59.88878686150771,10.804263800382614)||(59.88885212356425,10.804207473993301)||(59.888922095111305,10.804128348827362)||(59.88889518299524,10.803932547569275)||(59.8892302372865,10.803524851799011)||(59.889512810568554,10.803272724151611)||(59.88983036624634,10.803235173225402)||(59.889378252162515,10.803846716880798)||(59.88906876576067,10.804447531700134)||(59.888694687044605,10.80480694770813)||(59.88882655700067,10.805171728134155)||(59.889195251855824,10.80479621887207)||(59.88936479629193,10.804592370986938)||(59.88967966223527,10.803927183151245)||(59.88992993816436,10.803498029708862)||(59.889981069573885,10.80306887626648)||(59.89009947885172,10.802859663963317)||(59.89031207626886,10.802226662635803)||(59.89008871438936,10.802103281021118)||(59.88932981100295,10.802022814750671)||(59.88858165523714,10.801942348480224)||(59.88819411469255,10.802108645439148)||(59.888105302681154,10.801658034324646)||(59.887790421819005,10.801507830619812)||(59.88737865003554,10.801202058792114)||(59.88689151473564,10.801089406013488)||(59.886723303373984,10.800957977771759)||(59.88670850073338,10.800751447677612)||(59.88661833905285,10.800732672214508)||(59.886676204040114,10.80106794834137)||(59.88687805785804,10.801236927509307)||(59.887004552292325,10.801617801189422)||(59.88709874996249,10.801510512828827)||(59.88740018071272,10.801432728767395)||(59.887432476702365,10.801754593849182)||(59.88712431785549,10.801853835582733)||(59.88709605860419,10.802146196365356)||(59.88709807712294,10.802308470010757)||',
              '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3045, 24, 310, 'Johan Scharfenbergsvei 118, Oslo', 4, 'UVA', 'Rimi Skullerud. Oppstart 01.01.13.

Åpningstider: 0700-2300/Helg:0800-2100

 Max 1 time for kunder til Rimi. Parkering tillatt med p-bevis utstedt av PT eller midlerttidig p-bevis utstedt av PT. Det er ikke tillatt å forlate eiendommen menms kjøretøyet står parkert.',
              '(59.868606667540845,10.83715707063675)||(59.868473370914664,10.837422609329223)||(59.86845048154127,10.837484300136566)||(59.86840268309308,10.837397128343582)||(59.86830237345027,10.837662667036056)||(59.868221586940784,10.837905406951904)||(59.868331321901735,10.838083773851394)||(59.86843567076184,10.837811529636383)||(59.86852049604558,10.837591588497161)||(59.868661197824814,10.837263017892837)||(59.86863628894076,10.83719328045845)||',
              '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3046, 24, 311, 'Åserudveien 2-16', 4, 'UVA', 'SKAL SLETTES.', NULL, '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3047, 24, 502, 'Trondheimsveien 77', 3, 'UVA', '16 plasser. Kontroll etter åpningstid. Rek på dagtid.

Vilkår for parkering:

1) Parkering kun for Møbelhusets kunder
2) Parkering forbudt utenfor åpningstid, eller med
   gyldig p-bevis.
3) If har egne skiltede plasser. Kan også benytte møbelhusets plasser  mot p-bevis.
4) Dersom det er folk i butikken utenom åpningstid spør vi før ileggelse.
5) IF plasser kontrolleres mot p-bevis hele døgnet.

Åpningstider:
Man-Fre: 09-18.00
Lør:     09.00-16.00
(Torsdag: 09.00-19.00)', '', '760', NULL, '', 0, '', 42, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3048, 24, 503, 'Trondheimsveien 106', 3, 'UVA', '24 plasser. Kontroll kun utenfor frisørens åpningstid.


Vilkår for parkering:

1) Parkering forbudt utenom åpningstid, eller med
   gyldig/synlig p-bevis.

Åpningstider:

Man-ons: 07.00-17.00
Tors: 07-18
Lør:     09.00-17.00
Søndag: Stengt

Vær oppmerksom på at det kan være kveldskurs på sjåførskolen.',
              '(60.14549188880998,11.169174313545227)||(60.145502570421996,11.168530583381652)||(60.14582568754582,11.168546676635742)||(60.14588176540104,11.169163584709167)||(60.145537285637125,11.169222593307495)||',
              '760', NULL, '', 0, '', 42, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3049, 24, 504, 'Sundbytunet', 3, 'MVA', '60 plasser.

Vilkår for parkering:

1) Parkering mot gyldig billett eller p-bevis
Gratis P mot billett 3 timer, deretter: Parkering mot betaling , alle dager hele døgnet.
2) Parkering kun på anviste plasser.
3) Vente 15 minutter før ileggelse ved utløpt / ikke synlig billett.
4) Sjekk EasyPark dersom ikke billett.
5) HC fritatt for billett/betaling.
6) MC fritatt for billett/betaling.


Gjester som skal ha lengre opphold skal ha midlertidig parkeringsbevis godt synlig bak bilens frontrute. Beviset skal være fylt ut med kulepenn, og ha dato for ankomst og avreise.

I perioder med mange besøkende (full plass) kan det parkeres utenom ordinær plass, men ikke til hinder eller fare for andre kjørende eller gående.',
              '', '760', 'EP', '3806', 0, '', 42, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3050, 24, 505, 'Storgt 1 Jessheim', 3, 'MVA', '21 plasser. Kontroll hele døgnet.

Vilkår for parkering:

1) mandag-fredag 08-16.
2) Skiltede plasser reservert for leietakere og gjester.
3) Alle parkerende skal være elektronisk registrert.
4) Haven skal ha p-bevis. Logges i 5 minutter.
5) Sisa invest skal ha p-bevis trenger IKKE å logge.
6) Sparebank 1 logges i 10 minutter.

mandag-fredag 16-08 er plassene ledige for korttidsparkering mot betaling (EasyPark). Gjelder også fredag 16-08.

INGEN KONTROLL FREDAG 24.01.2013',
              '(60.1425302780485,11.171035766601562)||(60.14255965511853,11.171475648880004)||(60.142447487982665,11.171679496765136)||(60.142319296501824,11.171266436576843)||(60.14243947602972,11.171137690544128)||',
              '760', 'SAEP', '7013,3805', 0, '', 42, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3051, 24, 506, 'Trondheimsveien 82', 3, 'UVA', '38 plasser.

Vilkår for parkering:

1) Parkering mot elektronisk registrering. Gjelder Øyelege og Skatteetaten.
2) Logg 10 minutter før ileggelse.
3) Parkering kun på anviste plasser.
4) 1 leietaker (Salto) kan benytte alle plasser mot p-bevis.

Håndheving kun i åpningstiden. (07.30-16.30)
', NULL, '760', 'SA', '7012', 0, '', 42, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3052, 24, 507, 'Trondheimsveien 70', 3, 'UVA', '17 plasser. HC og bakside bygg kontrolleres hele døgnet. Forside kontrolleres utenom åpningstid.

Vilkår for parkering:

Forside av bygg:

1) Kundeparkering Solli Klinikk
2) Utenfor åpningstid - kun med gyldig/synlig p-bevis
3) HC - kun med HC-bevis

Bakside av bygg:-

1) Parkering kun med gyldig/synlig p-bevis

Merknader:
NB! Dørene stenges kl 1500, men de (KONTOR) stenger IKKE før 1700!! VIKTIG AT VI IKKE HÅNDHEVER FØR ETTER 1700!!

OBS!! Onsdager åpent til kl. 21.00. Det skal da ikke kontrolleres fellesplassene til Solli Klinikk og Halvorsen Kontorspar. (Plassene mot Trondheimsveien)',
              '(60.14077294740098,11.172012090682983)||(60.1407222024161,11.171743869781494)||(60.14087977869214,11.171631217002868)||(60.140853070901876,11.171400547027588)||(60.14069816529069,11.171523928642273)||(60.140655432579905,11.171561479568481)||(60.14073822715663,11.172071099281311)||',
              '760', NULL, '', 0, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3053, 24, 508, 'Trondheimsveien 72', 3, 'UVA', '11 plasser. I åpningstiden kontrolleres ikke fellesplassene til obj. 507 og 508. Da kontrolleres kun mot veggen til Halvorsen Kontorspar og mot Hot Pizza. ref. merket området.

Vilkår for parkering:

1) Kundeparkering maks 1 time
2) Utenom åpningstid - kun med gyldig/synlig p-bevis
3) Rek i åpningstiden.

OBS!! Onsdager er Solli Klinikk åpent til kl. 21.00. Det skal da ikke kontrolleres fellesplassene til Solli Klinikk og Halvorsen Kontorspar. (Plassene mot Trondheimsveien)',
              '(60.14095456038952,11.171813607215881)||(60.14117623370776,11.171652674674987)||(60.14124300248674,11.172012090682983)||',
              '760', NULL, '', 0, '', 42, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3054, 24, 509, 'Leirvegen 6', 3, 'UVA', 'REK OBJEKT!

40 plasser.


(I utgangspunktet ikke REK objekt. Muligheter for å reorgansiere vilkår.)',
              '(60.146463901296684,11.16687297821045)||(60.14646924194528,11.166738867759704)||(60.14628231872868,11.166787147521972)||(60.14630368143578,11.166889071464538)||',
              '760', NULL, '', 0, '', 42, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3055, 24, 510, 'Skogmotoppen Sameie', 3, 'UVA', 'REK REK REK

59 plasser.

Vilkår for parkering Øvre område:
1) Gjesteparkering maks 24t. (P-forbudt for beboere på gjesteparkering. Autosys)
2) P-forbudt på stikkveier.

Vilkår for parkering på Nedre område v/ garasjer:
1) Parkering kun med gyldig/synlig p-bevis

Generelt:
Parkering kun på anviste plasser.
Det er tillatt å parkere mellom garasjebyggene på nedre område.',
              '(60.137204582938104,11.197890043258667)||(60.13707637102322,11.19857132434845)||(60.13699623832265,11.199091672897338)||(60.136745154596944,11.198839545249939)||(60.13668104780667,11.199166774749755)||(60.13723129369083,11.199730038642883)||(60.13773345180521,11.199708580970764)||(60.13772276766982,11.19930624961853)||(60.13730074154636,11.199252605438232)||(60.13711376621667,11.19906485080719)||(60.137201911861645,11.198614239692688)||(60.137706741460235,11.198941469192504)||(60.13775749109714,11.19856595993042)||(60.13727670192065,11.198185086250305)||(60.137338136484786,11.197943687438964)||',
              '760', NULL, '', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3056, 24, 511, 'Erling Grøndalsvei', 3, 'UVA', 'SKAL SLETTES.', NULL, '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3057, 24, 512, 'Læringsverkstedet Barnehage.', 3, 'UVA', 'Også Læringsverkstedet barnehage (adresse Rugdeveien).

27 plasser.

Vilkår for parkering:

1) Kun med gyldig/synlig p-bevis
2) Kontroll i tidsrommet man-fre 18.00-06.00
3) Kontroll lørdag og søndag hele døgnet.
4) Vent 5 minutter før ileggelse ved aktivitet på eiendommen.',
              '(60.161785323142965,11.189671754837036)||(60.16180934485666,11.189247965812683)||(60.162412551022236,11.189355254173278)||(60.162415220051486,11.18983268737793)||(60.16187874081983,11.189784407615661)||',
              '760', 'EP', '3808', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3058, 24, 513, 'Stallkroken Boligsameie', 3, 'UVA', 'Vilkår for parkering:

1. Gjester til sameiet kan parkere med parkeringsbevis på egne skiltede plasser samt øvrige plasser.
2. Beboere kan kun benytte plasser som ikke er skiltet gjester, og kun mot p-bevis.
3. Plasser i carporter og garasje kan kun benyttes av beboere Det skal ikke kontrolleres på disse plassene med mindre bemyndiget person hos Oppdragsgiver ber om det.
4. Alle må ha gyldig parkeringsbevis i bilen innen 15 minutter fra kjøretøyet er hensatt.
5. Parkeringsbevis skal ligge godt synlig bak bilens frontrute.
6. Ved inn/ utflytting kan kjøretøy hensettes også utenfor oppmerket plass. Bak frontruten skal ligge godt synlig lapp med navn, leilighetsnummer og telefonnummer på den som flytter inn eller ut.
7. Ved av og pålessing kan det parkeres utenfor oppmerket plass i inntil 30 minutter.
8. MC skal være registrert hos Tjenesteyter via kjøretøyvarsel.
9. Driftspersonell, håndverkere, og andre personer som skal utføre arbeid på Stallkroken kan parkere utenfor anvist plass men skal alltid ha gyldig parkeringsbevis.',
              '(60.16004236750611,11.186614036560058)||(60.16002635217124,11.187499165534973)||(60.160632260236476,11.18809461593628)||(60.16111270803057,11.188437938690185)||(60.161836035629065,11.18859350681305)||(60.161884078964796,11.188207268714904)||(60.16153175953859,11.188153624534607)||(60.16113139196956,11.188099980354309)||(60.16074169618505,11.187804937362671)||(60.16017849753744,11.187284588813781)||(60.16017849753744,11.186640858650207)||',
              '760', NULL, '', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3059, 24, 312, 'Rolfsrud Park Brl.', 4, 'UVA', 'SKAL SLETTES.',
              '(59.928580305750586,10.948407053947448)||(59.928510417732525,10.948275625705719)||(59.92830881685551,10.949364602565765)||(59.92813611112992,10.94923049211502)||(59.92810519872622,10.949352532625198)||(59.9282812646405,10.949510782957077)||(59.92807227026447,10.950665473937988)||(59.92815895940982,10.950741916894912)||(59.92841768148126,10.9492988884449)||(59.92850907373072,10.94882145524025)||(59.928637425656014,10.948888510465622)||(59.928714705371526,10.948541164398193)||',
              '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3060, 24, 313, 'Rolfsrud Blokk L', 4, 'UVA', 'SKAL SLETTES.',
              '(59.92815694338577,10.949678421020507)||(59.928197935850974,10.949718654155731)||(59.928181135666456,10.949821919202804)||(59.928136783138385,10.949779003858566)||(59.92815425535349,10.949683785438537)||',
              '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3061, 24, 314, 'Rolfsrud Park 3', 4, 'UVA', 'SKAL SLETTES.',
              '(59.928152911337264,10.949681103229522)||(59.92813947117209,10.949765592813491)||(59.92807227026447,10.949715971946716)||(59.92808705447583,10.949627459049224)||(59.928155599369646,10.949677079916)||',
              '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3062, 24, 315, 'Tunveien 2', 4, 'UVA', '135 plasser.

Vilkår for parkering:

1) Kundeparkering maks 3 timer
2) Parkering forbudt utenom åpningstid, eller med
   gyldig/synlig p-bevis
3) Ingen kontroll før en time etter stengetid mot parkeringsforbudet.
3) Parkering kun på anviste plasser
4) Logges av og til

Det skal utvises skjønn i perioder med mye besøk på plassen. Eks før 17 mai.

Spør etter Jo inne i forretningen dersom det er noe dere lurer på.

OBS: Det kontrolleres ikke på plassene mot rekkehusene på nedre plan. Se merket område på kart. Det samme gjelder de plassene på høyre side nærmest søppel conteiner/tre gjerde/paller. (to rekker)Dette er gjeste plasser for beboere! NB!GJELDER KUN ETTER STENGETID!.',
              '(59.917610117146246,10.95137894153595)||(59.91758860604591,10.952087044715881)||(59.91749180592186,10.95214068889618)||(59.91748373923211,10.953320860862732)||(59.91767599480428,10.953299403190612)||(59.91771498356074,10.953303426504135)||(59.91772237797489,10.952836722135543)||(59.917934798623605,10.952805876731872)||(59.918121001681634,10.95272809267044)||(59.9180968020653,10.951848328113556)||(59.917926059826264,10.951612293720245)||(59.91762423379826,10.951405763626098)||',
              '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3063, 24, 316, 'Holthagen barnehage', 4, 'UVA', '16 plasser

Vilkår for parkering:

1) Parkering kun med gyldig/synlig p-bevis

Merknader: Kontroll kun utenom åpningstid

10.9. Ingen kontroll før etter 21.30 grunnet foreldremøte.
7.9 Ingen kontroll grunnet dugnad.',
              '(59.98726511438003,11.038679480552673)||(59.98735097799773,11.038191318511963)||(59.987440866233825,11.03818729519844)||(59.9874556239806,11.038757264614105)||(59.987274505724066,11.038708984851837)||',
              '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3064, 24, 317, 'Furuveien 10', 4, 'UVA', '100 plasser.

Vilkår for parkering:

1) Kundeparkering maks 2 timer
2) Parkering kun på anviste plasser
3) Parkering forbudt utenom åpningstid
4) Ikke skriv på de som står utenfor oppmerket plass ved inngang forretning.


Merknader: INNTIL VIDERE SPØR VI DAGLIG LEDER/NK FØR ILEGGELSE PÅ OVERTREDELSE "IKKE KUNDE VED KONTROLL".

 Dersom det står parkert biler helt i enden av plassen, spesielt trailer / Lastebil, kan vakten sjekke med betjeningen og skrive på "ikke kunde v/kontroll"
   ', NULL, '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3065, 24, 318, 'Myrherenga BRL.', 4, 'UVA', '149 plasser.

Vilkår for parkering:

Generelt:
Parkering kun på anviste plasser

Foran blokker:
1) Timesparkering - maks 1 time
2) HC foran annenhver blokk
3) MC foran annenhver blokk. MC i perioden 15.04-15.10. Utenom denne tid kan biler parkere på disse plassene.

Stikkveier foran blokker:
1) Parkering forbudt. Av og på lessing er tillatt maks 10 minutter. Vakten skal vente 10 minutter før ileggelse her.

Reserverte plasser:
1) Plassene skal kontrolleres kun etter rek fra styre / bruker av plassene.



CF72513 kan stå på gjesteparkering uten bevis.

Gjesteparkering:
1) Parkering forbudt for beboere.  Kontroll - kun stikkprøver mot AUTOSYS
2) Maks 3 døgn',
              '(60.013866806580246,11.031748652458191)||(60.01381854702272,11.033079028129577)||(60.013794417217554,11.035112142562866)||(60.013794417217554,11.037880182266235)||(60.013794417217554,11.038872599601745)||(60.014571924303304,11.03902816772461)||(60.01461482071372,11.03824496269226)||(60.014529027837234,11.038223505020141)||(60.01455583813507,11.035857796669006)||(60.014588010463754,11.033427715301513)||(60.01460141559146,11.031931042671203)||(60.013898979579466,11.03178083896637)||',
              '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3066, 24, 319, 'Mathias Skyttas vei. Rema Nittedal', 4, 'UVA', '35 plasser.

Vilkår for parkering:
KUN P-BEVIS FRA PT GJELDER.

1) Kundeparkering maks 2 timer.
2) Parkering kun på anviste plasser.
3) Parkering forbudt utenom åpningstid.
4) Parkering tillatt hele døgnet med gyldig p-bevis.
5) Reserverte plasser kun med p-bevis.
6) HC-parkering på taket ta gode bilder med merking på asfalten ved ileggelse her.
Start kontroll 16 desember 2013.',
              '(60.04576703577682,10.881153345108032)||(60.045777749763985,10.880734920501709)||(60.04581524869166,10.880289673805236)||(60.04600006421302,10.880295038223266)||(60.046024170509114,10.880026817321777)||(60.04568132375441,10.880241394042968)||(60.04564382467463,10.8812016248703)||',
              '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3067, 24, 320, 'Statoil Furuset', 4, 'UVA', '21 plasser
GÅ INNOM FØR DU SKRIVER AVGIFTER.

Vilkår for parkering:


1) Kundeparkering maks 30 minutter
2) Parkering forbudt mot hotell.
3) Parkering kun mot p-bevis på plasser mot Jysk / ved dieselpumpe lastebiler.

Kjøretøy som hensettes, og hvor fører forlater området skal ilegges kontrollavgift. Denne problematikken gjelder spesielt baksiden av stasjonen mot nytt hotell.

NB. Vakten skal henvende seg til betjeningen før det skrives kontrollavgift på "forlatt område"', '', '760', NULL, '', 0, '', 41, NULL,
        NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3068, 24, 321, 'Rolfsrud Park 1', 4, 'UVA', 'SKAL SLETTES.',
              '(59.928400881408,10.94873696565628)||(59.92826043246274,10.94862163066864)||(59.92832628898002,10.94823271036148)||(59.927788680935095,10.94786524772644)||(59.92739487751423,10.947564840316772)||(59.927417726304625,10.947425365447998)||(59.92769594266631,10.947621166706085)||(59.92790292337358,10.947774052619934)||(59.92826312048642,10.948047637939453)||(59.92848958569865,10.94823807477951)||(59.92840289741724,10.948727577924728)||',
              '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3069, 24, 322, 'Rolfsrud Park 2', 4, 'UVA', 'SKAL SLETTES.',
              '(59.92828664068425,10.94932034611702)||(59.92814887928827,10.949233174324035)||(59.928165679489155,10.949135273694992)||(59.92787335478016,10.948946177959442)||(59.92746073574969,10.948659181594848)||(59.927417726304625,10.94886839389801)||(59.92720267824282,10.948707461357116)||(59.92731020244794,10.948165655136108)||(59.927788680935095,10.948653817176818)||(59.92771072704537,10.948039591312408)||(59.92782362572274,10.947951078414917)||(59.927920395711844,10.948715507984161)||(59.9281851677115,10.949006527662277)||(59.92824968036587,10.948686003684997)||(59.92840155341109,10.948809385299682)||(59.92829537675348,10.949297547340393)||',
              '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3070, 24, 323, 'St Halvardsgt 25 a-c', 4, 'UVA', 'SKAL SLETTES.', NULL, '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3071, 24, 324, 'Linderud Storkiosk', 4, 'UVA', 'SKAL SLETTES.', NULL, '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3072, 24, 325, 'Tveita BRL.', 4, 'UVA', '99 plasser.

Vilkår for parkering:

1) Gjesteparkering maks 72 TIMER, REG PÅ TAB.
2) Parkering kun på anviste plasser.
3) Blå TILLATELSE: Parkering hele døgnet alle dager
4) Rød TILLATELSE: Parkering tillatt: 08.00-16.00 alle dag.
5) Ventetid på 10 min før ileggelser på gjesteparkering ved ikke innlogget.
6) NB! VENTE 20 MIN FØR ILEGGELSE V/OPPGANGER "IKKE SYNELIG AKTIVITET"


MRK "rød" eller "blå" rettighet for beboere ute.

Unntas håndheving:
Merkede firmabiler/tjenestebiler. (PROFILERTE)
Snuplasser.
',
              '(59.91528145960209,10.841086506843567)||(59.91516851824623,10.841547846794128)||(59.91535944269495,10.841960906982421)||(59.916206488624596,10.84326446056366)||(59.916771173902084,10.844036936759948)||(59.917209470614125,10.844702124595642)||(59.91795429285554,10.84576427936554)||(59.91805646933217,10.845383405685424)||',
              '760', 'SA', '7001', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3073, 24, 326, 'Stansevn 6', 4, 'UVA', 'SKAL SLETTES.', NULL, '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3074, 24, 327, 'Haavard Martinsensvei 9', 4, 'UVA', 'SKAL SLETTES.',
              '(59.95615441700791,10.90368926525116)||(59.95591806898878,10.905084013938903)||(59.95531913407384,10.904633402824401)||(59.955477597727786,10.903324484825134)||(59.95614904548076,10.903705358505249)||',
              '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3075, 24, 328, 'Lennsmann Hiorts Alle', 4, 'UVA', 'Generelt P-forbud.',
              '(59.91171555419242,10.794276595115661)||(59.91179085630485,10.794196128845214)||(59.911907843176465,10.794595777988433)||(59.91183523068399,10.794697701931)||(59.91172227760225,10.794284641742706)||',
              '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3076, 24, 329, 'Fyrstikkbakken 7', 4, 'UVA', 'Rek Obj.', NULL, '760', NULL, '', 0, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3077, 24, 330, 'Granberg BRL. Bjørndal.', 4, 'UVA', 'DOBBELTREGISTRERT. SKAL SLETTES.

', '', '760', 'SA', '7017', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3078, 24, 331, 'Schweigaardsgt 58 d-e', 4, 'UVA', '7 plasser. INNTIL VIDERE (F O M 01.04.14) KAN ARBEIDERE SOM JOBBER I BYGGET BENYTTE PLASSENE MED GYLDIG UTFYLT MIDLERTIDIG P-BEVIS.

Vilkår for parkering:

1) Parkering kun med gyldig/synlig p-bevis
2) Parkering kun på anviste plasser

Plassene 4 og 7 kan på dagtid disponeres av besøkende til Misjonsselskapet når de er ledige, men kjøretøyene må ha parkeringsbevis.

OBS: De to plassene lengst inn omfattes ikke av vår kontroll!',
              '(59.90826828264776,10.76997309923172)||(59.908417557524835,10.770117938518524)||(59.908460591599,10.769990533590316)||(59.90831266173537,10.769816190004348)||(59.908272317112726,10.769975781440734)||',
              '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3079, 24, 114, 'Grefsenveien 92', 1, 'UVA', '8 plasser

Vilkår for parkering:

1) Kundeparkering maks 30 minutter
2) Parkering forbudt utenom åpningstid', NULL, '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3080, 24, 115, 'Bentsebrugt BRL', 1, 'UVA', 'Generelt P-forbud

Vilkår for parkering:

1) Parkering forbudt
2) Parkering kun etter avtale med PT AS.

Beboere ringer på vakt telefonen ved behov for korttids p-tillatelse. ',
              '(59.93909677412088,10.759413242340088)||(59.93935070841953,10.760148167610168)||(59.93969600220316,10.759421288967132)||(59.93943669631275,10.759340822696685)||(59.93921366475387,10.759512484073639)||(59.93919888550118,10.759332776069641)||(59.93909274340204,10.759421288967132)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3081, 24, 116, 'Minister Ditlevsvei 21', 1, 'UVA', 'DENNE AVTALEN ER NÅ REK INNTIL ANNET AVTALES.

14 plasser.

Vilkår for parkering:

1) Kundeparkering maks 1 time
2) Parkering kun på anviste plasser
3) Parkering forbudt utenom åpningstid. Parkering er tillatt med p-bevis.

Merknad: Vent 5 minutter ved kontroll etter åpningstid.

PT P-BEVIS GJELDER FRA  APRIL.',
              '(59.963383703304025,10.737285017967224)||(59.96363610902108,10.737301111221313)||(59.96363879417793,10.737757086753845)||(59.96340249954072,10.737778544425964)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3082, 24, 117, 'Nils Laurissonsvei 57', 1, 'UVA', '20 plasser

Vilkår for parkering:

1) Rek. i butikkens åpningstid ( Man-Fre 0800-2200/Lør 0900-2000 )
2) Parkering forbudt utenom åpningstid
3) Parkering mot p-bevis for ansatte/beboere
4) Det skal ikke håndheves bakside v/trappa dette er gårdeier.',
              '(59.95019014279609,10.75050562620163)||(59.94998061488804,10.750411748886108)||(59.94972407570989,10.750130116939544)||(59.94990338471609,10.749611109495163)||(59.95009276620869,10.749967843294143)||(59.95023513739846,10.750308483839035)||(59.95019417216596,10.750519037246704)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3083, 24, 118, 'Darres gate 2', 1, 'UVA', '9 plasser.

Vilkår for parkering:

1) Kundeparkering maks 45 minutter mot gyldig billett fra automat.
2) Parkering er kun tillatt i den tiden man befinner seg i butikken.
3) Det er ikke tillatt å hensette kjøretøy å forlate eiendommen i forretningens åpningstid.
4) det er tillatt å parkere på eiendommen mot betaling til automat i angitt tidsrom (se automat)
3) Parkering kun på anviste plasser
6) Ved utløpt p-billett vent 5 minutter.

En reservert plass, og en HC.
BILER MERKET MED LOGO MOSKING ER FREDET!! (gårdeier)
Sjekk også mot EasyPark.






', NULL, '760', 'EP', '3804', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3084, 24, 119, 'Kingosgate 9', 1, 'UVA', '11 plasser.

Vilkår for parkering:

1) Parkering kun med gyldig/synlig p-bevis

NB: Det er garasje / Carport på stedet. Ref. omriss.',
              '(59.92912126091011,10.751148015260696)||(59.929129996759556,10.751512795686721)||(59.92907623764952,10.751699209213256)||(59.929002990721855,10.751542299985885)||(59.9290097106302,10.751488655805587)||(59.92906951775463,10.751471221446991)||(59.92907153372323,10.751410871744155)||(59.92904667010183,10.751410871744155)||(59.92903323029876,10.75141355395317)||(59.929030542337465,10.751239210367202)||(59.92906414183775,10.75124591588974)||(59.929060781889255,10.751149356365203)||(59.9291205889216,10.751149356365203)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3085, 24, 120, 'Kirkeveien 92 Shell Stasjon.', 1, 'UVA', 'SKAL SLETTES.',
              '(59.932005982144425,10.722581148147583)||(59.932159181847396,10.72291910648346)||(59.93258921232072,10.721953511238098)||(59.932507238191846,10.721650421619415)||(59.93226467421396,10.72213590145111)||(59.932006654074485,10.722574442625045)||',
              '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3086, 24, 121, 'Apalveien 60', 1, 'UVA', 'Vilkår for parkering:

1) Parkering maks 20 minutter
2) Parkering forbudt utenom åpningstid',
              '(59.93988208315983,10.716870725154876)||(59.93985655587017,10.71708396077156)||(59.93993380944969,10.717134922742843)||(59.939995612183694,10.717028975486755)||(59.94002987234531,10.716809034347534)||(59.940000986329046,10.716760754585266)||(59.93996605436876,10.716937780380249)||(59.93989081617548,10.716861337423324)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3087, 24, 122, 'Thv.Meyersgate 5. Fossheim BRL.', 1, 'UVA', '26 plasser.

Vilkår for parkering:

1) Parkering kun med gyldig/synlig p-bevis. Plassene er nummerert. Dette skal stemme med "nr" på p-bevis.
2) Parkering kun på anviste plasser.
3) Eiere av innendørs plasser kan hensette kjøretøy foran portene, men kun mot gyldig bevis.


På gjesteparkering:
1) Vent 16 min dersom det ikke er p bevis.
2) Boligparkerende kan inntil videre benytte gjesteplasser mot gyldig bevis.

Beboere kan inntil videre benytte gp mot p-bevis.

Husk plass på baksiden. Innenfor gelender kan varebiler parkere uten p-bevis.',
              '(59.92998072307853,10.758568346500396)||(59.92998677081787,10.75891301035881)||(59.93035568083243,10.758966654539108)||(59.930525015203024,10.75886070728302)||(59.930328802281394,10.758646130561828)||(59.93032342656858,10.758081525564193)||(59.930240774874356,10.757869631052017)||(59.93009227009336,10.757833421230316)||(59.92998475490488,10.757829397916793)||(59.92999147461438,10.758139193058014)||(59.93024682256629,10.758139193058014)||(59.93025219829152,10.758560299873352)||(59.929984082933856,10.758575052022934)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3088, 24, 332, 'Joker Gan', 4, 'UVA', 'SKAL SLETTES.', '', '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3089, 24, 123, 'Shell Vinderen', 1, 'UVA', 'SKAL SLETTES',
              '(59.94221237321614,10.705616176128387)||(59.942556293768796,10.705989003181457)||(59.94274034353668,10.705243349075317)||(59.94250255641759,10.705109238624572)||(59.942416576474514,10.705128014087677)||(59.9423467176066,10.705286264419555)||(59.94221640355577,10.705608129501342)||',
              '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3090, 24, 124, 'Løkkalia Boligsameie', 1, 'UVA', '17 Plasser

Parkering kun med gyldig p-bevis eller mot elektronisk registrering. P tillatt i inntil 72 timer, deretter 48 timers karantenetid. Sjekk begge typer bevis.

Vent i 15 minutter før ileggelse ved ikke gyldig bevis eller elektronisk innlogging. ved parkering i forbudssone kan det ilegges med en gang.

Gamle Firstpark p-bevis er gyldige inntil 20 januar 2014. deretter kunp-bevis utstedt av PT eller elektronisk.


MC trenger ikke p-bevis dersom de står på MC parkering

BILER FOR HELSE OG OMSORG ER FRITATT!!
VAKTMESTER ANDERSEN ER FRITATT!!',
              '(59.9540581123976,10.671941041946411)||(59.95423135464039,10.67209929227829)||(59.95429581663909,10.67273497581482)||(59.954258213821774,10.672756433486938)||(59.954317303944144,10.673158764839172)||(59.95437236509971,10.673082321882248)||(59.954399224166764,10.673177540302276)||(59.954358935557984,10.673255324363708)||(59.95451606085529,10.673646926879882)||(59.954564406950716,10.673620104789733)||(59.954619467695736,10.673687160015106)||(59.95471347363436,10.673649609088897)||(59.95461543886384,10.673507452011108)||(59.954434140921435,10.673074275255203)||(59.95435423521711,10.672831535339355)||(59.954313275075506,10.672368854284286)||(59.95427298636223,10.672049671411514)||(59.954214567641,10.671930313110351)||(59.95409168654642,10.671761333942413)||(59.95406079833076,10.671949088573455)||',
              '760', 'GP', '707', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3091, 24, 711, 'Arnstein Arebergsvei 28', 1, 'UVA', 'DOBBELTREGISTRERT. SKAL SLETTES.',
              '(59.90763015860226,10.624873638153076)||(59.90840478177333,10.62477171421051)||(59.90824071379074,10.62404751777649)||(59.90759250284863,10.624659061431884)||',
              '760', 'GP', '134', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3092, 24, 125, 'Arnstein Arnebergsvei 28', 2, 'UVA', 'REK REK REK


11 gjesteplasser utendørs skiltet for ÅF Gruppen.

Skal være elektronisk innlogget i resepsjon. Ikke innlogget medører ka.

59 plasser innendørs i anlegget.

Kun for ansatte som skal være elektronisk registrert. Ikke registrert medfører kontrollavgift.

Avdelingen åpner medio september.

Vent i 10 minutter før ileggelse på utendørs parkeringen. Gå inn i resepsjonen for å sjekke om det er kø der inne, og om noen ikke har rukket å sjekke logge inn før tidsfristen utløper.',
              NULL, '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES
    (3093, 24, 126, 'Golfstubben 2-4', 1, 'UVA', 'Kun tillatt å hensette kjøretøy med gyldig tillatelse. Gjelder 00-25 alle dager.', NULL,
           '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3094, 24, 127, 'Vestlibakken Boligsameie', 1, 'UVA', 'Gjesteparkering:
Gjester skal logge seg inn på skjerm med kjennemerke, hvem de skal besøke og hvor lenge de skal parkere. Parkering på GP utover makstid på 72 timer avtales med Rune Bråthen i sameiet, som logger dette inn manuelt.

I perioden 07-09 og 15-17 man-fre kontrolleres ikke innlogging grunnet levering/henting av barn. Øvrige bestemmelser håndheves som normalt også i denne perioden.

Stikkveien ved barnehagen kan kontrolleres 22-06 alle dager.

HC-plasser:
Skal ha gyldig HC-bevis utstedt av offentlig myndighet.

Uteområdet:
Kjøreveier på området har generelt parkeringsforbud.

Tilkomstvei har parkeringsforbud.

Betalte kr 20.- til bom i sameiet gir kun tillatelse til av / pålessing eller av/påstigning. Det skal være regelmessig aktivitet ved kjøretøyet.

Ved spørsmål i spesielle tilfeller kan trafikkansvarlig Rune Bråthen kontaktes på 9017 0588.
barn.



', NULL, '760', 'SA', '7000|7018', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3095, 24, 128, 'Østre Aker Vei 24B', 1, 'UVA', 'Kun kontroll på kveld ETTER KL 17.00.
Kun kontroll mot nyttekjøretøy (lastebiler - vogntog parkert langs gjerde mot skinnegangen.
Det skal ikke håndheves mot kjøretøy med parkeringsbevis. dette selv om de står parkert mot skinnegangen.
Oppdragsgiver kan rekvirere kontroll utover det som beskrives ovenfor.
PRIVATbiler som står parkert etter kl 17.00 skal ha gyldig p-bevis.', NULL, '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3096, 24, 129, 'Vålerenggata 27', 2, 'UVA', 'Kontroll i h t skilting. Logg i 15 minutter.', NULL, '760', NULL, '', 0, '', 41, NULL,
        NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3097, 24, 130, 'Bogstadlia Borettslag', 1, 'UVA', '18 innendørs plasser i gjesteparkeringsanlegg kontrolleres regelmessig.
Plassene er forbeholdt gjester til borettslaget.
Maksimum parkeringstid på gjesteplassene er 48 timer uavhengig av om kjøretøyet er flyttet i 48 timers perioden.
Plassene kontrolleres via logg med billed- og tidsdokumentasjon.
Det er 24 timers karantenetid mellom hver 48 timersperiode.
Kjøretøy som har registrert eier i borettslaget kan ikke hensettes i gjestegarasjen. Dette kontrolleres mot Autosys.
Parkering forbudt på grøntareale ved innkjøring', NULL, '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3098, 24, 333, 'Haslevangen 15 Kicks', 1, 'UVA', '10  skiltede plasser for Kicks utendørs, og 5 plasser innendørs.

Skal ha permanente eller midlertidige p-bevis utstedt av Kicks.

Logg i 10 minutter før ileggelse.', NULL, '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3099, 24, 334, 'Haslevangen 15 NEAS drift', 1, 'UVA', 'Parkering kun for elektronisk registrerte kjøretøy tilhørende NEAS drift
og Totalreform på plasser skiltet (RESERVERT NEAS HVITE SKILTER).
Uniformerte kjøretøy fra Neas drift og Totalreform illegges ikke selv om de ikke er registrert.

BILER REGISTRERT PÅ BEGGE NEAS LISENSER KAN STÅ PÅ DISSE PLASSENE.

Vent i 10 minutter før ileggelse.

Ikke ilegg før 08.10 på morgenen mandag-fredag.


KUN DISSE TO BILENE KAN STÅ PÅ HVITE OG SORTE SKILTER BS22144 og DP14172', NULL, '760', 'GP', '334', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3100, 24, 501, 'Gjerdrumsveien 4', 3, 'UVA', 'SKAL SLETTES.',
              '(60.074085349303296,11.136338710784912)||(60.07371335544701,11.136172413825988)||(60.07375082264416,11.135517954826355)||(60.073815052025886,11.135244369506836)||(60.074128168470686,11.135330200195312)||',
              '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3101, 24, 113, 'Smestadhagan 8', 1, 'UVA',
              'Skiltes fredag 14 juni, og kan kontrolleres etter det. Se oppstilling på juridisk skilt i forhold til plassnummer. Nummer på plass skal stemme overens med nummer på kontrollavgift. Uteområdet kan kontrolleres daglig. Rek i garasje.',
              '(59.940324105217144,10.678713619709015)||(59.9405592209321,10.678812861442566)||(59.94056795376941,10.678740441799163)||(59.94042419753958,10.678702890872955)||(59.94043024337488,10.678558051586151)||(59.94033418163912,10.678529888391494)||(59.94033015107069,10.678623765707016)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3102, 24, 112, 'Golfstubben 2-4', 1, 'UVA',
              'Område ved søppelcontainere rundt hjørnet for Bjerkebakken 66. Parkering kun mot gyldig tillatelse. Kontroll så fort området blir skiltet. Skiltes i uke 25.',
              NULL, '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3103, 24, 100, 'Oscarsgate 12, Oslo', 1, 'UVA',
              'Parkering på tre skiltede plasser kun mot parkeringsbevis, eller gyldig, midlertidig p-tillatelse. Kontroll i bakgården kun etter rekvisisjon fra Oppdragsgiver ved Arne Enge.',
              '(59.92290814541942,10.729353725910186)||(59.922844294493906,10.729448944330215)||(59.922956537617985,10.729933083057403)||(59.9227979184815,10.730233490467071)||(59.92264601978414,10.729722529649734)||(59.922527054389626,10.729925036430358)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3104, 24, 101, 'Ullevålsveien 9', 1, 'UVA', 'Generelt P-forbud. Alle eiendommer KB Stiftelsen P-bevis kan stå.',
              '(59.91962604870117,10.743372291326522)||(59.91960924417601,10.74317380785942)||(59.91947346330048,10.743216723203659)||(59.919458003066545,10.743051767349243)||(59.919598489275415,10.74300080537796)||(59.91963949231519,10.743146985769271)||(59.91966705170688,10.74336290359497)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3105, 24, 102, 'Københavngata 18', 1, 'UVA',
              'Generelt P-forbud. Moped/motorsykkel kan stå, hvis ikke til hinder. P-bevis alle eiendommer KB Stiftelsen kan stå.',
              '(59.928363921216906,10.768248438835144)||(59.92822683214846,10.768017768859863)||(59.92815963141782,10.768205523490905)||(59.92830747284557,10.768420100212097)||(59.92838273731934,10.768280625343322)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES
    (3106, 24, 103, 'Gøteborggata 38', 1, 'UVA', 'Rek-avtale. Kun ileggelser etter begjæring.', '', '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3107, 24, 104, 'Chr. Michelsensgate 2', 1, 'UVA',
              'Kontroll innerst i hjørnet langs veggen, og ca 4 meter utover. Også kontroll av plass utenfor eiendomsmekler v s a Seven - eleven.',
              '(59.926292068658384,10.775063931941986)||(59.926286020245485,10.775033086538314)||(59.92622688015016,10.775034427642822)||(59.92608373380126,10.77504113316536)||(59.92608776610123,10.775165855884552)||(59.926093142500434,10.775239616632461)||(59.92612338472971,10.775236934423446)||(59.926135481613684,10.77508807182312)||(59.92622889629151,10.775086730718612)||(59.92628669229142,10.775069296360015)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3108, 24, 105, 'Sarsgate 10, 16, 18, 20, 22, 24, 26, 28', 1, 'UVA', 'Kontroll f o m 01.01.13. Generelt Parkeringsforbud. NB! Biler med midlertidig/permanent p-bevis tilknyttet ANKER kan stå på høyre side v/søppeldunker rett innenfor innkj, OG KUN DER!

Kan hensette nyttekjøretøy i inntil 10 minutter LOGGES, eller hvis det er tydelig aktivitet ved bilen. Kjøretøy som benyttes i f m inn- og utflytting anses som nyttekjøretøy. Kontrollavgift etter 10 minutter LOGGES. Parkerte personbiler ilegges umiddelbart. Borttauing i h t Standardvilkår etter 3 timer.

DET SKAL IKKE SKRIVES AVGIFTER UTENFOR NR 10, HELT INNERST. DENNE OMFATTES IKKE AV AVTALEN.

Gyldig PERMANENT P-bevis skal det ikke håndheves mot.',
              '(59.921110862952396,10.77008306980133)||(59.92042795075094,10.769235491752624)||(59.92048978983603,10.768929719924926)||(59.92042795075094,10.768800973892212)||(59.92028814022076,10.769455432891845)||(59.921086665516114,10.77034592628479)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3109, 24, 106, 'Sarsgate 14', 1, 'UVA', 'Gyldig PERMANENT P-bevis skal det ikke håndheves mot.
Husk og LOGGE 10 min!',
              '(59.920241088467556,10.769172459840774)||(59.92020075834028,10.769356191158294)||(59.9202975505634,10.769437998533249)||(59.920343257903944,10.769256949424743)||(59.920245121477585,10.769187211990356)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3110, 24, 107, 'Trondheimsveien 21', 1, 'UVA',
              'PARKERINGS FORBUD. Kjøretøy med ALLE EIENDOMMER KB STIFTELSEN P-BEVIS kan stå, samt VAKTMESTERTJENESTEN.',
              '(59.91985660592729,10.76646476984024)||(59.919712759915825,10.766665935516357)||(59.919685872741724,10.766553282737732)||(59.91983912934236,10.766357481479644)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3111, 24, 108, 'Trondheimsveien 154', 1, 'UVA', 'Parkeringsforbud. Gjelder foran laste rampe. Mopeder/motorsykler kan stå, hvis ikke til hinder.
Alle eiendommer KB Stiftelsen P-bevis kan stå.

Det står av og til en Golf med p-bevis merket Kaare Berg parkert her. Vedkommende kan kun stå på kveld og natt.', NULL, '760', NULL, '', 0,
        '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3112, 24, 109, 'Trondheimsveien 187-193', 1, 'UVA',
              'Parkering mot gyldig p-bevis på anviste plasser på baksiden. Ellers parkeringsforbud. Vent i 30 minutter før ileggelse. Logges. NB! KUN PT-BEVIS SOM ER GJELDENE!! Plassen mot Rendevous kan ilegge umiddelbart. Under p-forbudskilt.',
              '(59.935031545270945,10.780211091041565)||(59.9349139680253,10.780554413795471)||(59.93488978065451,10.78069120645523)||(59.93495831149261,10.78083336353302)||(59.93507185737349,10.78101173043251)||(59.935221683591806,10.78125312924385)||(59.935309697781165,10.781241059303283)||(59.935388977538054,10.781108289957046)||(59.9354749757041,10.780868232250213)||(59.93529760424228,10.78057050704956)||(59.93503557648339,10.78021913766861)||',
              '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3113, 24, 110, 'Stavangergata 46', 1, 'UVA', 'Parkerende innen for bommen skal ha p-bevis utstedt av PT AS.
På utsiden av nr 46-46B, skal det kun være tillatt med av og pålessing. Det skal være aktivitet ved kjøretøy.

Ta første bilde, vent så i 5 minutter før ileggelse.
Kjøretøy med p-bevis merket renholder og vaktselskap kan hensette kjøretøy i forbudt sone dersom de er i tjeneste. Motorsykler/mopeder skal ikke stå i gjennomgang P-FORBUDT.',
              '(59.94434838454609,10.758938491344452)||(59.9444921237629,10.758737325668335)||(59.9447070597469,10.759284496307373)||(59.94479706377628,10.75911819934845)||(59.94457944167447,10.758583098649978)||(59.944445106330654,10.758292078971862)||(59.94439808883175,10.758380591869354)||(59.94414956665831,10.757763683795929)||(59.94398634702821,10.758023858070373)||(59.94405015726733,10.758144557476043)||(59.94417509064304,10.757919251918792)||(59.944367191581854,10.758431553840637)||(59.94425166247934,10.75863003730774)||',
              '760', NULL, '', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3114, 24, 111, 'Bjerkebakken 66', 1, 'UVA', '2 områder av 5 plasser. Alle parkerende skal ha gyldig parkeringsbevis.', NULL, '760',
              NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3115, 24, 703, 'Gamle Drammensvei 227, Asker', 2, 'UVA', 'Rek.', NULL, '760', NULL, '', 0, '', 39, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3116, 24, 704, 'Nordre Frydendal Huseierforening', 2, 'UVA',
              'Kontroll mot p-bevis på de to plassene inntil garasjen.( IKKE ENNÅ!) Deretter det samme når inngjerdet område er sikret. Nytt juridisk kommer opp ved innkjøring til boligområdet 7.6.13. Her skal det kontrolleres mot kjøretøy som parkerer inne på gangveiene Det skal kun kjøres en runde rundt kl 2400. Utover dette blir vi ringt etter ( REK. ) -Høyre side v/første garasje inne i BRL, skravert felt med p-forbud skal ilegges KA på natt!! Ellers ingen kontroll på oppmerkede plasser foran garasjer og lignende.',
              '(59.84429745751417,10.42304813861847)||(59.84418157988271,10.422967672348022)||(59.84415463153852,10.422152280807495)||(59.84422469718805,10.42203962802887)||(59.844213917866945,10.42151927947998)||(59.84387167260727,10.421680212020874)||(59.843699201221746,10.421503186225891)||(59.84350516984491,10.420682430267334)||(59.84364530373053,10.420473217964172)||(59.84340815373237,10.419824123382568)||(59.84327071375562,10.419314503669738)||(59.84355098291089,10.419083833694458)||(59.843904010892594,10.420156717300415)||(59.84420044371067,10.421208143234253)||(59.844329795385846,10.4212886095047)||(59.84436213322609,10.421508550643921)||',
              '760', NULL, '', 0, '', 39, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3117, 24, 303, 'Alf Bjerckesvei 1', 4, 'UVA', 'Nokas. SKAL KJØRES FRA KL: 0800 til 1700!
Kontroll av gjesteplasser og HC plasser.
HC skal ha gyldig p-bevis utstedt av offentlig myndighet.
Gjesteparkering skal ha gyldig p-bevis fra innsjekking i resepsjon.
Kontroll av individuelt skiltede plasser kun etter rek frem til 01.04.13, deretter mot p-bevis. Kjøretøy oppstilt utenfor oppmerket skiltet plass skal ilegges kontrollavgift.
Vi har garantert responstid ved rek på 15 minutter.
Vent 5 minutter før ileggelse.',
              '(59.930637904303204,10.83324909210205)||(59.93077229558824,10.833066701889038)||(59.93056533278292,10.832422971725463)||(59.93034492941464,10.831548571586608)||(59.930146027556916,10.83101212978363)||(59.929804666183536,10.830969214439392)||(59.92976972348257,10.83175778388977)||(59.92946867714965,10.831811428070068)||(59.92972134122044,10.832691192626953)||(59.93011914883601,10.833238363265991)||(59.9304175014171,10.833442211151123)||(59.93071853913956,10.833495855331421)||',
              '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3118, 24, 304, 'Haslevangen 15', 4, 'UVA', 'Kontroll på plasser merket (NEAS FACILITY SERVICE SORTE SKILTER)
BILER PÅ BEGGE LISENSER KAN STÅ PÅ BÅDE SORTE OG HVITE SKILT. VIKTIG.
Elektronisk løsning.
Ventetid 5 minutter.
Ansatte skal fortrinnsvis stå nede, men det skal ikke ilegges dersom de står ute,
og er elektronisk registrert.

Gjester skal registrere seg hos den de besøker, og skal ligge inne på systemet.

Kjøretøy som ikke er innregistrert skal ilegges kontrollavgift.

Kjøretøy profilert med NEAS, Alanti og Totalreform-skal ikke ilegges kontrollavgift selv om de ikke er registrert.

KUN DISSE TO BILENE KAN STÅ PÅ HVITE OG SORTE SKILTER BS22144 og DP14172', NULL, '760', 'GP', '134', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3119, 24, 132, 'Granbergstubben 24', 1, 'UVA', 'Kun de to øverste plassene.

Max 1 time. Logges.

Benyttes av gjester til BRL utenom Rimis åpningstid. Disse skal ha p-bevis eller være innlogget.', NULL, '760', NULL, '', 1, '', NULL, '',
        0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3120, 24, 335, 'Byskogen BRL', 1, 'UVA', 'ADR. Valhallveien 5.
Kun mot gyldig p-bevis. Max 48 timer uavhenig av flytting. 48 timers karantene. Vent 10 minutter før ileggelse.', NULL, '760', NULL, '', 0,
        '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3121, 24, 336, 'Ulvenveien 111', 1, 'UVA', 'Kontroll i h t skilting.

Alle utearealer skal kontrolleres.

P.hus skal kontrolleres i h t rek.

Område 1:
Gjesteparkering skal være innlogget på tab eller ha midlertidig p-bevis. Vent 5 minutter før ileggelse. Plasser reservert Fabritius skal de ha permanente p-bevis. Åpen plass som ikke er skiltet kan benyttes, men det må være innlogget.

Område 2:
Skal være elektronisk logget på Scanlog lisens. Ellers i h t skilting.

Område 3: Skal være elektronisk innlogget på Ulvenveien Borettslag lisens.

Område 4: Skal være elektronisk innlogget på en av lisensene for U111.

Ellers håndheving i h t skilting.

I perioden 17-07 mandag - fredag og fredag 17 til mandag 07 kan Sone 1 benyttes som gjesteparkering mot gyldig og riktig utfylt p-bevis. Vent i 5 minutter før ileggelse.',
              NULL, '760', 'SA', '7003', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3122, 24, 514, 'Bekkebakken Sameie', 1, 'UVA', '30 minutter gratis, deretter easypark eller midlertidig p-bevis eller elektronisk innlogging. Plassene foran dørene kontrolleres etter rek. Ellers kontrolleres i h t skilting.
Nyttekjøretøy som står utenfor anvist ventes i 10 minutter før illeggelse dersom det ikke er aktivitet.

BILER MERKET BORI SKAL IKKE ILEGGES KONBTROLLAVGIFTER.
DISSE TILHØRER VAKTMESTERSELSKAPET.', NULL, '760', 'SAEP', '7005,3807', 0, '', 42, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3123, 24, 337, 'Lillomarka Sameie', 1, 'UVA', 'Håndheving i h t skilting.

Gjester skal benytte anviste plasser utendørs, og skal ha gyldig, synlig p-bevis.
Beboere skal benytte egne garasjeplasser, men kan stå utendørs på anviste gjesteplasser man-fre 10-15.I denne perioden trengs det IKKE p-bevis
Beboere med 2 kjøretøy, kan benytte utendørs plasser med eget p-bevis.
Basketballbanen kan benyttes 22-08 alle dager mot gyldig p-bevis.
Parkering kun på anviste plasser.
Gjestebevis er gyldig inntil 72 timer. Etterfulgt av 48 timers karantene.
Beboere uten gyldig bevis kan ikke benytte GP unntatt man-fre 10-15-
Kjøreveier kan kun benyttes til av og pålessing når det er regelmessig aktivitet ved kjøretøyet.
Vent i 10 minutter før ileggelse.
Ved parkering utenfor anvist når det ikke er varelevering kan det ilegges med en gang.', NULL, '760', NULL, '', 1, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3124, 24, 133, 'ULVENVEIEN 99', NULL, 'UVA', 'All stans forbudt', NULL, '760', NULL, '', 0, '', 41, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3125, 24, 134, 'Bentsebrugata 16-18', 1, 'UVA', 'Myrahagen Borettslag. Det er med unntak av 3 plasser reservert styret parkeringsforbud på området.
Kjøretøy som benyttes til vare- eller persontransport skal ha regelmessig aktivitet.
Uniformerte kjøretøy  (hjemmehjelp) kan hensette kjøretøy for kortere perioder.
Håndverkere skal ha korrekt utfylt midlertidig p-bevis.
Styreplassene kontrolleres kun ved rek.
TT-taxi STOR MINIBUSS FOR HC ilegges ikke.
MC skal kun stå på egne skiltede plasser.
Snekkerforretningen kan ha et kjøretøy med gyldig p-bevis stående foran oppgangen (høyre side når du ser mot bygget)

20 MINUTTER LOGG FØR ILEGGELSER. ', NULL, '760', NULL, '', 0, '', 40, NULL, NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3126, 24, 135, 'Myrahagen Borettslag', NULL, 'UVA', 'SKAL SLETTES. LAGT INN DOBBELT.', NULL, '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3127, 24, 136, 'Halvdan Svartesgt. 4-6', NULL, 'UVA', 'SKAL SLETTES. LAGT INN DOBBELT', NULL, '760', NULL, '', 0, '', NULL, '', 1);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3134, 24, 338, 'Tevlingveien 21', 1, 'UVA', 'Alle på forsiden skal være elektronisk registrert.
Sjekk med resepsjonen før ileggelse i tilfelle kø.
HC skal ha HC bevis og være registrert elektronisk.
I enkelte tilfeller vil det bli skråparkering, og HC plasser vil bli tatt i bruk til vanlige. Sjekk dette med resepsjon. Alle skal imidlertid være registrert.
På siden av bygget i h t skilting.', NULL, '760', 'SA', '7016', 0, '', NULL, '1', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3140, 24, 800, 'KILDEN KJØPESENTER STAVANGER', 1, 'UVA', 'SKAL SLETTES.', NULL, '760', NULL, '', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3144, 24, 137, 'Christian Kroghsgate 32', 1, 'UVA', '2 merkede plasser til Hei Reklame. Disse skal vi ikke kontrollere mandag-fredag 07-17 hvis vi ikke blir bedt om det. På de øvrige plassene parkering kun mot gyldig parkeringsbevis. Alle andre skal ilegges kontrollavgift. Trolig mye aktivitet på kveld og helg.

Denne blir satt i inaktiv i l a april grunnet utbygging. Aktiv igjen i l a høsten 2015.', NULL, '760', NULL, '', 0, '', NULL, '1', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3209, 24, 138, 'Fossveien 20/24', 1, 'UVA', 'Parkering kun i h t skilting.
Parkering forbudt utenfor anvist.
Parkering kun tillatt for gjester og ansatte.
Alle skal være elektronisk registrert. KHiO kan kun benytte plasser skiltet KHiO.
Tress kan kun benytte øvrige plasser.
Bestemmelser gjelder mandag-fredag 08-17.
På HC plass er det kun tillatt med hc bevis samt registrering.
Det er generelt parkeringsforbud utenom angitte tider.
Kjøretøy som hensettes utenom angitte tider skal være elektronisk registrert.-

SKOLENS BIL ER FREDET MED REG. NR:   OPEL VIVARO   HF23987', NULL, '760', 'SA', '7019', 0, '', NULL, '1', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3237, 24, 139, 'Halvdan Svartesgate 4-6', 1, 'UVA', '', NULL, '760', NULL, '', 0, '', NULL, '1', NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3254, 24, 140, 'Ulvenveien / Persvei', 1, 'UVA', 'Det skal håndheves mot alle vogntog / større nyttekjøretøy som ikke har tilknytning til eiendommen. Kjøretøy som er uniformert og tilhører leietakere på eiendommen skal ikke ilegges avgift.

Oppstart mandag 4. mai 2015.', NULL, '760', NULL, '1', 0, '', NULL, '1', NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3725, 24, 339, 'Sameiet Langerudåsen', 1, 'UVA', 'Gamle Enebakkvei, Oslo.

7 reserverte plasser. Alle skal ha p-bevis med nummer som korresponderer med nummer på skilt.
2 gjesteplasser. Skal ha p-bevis.

Gjesteplasser kan benyttes i 72 timer sammenhengende uavhengig av om kjøretøyet flyttes i mellomtiden. 24 timers karantene etter parkering.

Beboere kan benytte gjesteplasser i perioden 21-08 alle dager mot gjestebevis.

Parkering forbudt utenfor oppmerket.

Servicebiler, hjemmehjelp o l samt beboere kan hensette kjøretøy for korte perioder (maks 15 minutter) f eks i f m av og påstigning.', NULL,
              '760', NULL, '', 0, '', NULL, '1', NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3853, 24, 141, 'Hoffsgrenda', NULL, 'UVA', 'Håndheving i h t skilting på stedet.
I forbudssoner maks 10 minutter uten aktivitet.
Beboere kan ikke parkere i gjestegarasje. Sjekkes mot Autosys.
Alle gjester i garasjene skal være elektronisk innlogget.
Kontroll 00-24 alle dager.

Midlertidig ordning 01.01.16 - 01.05.16. Ingen kontroll i parkeringsgarasjer.', NULL, '760', 'SA', '7020', 0, '', NULL, '', 0);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3866, 24, 142, 'Strømsveien 266', 1, 'UVA', 'Kundeparkering logges i 2 timer. Deretter ilegges kontrollavgift.

Plasser skiltet for bilforretningen er rek.

På kundeparkeringen er det tillatt for leietakere med gyldig parkeringsbevis.

Det er ikke tillatt for kunder å forlate eiendommen mens bilen står parkerit.', NULL, '760', NULL, '', 0, '', NULL, '1', NULL);
INSERT INTO dbo.kp_location (LOCTIDNO, CLNTIDNO, CLNTLOCTIDNO, CLNTLOCTNAME, CLNTLOCTSQNO, CLNTLOCTCATGCODE, CLNTLOCTDSCR, GOGLENCDAREA, CLNTVLTNGROPCODE, EXTNSYSTIDFC, EXTNLOCTIDFC, RPLCTCKTINUS, INTNCLNTLOCTDSCR, REGNIDNO, EXTNETTYIDFC, LOCTSTATNMBR)
VALUES (3867, 24, 340, 'Tveita BRL - Tveita Senter.', 1, 'UVA', '3 timers gratis parkering for senterets kunder i åpningstiden uavhengig av om kjøretøyet er flyttet i mellomtiden. Kun 1 parkering pr 24 timer.

Plasser reservert Vassenga FUS barnehage: mandag-fredag 06.30 - 17.30. 3 timers gratis parkering for senterets kunder utenom angitt tid.',
              NULL, '760', NULL, '', 0, '', NULL, '1', NULL);
SET IDENTITY_INSERT kp_location OFF;

-- kp_role_authorisation --
CREATE TABLE dbo.kp_role_authorisation (
    AUTHIDNO     INT IDENTITY (1, 1) NOT NULL,
    ROLEIDNO     INT                 NOT NULL,
    CLNTIDNO     INT                 NULL,
    OBJCCODE     VARCHAR(10)         NOT NULL,
    ADDDITRU     TINYINT             NOT NULL,
    EDITITRU     TINYINT             NOT NULL,
    DELTITRU     TINYINT             NOT NULL,
    ADITPARM     VARCHAR(25)         NULL,
    ACCSLEVLNMBR TINYINT             NULL
);

SET IDENTITY_INSERT kp_role_authorisation ON;
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (268, 7, NULL, 'LOCTNTFC', 1, 1, 1, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (269, 7, NULL, 'VHCLNTFC', 1, 1, 1, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (270, 18, NULL, 'REGN', 1, 1, 1, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (271, 19, NULL, 'VHCLNTFC', 1, 1, 1, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (272, 20, NULL, 'LOCTNTFC', 1, 1, 1, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (273, 21, NULL, 'TCKT', 1, 1, 1, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (274, 22, NULL, 'SBSC', 1, 1, 1, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (275, 23, NULL, 'INVC', 1, 1, 1, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (276, 24, NULL, 'OCRR', 1, 1, 1, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (277, 7, NULL, 'DASHACCT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (278, 17, NULL, 'DASHACCT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (279, 7, NULL, 'DASHUSER', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (280, 17, NULL, 'DASHUSER', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (281, 7, NULL, 'DASHINFO', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (282, 17, NULL, 'DASHINFO', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (283, 12, NULL, 'DASHACCT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (284, 12, NULL, 'DASHUSER', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (285, 12, NULL, 'DASHINFO', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (286, 25, NULL, 'TCKT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (287, 7, NULL, 'RPRT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (288, 9, NULL, 'RPRT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (289, 16, NULL, 'RPRT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (290, 17, NULL, 'RPRT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (291, 17, NULL, 'LOCTLIST', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (292, 7, NULL, 'DASHMESS', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (293, 26, NULL, 'RPRT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (294, 27, NULL, 'USER', 1, 1, 1, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (295, 28, NULL, 'LOCT', 1, 1, 1, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (296, 29, NULL, 'GPUSER', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (297, 30, NULL, 'GPUSER', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (298, 30, NULL, 'GPDVCE', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (299, 31, NULL, 'GPSRCH', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (300, 30, NULL, 'GPSTATTEXT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (301, 30, NULL, 'GPTEXT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (302, 30, NULL, 'GPTEXT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (303, 30, NULL, 'GPRULE', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (304, 32, NULL, 'CUST', 1, 1, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (305, 33, NULL, 'DASHSRCH', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (306, 34, NULL, 'DVCE', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (307, 35, NULL, 'UserMaint', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (308, 36, NULL, 'TEXT', 1, 0, 0, '', 0);
INSERT INTO dbo.kp_role_authorisation (AUTHIDNO, ROLEIDNO, CLNTIDNO, OBJCCODE, ADDDITRU, EDITITRU, DELTITRU, ADITPARM, ACCSLEVLNMBR)
VALUES (309, 28, NULL, 'LOCTLIST', 1, 1, 1, '', 0);
SET IDENTITY_INSERT kp_role_authorisation OFF;

-- kp_role_to_user --
CREATE TABLE dbo.kp_role_to_user (
    ROUSIDNO INT IDENTITY (1, 1) NOT NULL,
    ROLEIDNO INT                 NOT NULL,
    USERIDNO INT                 NOT NULL,
    ADITPARM VARCHAR(25)         NULL,
    CLNTIDNO INT                 NULL
);

INSERT INTO dbo.kp_role_to_user (ROLEIDNO, USERIDNO, CLNTIDNO)
VALUES (27, 401, 24);
INSERT INTO dbo.kp_role_to_user (ROLEIDNO, USERIDNO, CLNTIDNO)
VALUES (7, 401, 24);

-- kp_user --
CREATE TABLE dbo.kp_user (
    USERIDNO         INT IDENTITY (1, 1) NOT NULL,
    USERPSWD         VARCHAR(256)        NOT NULL,
    USERSIONIDFC     VARCHAR(128)        NOT NULL,
    USERNAME         VARCHAR(35)         NOT NULL,
    USERSTATNMBR     TINYINT             NOT NULL,
    USERTYPENMBR     TINYINT             NOT NULL,
    MAINCLNTIDNO     INT                 NOT NULL,
    EXTNUSERSIONIDFC VARCHAR(20)         NOT NULL,
    EMALADDR         VARCHAR(70)         NULL,
    PSWDTOKN         VARCHAR(30)         NULL,
    USERADDR         VARCHAR(70)         NULL,
    USERPOOFNMBR     VARCHAR(12)         NULL,
    USERPOOFNAME     VARCHAR(25)         NULL,
    USERPHONNMBR     VARCHAR(25)         NULL,
    DATEPTRN         VARCHAR(15)         NULL,
    LASTSEENTMST     DATETIME            NULL,
    REGNIDNO         INT                 NULL,
    PRNTUSERIDNO     NUMERIC(19, 0)      NULL,
    PSWDCHNGTYPENMBR INT                 NULL,
    RSETPSWDITRU     TINYINT             NULL
);

SET IDENTITY_INSERT kp_user ON;
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (401, '8cb2237d0679ca88db6464eac60da96345513964', 'test', 'Øystein ', 0, 0, 24, 'pt999', 'oystein.loken@fabritus.no', NULL, NULL, NULL,
     NULL, '90885553', 'dd.MM.yyyy', '20160128 10:34:49.720', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (664, '8cb2237d0679ca88db6464eac60da96345513964', 'monika.eidshaug@arvato.com', 'Eidshaug, Monika', 0, 1, 24, 'mon',
             'monika.eidshaug@arvato.com', NULL, NULL, NULL, NULL, 'XXXXXXX', 'dd.MM.yyyy', '20160118 09:47:30.060', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (686, '8cb2237d0679ca88db6464eac60da96345513964', 'resepsjon.oslo@kwintet.com', 'Wennas', 0, 15, 24, 'w1', 'resepsjon.oslo@kwintet.com',
          NULL, NULL, NULL, NULL, '71227309', 'dd.MM.yyyy', '20150330 10:18:58.347', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (690, '8cb2237d0679ca88db6464eac60da96345513964', 'gjertrud@sisainvest.no', 'Gjertrud', 0, 15, 24, 'sisa1', 'gjertrud@sisainvest.no',
             NULL, NULL, NULL, NULL, 'xxxxxxx', 'yyyy.MM.dd', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (691, 'c24d0a1968e339c3786751ab16411c2c24ce8a2e', 'helge.velure@skatteetaten.no', 'Helge Velure', 0, 15, 24, 'skatt1',
             'helge.velure@skatteetaten.no', '', NULL, NULL, NULL, '97188813', 'dd.MM.yyyy', '20150619 13:01:25.940', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (692, '8cb2237d0679ca88db6464eac60da96345513964', 'mona.kristensen@adecco.no', 'Mona Kristensen', 0, 15, 24, 'adecco1',
             'mona.kristensen@adecco.no', NULL, NULL, NULL, NULL, '45510339', 'dd.MM.yyyy', '20151221 12:30:23.137', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (693, '8cb2237d0679ca88db6464eac60da96345513964', 'ingunn.engh@sparebank1.no', 'Ingunn Engh', 0, 15, 24, 'spare1',
             'ingunn.engh@sparebank1.no', NULL, NULL, NULL, NULL, '32035808', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (694, '8cb2237d0679ca88db6464eac60da96345513964', 'post@jessheim-oyelege.nhn.no', 'Jørn Beckrøge', 0, 15, 24, 'oyelege1',
             'post@jessheim-oyelege.nhn.no', NULL, NULL, NULL, NULL, '63979440', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (695, '8cb2237d0679ca88db6464eac60da96345513964', 'oll-pta', 'Øystein', 0, 15, 24, 'pta999', 'oystein.loken@fabritus.no', NULL, NULL,
        NULL, NULL, '90885553', 'dd.MM.yyyy', '20151112 09:08:52.500', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (757, '3fff8c306ae661658be8087491468d5d5ac6ecf0', 'singhp', 'Singh', 0, 0, 24, 'pt47', 'singh@parkeringstjenesten.no', NULL, NULL, NULL,
     NULL, '99115592', 'dd.MM.yyyy', '20160121 18:43:32.137', NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (758, '8655b94cc3c1ec3080bcdbbb9bda4df37f3f82f0', 'tg', 'Tom B Gundersen', 0, 0, 24, 'pt77', 'tom@parkeringstjenesten.no', NULL, NULL,
     NULL, NULL, '41594926', 'dd.MM.yyyy', '20160128 23:40:04.090', NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (759, 'a4ac914c09d7c097fe1f4f96b897e625b6922069', 'Singh Betjent', 'Gurprit Singh', 0, 2, 24, '2000', 'Singh@parkeringstjenesten.no',
             NULL, NULL, NULL, NULL, '99115592', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (760, '6934105ad50010b814c933314b1da6841431bc8b', 'Lorenzo Betjent', 'Lorenzo N', 0, 2, 24, '2002', 'Singh@parkeringstjenesten.no',
             NULL, NULL, NULL, NULL, '45901041', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (761, '6934105ad50010b814c933314b1da6841431bc8b', 'Christopher Betjent', 'Christopher Johansen', 5, 2, 24, '2003',
             'Singh@parkeringstjenesten.no', NULL, NULL, NULL, NULL, '97583996', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (762, '6934105ad50010b814c933314b1da6841431bc8b', 'Bilal Betjent', 'Bilal Tahir', 5, 2, 24, '2004', 'Singh@parkeringstjenesten.no',
             NULL, NULL, NULL, NULL, '46958690', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (763, '6934105ad50010b814c933314b1da6841431bc8b', 'Adrian Betjent', 'Adrian Dinu', 0, 2, 24, '2001', 'Singh@parkeringstjenesten.no',
             NULL, NULL, NULL, NULL, '45901021', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (770, '2fb9e73359504ce0acf7c202f9f4ffac12a61538', 'vestlibakken', 'Rune Braathen ', 0, 15, 24, 'run1', 'rune@vestlibakken.no', NULL,
             NULL, NULL, NULL, '90170588', 'dd.MM.yyyy', '20151006 12:41:30.957', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (772, '64a4ee3436ab0cd4ae71006a5c428549a52d862d', 'b80', 'Superbruker Brobekk', 0, 15, 24, 'b1', 'oystein.loken@fabritius.no', NULL,
             NULL, NULL, NULL, 'xxxxxxxx', 'dd.MM.yyyy', '20150107 19:44:55.800', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (773, '8cb2237d0679ca88db6464eac60da96345513964', 'vidar@panzerprint.no  ', 'Vidar Bergersen', 9, 15, 24, 'b2', 'vidar@panzerprint.no',
          NULL, NULL, NULL, NULL, '91710827', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (774, '4886ff78a0631ce768721f1fdc7b1ed7ce4feb29', 'vidar@panzerprint.no', 'Vidar Bergesen', 0, 15, 24, 'b3', 'vidar@panzerprint.no',
             NULL, NULL, NULL, NULL, '91710827', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (775, '25816cdf3430ec1ab2f5293195afc8ea5cfb2c9b', 'info.alna.oslo@radissonblu.com', 'Park Inn', 0, 15, 24, 'pn1',
             'info.alna.oslo@radissonblu.com', '2U3MJ6DR2015.08.07 20:01', NULL, NULL, NULL, '23287761', 'dd.MM.yyyy', NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (777, '9ab402a727c4fdd9a6bc912d1f1b8ddab3f9166d', 'najam-pt', 'Najam Janjua', 0, 0, 24, 'naj1', 'klage@parkeringstjenesten.no', NULL,
             NULL, NULL, NULL, '45797299', 'dd.MM.yyyy', '20150729 11:35:26.407', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (779, 'f21b80aad7e042887fdd657a30c37a8a5acdca72', 'aage@coloro.no', 'Aage Myrvold', 0, 15, 24, 'aa1', 'aage@coloro.no', NULL, NULL,
        NULL, NULL, '93092805', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (780, '8cb2237d0679ca88db6464eac60da96345513964', 'post@rosim.no', 'Oliver Dimovski', 0, 15, 24, 'ro1', 'post@rosim.no', NULL, NULL,
        NULL, NULL, '47926800', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (781, '7fe3413a23dc42d51b25df2b56db634d4dc4db37', 'rune@acokjemi.no', 'Rune Lundberg', 7, 15, 24, 'ru1', 'rune@acokjemi.no',
             'ILGVW2GM2015.04.04 23:54', NULL, NULL, NULL, '93045709', 'yyyy.MM.dd', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (782, '3c59c3a9e7db0486b925c6dfd2032da6c84ed3a7', 'marlen.yssen@kuehne-nagel.com', 'Marlén Yssen', 0, 15, 24, 'ma1',
             'marlen.yssen@kuehne-nagel.com', NULL, NULL, NULL, NULL, '47302902', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (783, '039aed666b53b2af624e4258bebdbe40e0d663dd', 'kj@byggimpuls.com', 'Morten Ulvedalen', 0, 15, 24, 'mu1', 'kj@byggimpuls.com',
             '6QGQVVGZ2015.05.13 12:49', NULL, NULL, NULL, '92614732', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (784, 'e3d709d7eabfc6b4989db1891384235fe20cb42a', 'stein.gjovik@ahlsell.no', 'Stein Atle Gjøvik            ', 0, 15, 24, 'st1',
             'stein.gjovik@ahlsell.no', NULL, NULL, NULL, NULL, '45014705', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (785, 'd1083a0c2887ed6d87db58c37c6a8b249cf398b1', 'lei.xu@elektrikerne.no', 'LEI XU', 0, 15, 24, 'le1', ' lei.xu@elektrikerne.no', NULL,
          NULL, NULL, NULL, '93438456', 'yyyy.MM.dd', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (786, '36acc95454c51c42c8583e9955966780e75c33f8', 'sl@abkklima.no', 'Svein A. Larsen', 0, 15, 24, 'sl2', 'sl@abkklima.no', NULL, NULL,
     NULL, NULL, '90062608', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (787, '24cf8437305f6dac60644b965400885d17bdd0fc', 'geir.mollhaug@malorama.no', 'Geir Møllhaug', 0, 15, 24, 'ge1',
             'geir.mollhaug@malorama.no', NULL, NULL, NULL, NULL, '91785707', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (788, '949655aff031d399c0458eca4e17b8761790b2da', 'jornb@cds.no', 'Jørn Bråten', 0, 15, 24, 'jo1', 'jornb@cds.no', NULL, NULL, NULL,
        NULL, '97787631', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (789, 'bd8d9fcaa0d2b407e211119f82fc0a3e4c54d3b5', 'tb@sprinklerteknikk.no', 'Torbjørn Berntsen', 0, 15, 24, 'tb1',
             'tb@sprinklerteknikk.no', NULL, NULL, NULL, NULL, '92883818', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (790, 'ff030cfc68ce6ecf5ba6d2747647686de64c2b39', 'jan.kvilhaug@oslokjoleteknikk.no', 'Jan Kvilhaug', 0, 15, 24, 'ja1',
             'jan.kvilhaug@oslokjoleteknikk.no', NULL, NULL, NULL, NULL, '91743932', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (805, 'c9a085655240e1eec5d4fd8239542e8efd3472eb', 'pI@berendsen.no', 'Petter Ingebretsen', 0, 15, 24, 'pl1', 'pI@berendsen.no', NULL,
             NULL, NULL, NULL, '93244720', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (806, '0d64f780800e988fdaca9543d2c953bb81c0f0d7', 'post@attend.no', 'Frode Trøan', 0, 15, 24, 'po3', 'post@attend.no', NULL, NULL, NULL,
     NULL, '97700300', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (807, '77f33355907aab22d423456bc1568b6331f33364', 'christian@ummf.no', 'Christian Andreassen', 0, 15, 24, 'ch1', 'christian@ummf.no',
             NULL, NULL, NULL, NULL, '93040981', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (808, '457adddd5270cfc6a343a956e6224f67bf304adf', 'emil.werring@luxaflex.no', 'Emil Werring  ', 0, 15, 24, 'em1',
             'emil.werring@luxaflex.no', NULL, NULL, NULL, NULL, '23173323', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (809, '3b6cf88253ef6e0dca0430f029cca4234435df54', 'birgit.hansen@greencarrier.no', 'Birgit Elin Hansen', 0, 15, 24, 'bi1',
             'birgit.hansen@greencarrier.no', NULL, NULL, NULL, NULL, '92208939', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (810, 'd18796226dcb7576e0674a97f98c9713e6dc9e59', 'info@sortera.no', 'Madeleine Hovind', 0, 15, 24, 'in5', 'info@sortera.no', NULL,
             NULL, NULL, NULL, '92093163', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (811, '3d56187f295afe87b937e1d777694ba9407b5ecf', 'tim.figved@krausnaimer.com', 'Tim Figved', 0, 15, 24, 'ti1',
             'tim.figved@krausnaimer.com', NULL, NULL, NULL, NULL, '97198070', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (812, '09bc6225035d223a4110e74b157bdb4137ac0302', 'anne.ringdal@netcontrol.com', 'Anne Ringdal ', 0, 15, 24, 'an1',
             'anne.ringdal@netcontrol.com', NULL, NULL, NULL, NULL, '92886912', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (813, 'a20f01a742a1c4e4a9a79543bcd5388bd2244696', 'admin@inva.no', 'Kari Kolbjørnsdatter Brenda', 0, 15, 24, 'ad5', 'admin@inva.no',
             NULL, NULL, NULL, NULL, '41121604', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (814, '19dba4af812becc51f382ee24fa9c56af52581ed', 'steinar@abcclausen.no ', 'Steinar Chi Thoresen  ', 0, 15, 24, 'st2',
             'steinar@abcclausen.no', NULL, NULL, NULL, NULL, '22982626', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (815, '348162101fc6f7e624681b7400b085eeac6df7bd', 'kantine@fabritius.no', 'Tone Westby Myhren', 0, 15, 24, 'ka1',
             'kantine@fabritius.no', NULL, NULL, NULL, NULL, '22654465', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (816, '1ac8d59663a66ef17a2b2747552185df6b9e8785', 'ingunn@entreprenor-1.no', 'Ingunn Flåseth', 0, 15, 24, 'in1',
             'ingunn@entreprenor-1.no', NULL, NULL, NULL, NULL, '22641170', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (817, '4c6f4cc3282a9d24eceda940e39d7fb0a708811f', 'ramesh.sivakolunthu@storcash.no', 'Ramesh Sivakolunthu', 0, 15, 24, 'ra1',
             'ramesh.sivakolunthu@storcash.no', NULL, NULL, NULL, NULL, '90564401', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (818, '5f6bc998e508b6750300c3916387f6ed9403815f', 'lill.anita.halvorsen@imtech.no', 'Lill Anita Halvorsen', 0, 15, 24, 'lil1',
             'lill.anita.halvorsen@imtech.no', NULL, NULL, NULL, NULL, '91687405', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (820, '66ab9a5babb3167fdf0828b4882ed194e9dc6156', 'ankby@vestas.com', 'Anne Kjernsby', 0, 15, 24, 'ank1', 'ankby@vestas.com', NULL,
             NULL, NULL, NULL, '99012810', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (821, '0f8eabfc55ec13950d6abb0e03e8f539eb8d0629', 'bente@juuls.no', 'Bente Ask', 0, 15, 24, 'ben1', 'bente@juuls.no', NULL, NULL, NULL,
     NULL, '22720800', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (822, 'c80b7d87ef07574e27f33e80294f2ee7225c5aff', 'ann-kristin.waaler@ahlsell.no', 'Ann-Kristin Løiten Waaler', 7, 15, 24, 'ann3',
             'ann-kristin.waaler@ahlsell.no', 'DWOT3JHD2015.11.13 15:50', NULL, NULL, NULL, '45255506', 'yyyy.MM.dd', NULL, NULL, NULL,
        NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (823, '348162101fc6f7e624681b7400b085eeac6df7bd', 'anne.halvorsen@saint-gobain.com', 'Annie Halvorsen', 0, 15, 24, 'anne3',
             'anne.halvorsen@saint-gobain.com', NULL, NULL, NULL, NULL, '95296300', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (824, '7ab515d12bd2cf431745511ac4ee13fed15ab578', 'ole@conmec.no', 'Ole Trudvang', 0, 15, 24, 'ole1', 'ole@conmec.no', NULL, NULL, NULL,
     NULL, '96918002', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (825, '8fd347b79966d500cb0e424ac660cb40ee7793a9', 'espen@prokonmat.no', 'Knut Espen Hoel', 0, 15, 24, 'esp1', 'espen@prokonmat.no',
             NULL, NULL, NULL, NULL, '95723181', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (826, '8cb2237d0679ca88db6464eac60da96345513964', 'rmont@online.no', 'Marius Vogt', 0, 15, 24, 'rmo1', 'rmont@online.no', NULL, NULL,
        NULL, NULL, '97034002', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (827, 'b0bc29699aa42ae9bcbcb92b68bc3bc1f7c3e8ff', 'christian@ca-tech.no', 'Christian Antal', 0, 15, 24, 'ch2', 'christian@ca-tech.no',
          NULL, NULL, NULL, NULL, '93204418', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (828, '6bef71e074b618551705dd857682de7d44dbe2ed', 'thomas.hansen@ergofast.no', 'Thomas Hansen', 0, 15, 24, 'tho1',
             'thomas.hansen@ergofast.no', NULL, NULL, NULL, NULL, '94790305', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (829, '526e63e2d609893cde3bb25a4045e23df2657702', 'tone@oslovvs.no', 'Tone Jensen', 0, 15, 24, 'ton2', 'tone@oslovvs.no', NULL, NULL,
        NULL, NULL, '47489994', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (830, 'e2572d00ce9f441cc1b85d3dfc5709079b8add94', 'post@otg-as.no', 'Thomas Nataas', 0, 15, 24, 'post10', 'post@otg-as.no', NULL, NULL,
     NULL, NULL, '94795854', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (831, '8cb2237d0679ca88db6464eac60da96345513964', 'tao@itel.no', 'Thor Arne Olsen', 0, 15, 24, 'tao1', 'tao@itel.no', NULL, NULL, NULL,
     NULL, '40855001', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (832, '49be44acf87ba23cfc9f562ee164a463d3a58575', 'eirik@geoplan3d.no', 'Eirik Ruden', 0, 15, 24, 'erik1', 'eirik@geoplan3d.no', NULL,
          NULL, NULL, NULL, '45016326', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (833, '24532b82a3d95a5bfcce4de235117fa987365e14', 'olav.myre@ascom.no', 'Olav Myre', 0, 15, 24, 'olav1', 'olav.myre@ascom.no', NULL,
             NULL, NULL, NULL, '98268716', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (834, '9ec2621bb952ab212238ced42dcfb982244bde16', 'AnnBerit.Soma@VPGSensors.com', 'Ann-Berit Soma', 0, 15, 24, 'annb1',
             'AnnBerit.Soma@VPGSensors.com', NULL, NULL, NULL, NULL, '22884091', 'yyyy.MM.dd', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (841, '6934105ad50010b814c933314b1da6841431bc8b', '2005', 'Jaspinder Singh betjent', 0, 2, 24, '2005', 'singh@parkeringstjenesten.no',
          NULL, NULL, NULL, NULL, '99115592', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (842, '6934105ad50010b814c933314b1da6841431bc8b', '2006', 'Stavanger Kilden Betjent', 0, 2, 24, '2006', 'asbjorn@kilden.no', NULL, NULL,
     NULL, NULL, '45960120', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (846, '94777d5e6ae7f423ea85d4d459f237d22355dca2', 'astrid.schau@trioving.no', 'Astrid Schau', 0, 15, 24, 'ast1',
             'astrid.schau@trioving.no', NULL, NULL, NULL, NULL, '94018369', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (847, '2bd562a12b24feca54d7d18a187a77afd32dc2a8', 'tkw@hhansen.no', 'Torill Wollebekk', 0, 15, 24, 'tkw', 'tkw@hhansen.no', NULL, NULL,
     NULL, NULL, '90820272', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (848, '220d647ee3942268a8f43ef53512578806fc1040', 'ali@envirobox.no', 'Ali Yassin ', 0, 15, 24, 'al7', 'ali@envirobox.no',
             '3CX4VH5I2015.05.25 10:39', NULL, NULL, NULL, '41002200', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (849, '3c7b1b5ff2052d6e34eb1cec4f765336f3be1c0b', 'henning@lassikring.no', 'Henning Olsen', 0, 15, 24, 'hen6', 'henning@lassikring.no',
          NULL, NULL, NULL, NULL, '90797825', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (851, '1d66af65c560e895e7d61a2d5f85959e6ea4e6c0', 'post@slauritzen.no', 'Geir Lauritzen', 0, 15, 24, 'post4', 'post@slauritzen.no',
             NULL, NULL, NULL, NULL, '22652026', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (852, '76bddb8936b860ae6e4f6a66a32bb5568477011d', 'nina@fagprofil.no', 'Nina Sandberg', 0, 15, 24, 'nina1', 'nina@fagprofil.no', NULL,
          NULL, NULL, NULL, '24 13 13 63', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (854, '42caac2285884a76181d79b28a5a0d378876198a', 'post@dognvakta.com', 'Asif Nazir', 0, 15, 24, 'postd', 'post@dognvakta.com', NULL,
             NULL, NULL, NULL, '91912085', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (855, 'd6a15966655d856064ecd255670718e7ebc20ae5', 'post@ladysdesign.no', 'Ismihan (Esma) Dikmen', 0, 15, 24, 'esma',
             'post@ladysdesign.no', NULL, NULL, NULL, NULL, '930 57 112', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (856, '55b673f8835e4020a43f55b777f9a76e567467a6', 'tom@tb-elektro.no', 'Tom Bragmo', 0, 15, 24, 'tom99', 'tom@tb-elektro.no', NULL,
             NULL, NULL, NULL, '98 29 59 91', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (857, '7c4a8d09ca3762af61e59520943dc26494f8941b', 'granberg', 'Ermin', 0, 15, 24, 'ermin09', 'ermin.gb@juvelshop.de', NULL, NULL, NULL,
     NULL, 'na', 'dd.MM.yyyy', NULL, NULL, NULL, 1, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (858, '8cb2237d0679ca88db6464eac60da96345513964', 'granbergadm', 'Ermin Adm', 0, 15, 24, 'ermin23', 'ermin.gb@juvelshop.de', NULL, NULL,
     NULL, NULL, 'na', 'dd.MM.yyyy', '20150315 19:54:26.227', NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (860, '28f160d868d73ae03d49294aba0dc44f160fa5a9', 'epostavm@gmail.com', 'Henning Tollefsen', 0, 15, 24, 'epost30', 'epostavm@gmail.com',
          'S1WQWQOL2015.12.23 08:42', NULL, NULL, NULL, 'epostavm@gmail.com', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (862, '4170ac2a2782a1516fe9e13d7322ae482c1bd594', 'sjurt', 'sjur', 0, 2, 24, '9999', 'xxx@xxx.no', NULL, NULL, NULL, NULL, 'xxxxxxx',
        'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (863, '9ff2f2b1da972dcef2961a620e18ae20bde22313', 'post@juulvvs.no', 'Tommy Juul', 0, 15, 24, 'post49', 'post@juulvvs.no', NULL, NULL,
     NULL, NULL, '90081527', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (864, '6ad327814fe5022e9e6a80e55cdcf4709ac8f9ff', 'hilde.westbye@emballeringsprodukter.no', 'Hilde Westbye', 0, 15, 24, 'hil1',
             'hilde.westbye@emballeringsprodukter.no', NULL, NULL, NULL, NULL, '22 25 80 50', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (868, '8cb2237d0679ca88db6464eac60da96345513964', 'pta-lene', 'Lene Johansen', 0, 0, 24, 'pta-lene', 'lene@fokus-regnskap.no', NULL,
             NULL, NULL, NULL, 'na', 'd/M-yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (869, '8cb2237d0679ca88db6464eac60da96345513964', 'mette.herstad@hyundai.no ', 'Mette Herstad ', 0, 15, 24, 'met2',
             'mette.herstad@hyundai.no', NULL, NULL, NULL, NULL, '90953141', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (884, '8cb2237d0679ca88db6464eac60da96345513964', 'lokkalia', 'Tom Schjerven', 0, 15, 24, 'tom69', 'Tom.Schjerven@norskteknologi.no',
             NULL, NULL, NULL, NULL, 'xxxxxxxx', 'dd.MM.yyyy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (885, '8cb2237d0679ca88db6464eac60da96345513964', 'singhtest', 'singhtest', 0, 15, 24, '00000', 'singh@parkeringstjenesten.no', NULL,
             NULL, NULL, NULL, '99115592', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (896, '8cb2237d0679ca88db6464eac60da96345513964', 'kunst', 'Kunsthøgskolen', 0, 15, 24, 'kunst1', 'Elisabeth.berger@brjensen.no', NULL,
          NULL, NULL, NULL, '67830830', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (897, '8cb2237d0679ca88db6464eac60da96345513964', 'tress', 'Tress Eiendomsinvest DA', 0, 15, 24, 'tress1',
             'Elisabeth.berger@brjensen.no', NULL, NULL, NULL, NULL, '67830830', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (908, '776f707e19f39e6b830856a6cdf3aa605a5a283e', 'tveitany', 'Tveita Boretslag', 0, 15, 24, 'tvei99', 'post@parkeringstjenesten.no',
             NULL, NULL, NULL, NULL, 'xxxxxxxxxx', 'yyyy.MM.dd', '20160128 10:07:14.150', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (913, '8cb2237d0679ca88db6464eac60da96345513964', 'andreas.rose@arvato.com', 'Andreas Rose', 0, 1, 24, 'and79',
             'andreas.rose@arvato.com', NULL, NULL, NULL, NULL, 'na', 'dd.MM.yyyy', '20150312 08:01:48.233', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (924, '8cb2237d0679ca88db6464eac60da96345513964', 'post@fagprofil.no', 'Fagprofil', 0, 15, 24, 'fag1', 'post@fagprofil.no', NULL, NULL,
     NULL, NULL, 'na', 'yyyy.MM.dd', '20150618 20:12:56.417', NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (937, '6934105ad50010b814c933314b1da6841431bc8b', 'Østlanskeparkering', 'Østlanskeparkering', 0, 2, 24, '3000',
             'singh@parkeringstjenesten.no', NULL, NULL, NULL, NULL, '46958690', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (1032, '8cb2237d0679ca88db6464eac60da96345513964', 'ensjoveien17', 'Ensjøveien 17', 0, 15, 24, 'ensho', 'ensjo@ostlandksk', NULL, NULL,
     NULL, NULL, 'na', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (1052, '8cb2237d0679ca88db6464eac60da96345513964', 'oll-pttx', 'Oystein L L', 0, 15, 24, 'oll-pt', 'post@kundeparkering.no', NULL, NULL,
     NULL, NULL, 'na', 'dd.MM.yyyy', '20150623 09:41:19.850', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (1058, '8cb2237d0679ca88db6464eac60da96345513964', 'skanlog', 'Jan Torp', 0, 15, 24, 'skan7', 'jan.torp@skanlog.com', NULL, NULL, NULL,
     NULL, '93064416', 'dd.MM.yyyy', '20160125 11:35:51.663', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (1059, '8cb2237d0679ca88db6464eac60da96345513964', 'gkel', 'Camilla Gaare', 0, 15, 24, 'gk99', 'camilla.gaare@gk.no', NULL, NULL, NULL,
     NULL, '95192270', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (1071, '5b5f2b49af21b1ca2b4aacaf9ff48497b9ffc42a', 'tommy@vestlibakken.no', 'Tommy Sturtzel', 0, 15, 24, 'styr',
              'tommy@vestlibakken.no', NULL, NULL, NULL, NULL, '95089655', 'yyyy.MM.dd', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (1078, '000b37641719413d1d5fb74f431afaa5581b02a1', 'tran@responsivmedia.no', 'Thanh Tran', 0, 15, 24, 'tan', 'tran@responsivmedia.no',
           NULL, NULL, NULL, NULL, 'na', 'yyyy.MM.dd', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (1079, '8929099475bd44e587b4f04eaf5618b3d7543395', 'rg@palmgren.as', 'Rune Gruer', 0, 15, 24, 'rung', 'rg@palmgren.as', NULL, NULL,
        NULL, NULL, 'na', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (1080, '9491d36e764e23975d0fbabc109158ab23ea2c03', 'mw@scanomat.no', 'Mohamed Wahab', 0, 15, 24, 'mw', 'mw@scanomat.no', NULL, NULL,
        NULL, NULL, 'na', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES
    (1081, '938021d9c2c38e4a55c48336f9e78184c1376d11', 'th@hauge-elektro.no', 'Terje Hauge', 0, 15, 24, 'thel', 'th@hauge-elektro.no', NULL,
           NULL, NULL, NULL, 'na', 'yyyy.MM.dd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (1092, '59f294e145271b711bdcd3c9575f3de2626bf5cc', 'perolav@oisas.no', 'Per Olav Nilsen ', 0, 15, 24, 'perolav', 'perolav@oisas.no',
              '3R661OC02015.09.10 09:04', NULL, NULL, NULL, '93212464', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (1158, 'de8931bca2a16e43e4df03f33d2f125655140151', 'a.m.groennestad@hultaforsgroup.no', 'Anne Marie Grønnestad', 0, 15, 24, 'a.m',
              'a.m.groennestad@hultaforsgroup.no', 'W9CD78MF2016.01.22 09:05', NULL, NULL, NULL, 'na', 'dd.MM.yyyy', NULL, NULL, NULL, 0,
        NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (1159, 'f3f81ca155055ba60433496c3ed67fc172eef6d3', 'ivan@javapersonal.no', 'Ivan Gammelseter', 0, 15, 24, 'ivan1',
              'ivan@javapersonal.no', NULL, NULL, NULL, NULL, 'na', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (1160, '88312d7d1ec93ad93ff29eb7e9c3813b5f52dad9', 'staale.syversen@sro.as', 'Ståle Syversen', 0, 15, 24, 'sta1',
              'staale.syversen@sro.as', 'AW7SOK9D2015.12.15 14:35', NULL, NULL, NULL, 'NA', 'dd.MM.yyyy', NULL, NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (1176, '8cb2237d0679ca88db6464eac60da96345513964', 'najamPT', 'Najam Janjua', 9, 0, 24, 'Naj2', 'Klage@parkeringstjenesten.no', NULL,
              NULL, NULL, NULL, '45797299', 'yyyy.MM.dd', '20151203 23:08:25.417', NULL, NULL, 0, NULL);
INSERT INTO dbo.kp_user (USERIDNO, USERPSWD, USERSIONIDFC, USERNAME, USERSTATNMBR, USERTYPENMBR, MAINCLNTIDNO, EXTNUSERSIONIDFC, EMALADDR, PSWDTOKN, USERADDR, USERPOOFNMBR, USERPOOFNAME, USERPHONNMBR, DATEPTRN, LASTSEENTMST, REGNIDNO, PRNTUSERIDNO, PSWDCHNGTYPENMBR, RSETPSWDITRU)
VALUES (1210, '8cb2237d0679ca88db6464eac60da96345513964', 'salgoslo@serit-oa.no', 'Øyvind Bekkjorden ', 0, 15, 24, 'sa1',
              'salgoslo@serit-oa.no', NULL, NULL, NULL, NULL, 'na', 'yyyy.MM.dd', NULL, NULL, NULL, 0, NULL);
SET IDENTITY_INSERT kp_user OFF;
-- kp_user_customer --
CREATE TABLE dbo.kp_user_customer (
    USERCUSTIDNO INT IDENTITY (1, 1) NOT NULL,
    CUSTIDNO     INT                 NOT NULL,
    USERIDNO     INT                 NOT NULL
);

-- kp_user_locations --
CREATE TABLE dbo.kp_user_locations (
    USERLOCTLISTIDNO INT IDENTITY (1, 1) NOT NULL,
    CLNTLOCTIDNO     SMALLINT            NOT NULL,
    CLNTIDNO         INT                 NOT NULL,
    USERIDNO         INT                 NOT NULL
);

-- kp_user_login_log --
CREATE TABLE dbo.kp_user_login_log (
    ULLLIDNO BIGINT IDENTITY (1, 1) NOT NULL,
    USERIDNO INT                    NOT NULL,
    CLNTIDNO INT                    NOT NULL,
    DRCTNMBR TINYINT                NOT NULL,
    ULLLTMST DATETIME               NOT NULL,
    IMEINMBR VARCHAR(35)            NULL,
    DVCETMST DATETIME               NULL,
    ULLLCMNT VARCHAR(200)           NULL,
    LONTPSTN DECIMAL(20, 17)        NULL,
    LATTPSTN DECIMAL(20, 17)        NULL,
    RMTEADDR VARCHAR(35)            NULL,
    CHNLNMBR TINYINT                NOT NULL
);

ALTER TABLE kp_client
    ADD CONSTRAINT pkp_client PRIMARY KEY (CLNTIDNO);
ALTER TABLE kp_location
    ADD CONSTRAINT pkp_location PRIMARY KEY (LOCTIDNO);
ALTER TABLE kp_user
    ADD CONSTRAINT pkp_user PRIMARY KEY (USERIDNO);
ALTER TABLE kp_customer
    ADD CONSTRAINT pkp_customer PRIMARY KEY (CUSTIDNO);
ALTER TABLE kp_role_authorisation
    ADD CONSTRAINT pkp_role_authorisation PRIMARY KEY (AUTHIDNO);
ALTER TABLE kp_role_to_user
    ADD CONSTRAINT pkp_role_to_user PRIMARY KEY (ROUSIDNO);
ALTER TABLE kp_user_customer
    ADD CONSTRAINT pkp_user_customer PRIMARY KEY (USERCUSTIDNO);
ALTER TABLE kp_user_locations
    ADD CONSTRAINT pkp_user_locations PRIMARY KEY (USERLOCTLISTIDNO);
ALTER TABLE kp_user_login_log
    ADD CONSTRAINT pkp_user_login_log PRIMARY KEY (ULLLIDNO);


ALTER TABLE kp_user
    ADD CONSTRAINT fkp_user_client FOREIGN KEY (MAINCLNTIDNO)
REFERENCES kp_client (CLNTIDNO);

ALTER TABLE kp_location
    ADD CONSTRAINT fkp_location_client FOREIGN KEY (CLNTIDNO)
REFERENCES kp_client (CLNTIDNO);

ALTER TABLE kp_customer
    ADD CONSTRAINT fkp_customer_client FOREIGN KEY (CLNTIDNO)
REFERENCES kp_client (CLNTIDNO);

ALTER TABLE kp_role_authorisation
    ADD CONSTRAINT fkp_role_authorisation_client FOREIGN KEY (CLNTIDNO)
REFERENCES kp_client (CLNTIDNO);

ALTER TABLE kp_role_to_user
    ADD CONSTRAINT fkp_role_to_user_client FOREIGN KEY (CLNTIDNO)
REFERENCES kp_client (CLNTIDNO);

ALTER TABLE kp_user_customer
    ADD CONSTRAINT fkp_user_customer_user FOREIGN KEY (USERIDNO)
REFERENCES kp_user (USERIDNO);

ALTER TABLE kp_user_customer
    ADD CONSTRAINT fkp_user_customer_customer FOREIGN KEY (CUSTIDNO)
REFERENCES kp_customer (CUSTIDNO);

ALTER TABLE kp_user_locations
    ADD CONSTRAINT fkp_user_locations_user FOREIGN KEY (USERIDNO)
REFERENCES kp_user (USERIDNO);

ALTER TABLE kp_user_locations
    ADD CONSTRAINT fkp_user_locations_client FOREIGN KEY (CLNTIDNO)
REFERENCES kp_client (CLNTIDNO);

CREATE UNIQUE INDEX akp_location_client ON kp_location
(CLNTIDNO,
 CLNTLOCTIDNO
);

ALTER TABLE kp_user_locations
    ADD CONSTRAINT fkp_user_locations_location FOREIGN KEY (CLNTIDNO, CLNTLOCTIDNO)
REFERENCES kp_location (CLNTIDNO, CLNTLOCTIDNO);


ALTER TABLE kp_user_login_log
    ADD CONSTRAINT fkp_user_login_log_user FOREIGN KEY (USERIDNO)
REFERENCES kp_user (USERIDNO);

ALTER TABLE kp_user_login_log
    ADD CONSTRAINT fkp_user_login_log_client FOREIGN KEY (CLNTIDNO)
REFERENCES kp_client (CLNTIDNO);
