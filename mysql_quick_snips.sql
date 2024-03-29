-- Find and display details of any column in your database
SELECT DISTINCT TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME = '<column_name>' AND TABLE_SCHEMA = '<database_name>';
-- Example
SELECT DISTINCT TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME = 'orders_count' AND TABLE_SCHEMA = 'magento1924';
SELECT table_name,table_schema FROM INFORMATION_SCHEMA.COLUMNS WHERE column_name='sort_method';
