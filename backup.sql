-- Question 1: Creating a Complete Database Backup

mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
-- This command creates a complete backup of the sales database.
-- -u root uses root as MySQL username
-- -p prompts for password for security
-- sales is the database name
-- > sales_backup.sql saves the backup in a file named sales_backup.sql
-- Regular backups are important to protect data from loss,
-- recover after deletion or errors, and restore after server failure.

-- ============================================================
-- Question 2: Backing Up All Databases
-- ============================================================

mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
-- This command backs up ALL databases on the MySQL server.
-- --all-databases means export all databases, not just sales.
-- -u root uses root as MySQL username
-- -p prompts for password for security
-- > all_databases_backup.sql saves the backup in a file named all_databases_backup.sql
-- It is important to back up all databases before server migration
-- to ensure no data is lost and we can restore everything safely on the new server.