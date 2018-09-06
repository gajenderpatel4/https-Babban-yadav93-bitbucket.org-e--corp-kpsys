-- maintenance of ANPR cameras and devices
-- Created by dkhvatov on 2017-01-01

CREATE TABLE guru_anprgate_device (
    ANPRDVCEIDNO     INT IDENTITY (1, 1) NOT NULL,
    CLNTIDNO         INT                 NOT NULL, -- Not visible, from session
    ANPRDVCENAME     VARCHAR(70)         NOT NULL, -- Device Name: Free input
    ANPRDVCEIDFC     VARCHAR(35)         NOT NULL, -- Device ID: Free input
    ANPRDVCETYPENMBR INT                 NOT NULL, -- Device Type: 0 = ANPR Camera
    STATNMBR         TINYINT             NOT NULL, -- Status: 0 = Active, 9 = Disabled
    CONSTRAINT pk_guru_anprgate_device PRIMARY KEY CLUSTERED (ANPRDVCEIDNO)
)
GO

CREATE TABLE guru_anprgate_rule (
    ANPRRULEIDNO INT IDENTITY (1, 1) NOT NULL,
    CLNTIDNO     INT                 NOT NULL, -- Not visible, from session.
    ORDRNMBR     INT                 NOT NULL, -- Not visible, Ordering, arrows up and down change order
    ANPRDVCEIDNO INT                 NOT NULL, -- Not visible. Parent device. Foreign key fk_guru_anprgate_rule_device
    STOPTYPENMBR TINYINT             NOT NULL, -- Stop Processing: 0 - None, 1 - Positive, 2 - Negative
    RULETYPENMBR INT                 NOT NULL, -- Type: 0 - Log only, 1 - Guru Parking, 2 - Metric
    RULEPARMVALU VARCHAR(200)        NULL, -- Parameters: Free text, multi line
    DRCTNMBR     TINYINT             NOT NULL, -- Direction: 0 - Out, 1 - In
    CONSTRAINT p_guru_anprgate_rule PRIMARY KEY CLUSTERED (ANPRRULEIDNO)
)
GO
CREATE TABLE guru_anprgate_action (
    ANPRACTNIDNO INT IDENTITY (1, 1) NOT NULL,
    ANPRRULEIDNO INT                 NOT NULL, -- Not visible. Parent rule. Foreign key fk_guru_anprgate_action_rule
    ACTNTYPENMBR INT                 NOT NULL, -- Type: 0 - Default, 1 - Positive, 2 - Negative
    CLNTIDNO     INT                 NOT NULL, -- Not visible, from session.
    ORDRNMBR     INT                 NOT NULL, -- Not visible, Ordering, arrows up and down change order (group on ACTNTYPENMBR first)
    ANPRDVCEIDNO INT                 NOT NULL, -- Device: Select any device for this CLNTIDNO in guru_anprgate_device. Foreign key fk_guru_anprgate_action_device
    PARMVALU     VARCHAR(200)        NULL, -- Parameters: Free text, multi line
    CONSTRAINT p_guru_anprgate_action PRIMARY KEY CLUSTERED (ANPRACTNIDNO)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX a_guru_anprgate_device
    ON guru_anprgate_device (ANPRDVCEIDFC)
GO
CREATE NONCLUSTERED INDEX i_guru_anprgate_rule
    ON guru_anprgate_rule (ANPRDVCEIDNO)
GO
ALTER TABLE guru_anprgate_rule
    ADD CONSTRAINT fk_guru_anprgate_rule_device
FOREIGN KEY (ANPRDVCEIDNO)
REFERENCES guru_anprgate_device (ANPRDVCEIDNO)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
GO
ALTER TABLE guru_anprgate_action
    ADD CONSTRAINT fk_guru_anprgate_action_device
FOREIGN KEY (ANPRDVCEIDNO)
REFERENCES guru_anprgate_device (ANPRDVCEIDNO)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
GO
ALTER TABLE guru_anprgate_action
    ADD CONSTRAINT fk_guru_anprgate_action_rule
FOREIGN KEY (ANPRRULEIDNO)
REFERENCES guru_anprgate_rule (ANPRRULEIDNO)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
GO
