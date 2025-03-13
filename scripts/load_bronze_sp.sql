-- =============================================
-- Author:		DAB+
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
-- BULK INSERTS

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	PRINT '======================================================';
	PRINT 'Loading Bronze Layer'
	PRINT '======================================================';

	PRINT '------------------------------------------------------';
	PRINT 'Loading CRM Tables'
	PRINT '------------------------------------------------------';

	TRUNCATE TABLE bronze.crm_cust_info;
	BULK INSERT bronze.crm_cust_info
	FROM 'C:\sql\dwh_projcet\datasets\srouce_crm\cust_info.csv'
	WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
	);

	SELECT	*	FROM	bronze.crm_cust_info;
	SELECT COUNT(*) FROM bronze.crm_cust_info;


	TRUNCATE TABLE bronze.crm_prd_info;
	BULK INSERT bronze.crm_prd_info
	FROM 'C:\sql\dwh_projcet\datasets\srouce_crm\prd_info.csv'
	WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
	);

	TRUNCATE TABLE bronze.crm_sales_details;
	BULK INSERT bronze.crm_sales_details
	FROM 'C:\sql\dwh_projcet\datasets\srouce_crm\sales_details.csv'
	WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
	);

	PRINT '------------------------------------------------------';
	PRINT 'Loading ERP Tables'
	PRINT '------------------------------------------------------';
END

-- SAME FOR erp tables...
