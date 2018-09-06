-- Adds columns related to camera addresses
-- Created by dkhvatov on 2017-02-26

ALTER TABLE guru_anprgate_device
    ADD CAM0MASK VARCHAR(64);
ALTER TABLE guru_anprgate_device
    ADD CAM1MASK VARCHAR(64);
ALTER TABLE guru_anprgate_device
    ADD IPPPADDR VARCHAR(32); -- IP ADDRESS OF THE DEVICE
