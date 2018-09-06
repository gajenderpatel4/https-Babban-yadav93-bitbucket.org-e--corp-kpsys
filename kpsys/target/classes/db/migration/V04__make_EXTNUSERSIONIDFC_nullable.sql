-- Make EXTNUSERSIONIDFC column nullable in User table

ALTER TABLE kpsys.dbo.kp_user ALTER COLUMN EXTNUSERSIONIDFC VARCHAR(20);
