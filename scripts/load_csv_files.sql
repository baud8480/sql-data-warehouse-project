USE DataWarehouse;
GO


CREATE FUNCTION bronze.GetFilePath_cust_info 
(
)
RETURNS VARCHAR(255)
AS
BEGIN
	DECLARE @filepath VARCHAR(255)
	SELECT @filepath = '/data/datawarehouse_project/source_crm/cust_info.csv'
	RETURN @filepath
END
GO

CREATE FUNCTION bronze.GetFilePath_crm_prd_info 
(
)
RETURNS VARCHAR(255)
AS
BEGIN
	DECLARE @filepath VARCHAR(255)
	SELECT @filepath = '/data/datawarehouse_project/source_crm/prd_info.csv'
	RETURN @filepath
END
GO

CREATE FUNCTION bronze.GetFilePath_crm_sales_details 
(
)
RETURNS VARCHAR(255)
AS
BEGIN
	DECLARE @filepath VARCHAR(255)
	SELECT @filepath = '/data/datawarehouse_project/source_crm/sales_details.csv'
	RETURN @filepath
END
GO

CREATE FUNCTION bronze.GetFilePath_erp_CUST_AZ12
(
)
RETURNS VARCHAR(255)
AS
BEGIN
	DECLARE @filepath VARCHAR(255)
	SELECT @filepath = '/data/datawarehouse_project/source_erp/CUST_AZ12.csv'

	RETURN @filepath
END
GO

CREATE FUNCTION bronze.GetFilePath_erp_LOC_A101
(
)
RETURNS VARCHAR(255)
AS
BEGIN
	DECLARE @filepath VARCHAR(255)
	SELECT @filepath = '/data/datawarehouse_project/source_erp/LOC_A101.csv'

	RETURN @filepath
END
GO

CREATE FUNCTION bronze.GetFilePath_erp_PX_CAT_G1V2 
(
)
RETURNS VARCHAR(255)
AS
BEGIN
	DECLARE @filepath VARCHAR(255)
	SELECT @filepath = '/data/datawarehouse_project/source_erp/PX_CAT_G1V2.csv'
	RETURN @filepath
END
GO

  /*
SELECT	[bronze].[GetFilePath_crm_prd_info]()
SELECT [bronze].[GetFilePath_crm_sales_details]()
SELECT [bronze].[GetFilePath_cust_info]()
SELECT [bronze].[GetFilePath_erp_CUST_AZ12]	( )
SELECT [bronze].[GetFilePath_erp_LOC_A101]()
SELECT [bronze].[GetFilePath_erp_PX_CAT_G1V2]()
*/

