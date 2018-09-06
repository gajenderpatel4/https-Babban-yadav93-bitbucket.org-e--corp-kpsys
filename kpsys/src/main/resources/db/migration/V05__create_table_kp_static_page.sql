-- Create kp_static_page table with indexes

CREATE TABLE dbo.kp_static_page (
    PAGEIDNO     INT IDENTITY (1, 1) NOT NULL,
    PAGETYPENMBR TINYINT             NOT NULL,
    CLNTIDNO     INT  				 NOT NULL,
    LANGCODE     VARCHAR(7)			 NOT NULL,
    PAGETITL     VARCHAR(35)		 NOT NULL,
    PAGECNTN     TEXT				 NULL,
    CONSTRAINT pkp_static_page PRIMARY KEY (PAGEIDNO)
);

CREATE UNIQUE INDEX akp_static_page ON kp_static_page (
	PAGETYPENMBR,
	CLNTIDNO,
	LANGCODE
);
