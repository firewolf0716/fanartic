ALTER TABLE customer_score ALTER COLUMN score_action varchar(50) DEFAULT NULL;
ALTER TABLE customer_score ALTER COLUMN score_status tinyint(2) DEFAULT 1;
ALTER TABLE customer_score ALTER COLUMN score_type enum('plus','minus') DEFAULT 'plus';
