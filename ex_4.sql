/* a) complete backup of the database*/
mysqldump -u root -p school > school_complete.sql

/* b) restoring the complete database*/
mysql -u root -p restored < school_complete.sql
