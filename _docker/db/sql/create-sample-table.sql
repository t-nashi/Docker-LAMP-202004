-- docker-compose.yml内で設定したDB名
USE docker_db;
-- create sample table
create table IF not exists `test_table`
(
 `id`               INT(20) AUTO_INCREMENT,
 `name`             VARCHAR(20) NOT NULL,
 `created_at`       Datetime DEFAULT NULL,
 `updated_at`       Datetime DEFAULT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- insert sample data
INSERT INTO test_table VALUES (1,'suzuki',null,null);
INSERT INTO test_table VALUES (2,'tanaka',null,null);
INSERT INTO test_table VALUES (3,'satou',null,null);
