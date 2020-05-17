-- docker-compose.yml内で設定したDB名
USE docker_db;
-- create test_table
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

-- create master_table
create table IF not exists `master_table`
(
 `id`               INT(5) AUTO_INCREMENT,
 `name`             VARCHAR(20) NOT NULL,
 `age`              INT(3) DEFAULT NULL,
 `gender`           VARCHAR(4) NOT NULL,
 `mail`             VARCHAR(50) NOT NULL,
 `address`          VARCHAR(50) NOT NULL,
 `memo`             VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- insert sample data
INSERT INTO master_table VALUES (10001,'佐藤',30,'男','satou@mail.com','アドレス1','メモ1_佐藤');
INSERT INTO master_table VALUES (10002,'鈴木',12,'女','suzuki@mail.com','アドレス2','メモ2_鈴木');
INSERT INTO master_table VALUES (10003,'田中',45,'男','tanaka@mail.com','アドレス3','メモ3_田中');
INSERT INTO master_table VALUES (10004,'遠藤',34,'男','endou@mail.com','アドレス4','メモ4_遠藤');
INSERT INTO master_table VALUES (10005,'山本',26,'女','yamamoto@mail.com','アドレス5','メモ5_山本');

-- create sep_table_1
create table IF not exists `sep_table_1`
(
 `id`               INT(5) AUTO_INCREMENT,
 `name`             VARCHAR(20) NOT NULL,
 `age`              INT(3) DEFAULT NULL,
 `gender`           VARCHAR(4) NOT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- insert sample data
INSERT INTO sep_table_1 VALUES (10001,'佐藤',30,'男');
INSERT INTO sep_table_1 VALUES (10002,'鈴木',12,'女');
INSERT INTO sep_table_1 VALUES (10003,'田中',45,'男');
INSERT INTO sep_table_1 VALUES (10004,'遠藤',34,'男');
INSERT INTO sep_table_1 VALUES (10005,'山本',26,'女');

-- create sep_table_2
create table IF not exists `sep_table_2`
(
 `id`               INT(5) AUTO_INCREMENT,
 `mail`             VARCHAR(50) NOT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- insert sample data
INSERT INTO sep_table_2 VALUES (10001,'satou@mail.com');
INSERT INTO sep_table_2 VALUES (10002,'suzuki@mail.com');
INSERT INTO sep_table_2 VALUES (10003,'tanaka@mail.com');
INSERT INTO sep_table_2 VALUES (10004,'endou@mail.com');
INSERT INTO sep_table_2 VALUES (10005,'yamamoto@mail.com');

-- create sep_table_3
create table IF not exists `sep_table_3`
(
 `id`               INT(5) AUTO_INCREMENT,
 `address`             VARCHAR(50) NOT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- insert sample data
INSERT INTO sep_table_3 VALUES (10001,'アドレス1');
INSERT INTO sep_table_3 VALUES (10002,'アドレス2');
INSERT INTO sep_table_3 VALUES (10003,'アドレス3');
INSERT INTO sep_table_3 VALUES (10004,'アドレス4');
INSERT INTO sep_table_3 VALUES (10005,'アドレス5');

-- create sep_table_4
create table IF not exists `sep_table_4`
(
 `name`             VARCHAR(20) NOT NULL,
 `memo`             VARCHAR(50) NOT NULL,
    PRIMARY KEY (`name`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- insert sample data
INSERT INTO sep_table_4 VALUES ('佐藤','メモ1_佐藤');
INSERT INTO sep_table_4 VALUES ('鈴木','メモ2_鈴木');
INSERT INTO sep_table_4 VALUES ('田中','メモ3_田中');
INSERT INTO sep_table_4 VALUES ('遠藤','メモ4_遠藤');
INSERT INTO sep_table_4 VALUES ('山本','メモ5_山本');
