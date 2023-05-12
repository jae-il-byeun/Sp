drop database IF EXISTS `project`;

create database `project`;

use `project`;

DROP TABLE IF EXISTS `Member`;

CREATE TABLE `Member` (
	`me_id`	varchar(20)	NOT NULL primary key,
	`me_pw`	varchar(16)	NULL,
	`me_name`	varchar(30)	NULL,
	`me_email`	varchar(50)	NULL,
	`me_gender`	int	NULL,
	`me_phone`	varchar(15)	NULL,
	`me_birth`	varchar(10)	NULL,
	`me_rrn`	varchar(14)	NULL,
	`me_authority`	int	NULL
);

DROP TABLE IF EXISTS `Business`;

CREATE TABLE `Business` (
	`bi_id`	varchar(20)	NOT NULL primary key,
	`bi_pw`	varchar(16)	NULL,
	`bi_company`	varchar(30)	NULL,
	`bi_name`	varchar(10)	NULL,
	`bi_brn`	varchar(12)	NULL,
	`bi_phone`	varchar(15)	NULL,
	`bi_email`	varchar(50)	NULL,
	`bi_address`	varchar(50)	NULL,
	`bi_authority`	int	NULL
);

DROP TABLE IF EXISTS `Guset`;

CREATE TABLE `Guset` (
	`gu_name`	varchar(20)	NOT NULL primary key,
	`gu_pw`	varchar(16)	NULL,
	`gu_phone`	varchar(15)	NULL
);

DROP TABLE IF EXISTS `Review`;

CREATE TABLE `Review` (
	`rv_num`	int auto_increment	NOT NULL primary key,
	`rv_star`	int	NULL,
	`rv_recoed`	datetime	NULL,
	`rv_content`	longtext	NULL,
	`rv_me_id`	varchar(20)	NOT NULL
);

DROP TABLE IF EXISTS `BusReservation`;

CREATE TABLE `BusReservation` (
	`br_num`	int auto_increment	NOT NULL primary key,
	`br_busCompany`	varchar(20)	NULL,
	`br_remainseat`	int	NULL,
	`br_startDay`	date	NULL,
	`br_stTime`	varchar(20)	NULL,
	`br_me_id`	varchar(20)	NOT NULL,
	`br_gu_name`	varchar(20)	NOT NULL
);

DROP TABLE IF EXISTS `Board`;

CREATE TABLE `Board` (
	`bo_num`	int auto_increment	NOT NULL primary key,
	`bo_name`	varchar(100)	NULL,
	`bo_content`	longtext	NULL,
	`bo_record_date`	datetime	NULL,
	`bo_update_date`	datetime	NULL,
	`bo_views`	int	NULL,
	`bo_ori_num`	int	NOT NULL,
	`bo_bt_num`	int	NOT NULL,
	`bo_me_id`	varchar(20)	NOT NULL,
	`bo_bi_id`	varchar(20)	NOT NULL
);

DROP TABLE IF EXISTS `Coopon`;

CREATE TABLE `Coopon` (
	`co_num`	int auto_increment	NOT NULL primary key,
	`co_name`	varchar(20)	NULL,
	`co_dispersent`	int	NULL,
	`co_content`	varchar(200)	NULL,
	`co_startTime`	date	NULL,
	`co_endTime`	date	NULL,
	`co_dismoney`	int	NULL
);

DROP TABLE IF EXISTS `Basket`;

CREATE TABLE `Basket` (
	`bk_num`	int	NOT NULL primary key,
	`bk_me_id`	varchar(20)	NOT NULL
);

DROP TABLE IF EXISTS `Reservation`;

CREATE TABLE `Reservation` (
	`re_num`	int auto_increment	NOT NULL primary key,
	`re_rename`	varchar(20)	NULL,
	`re_rephone`	varchar(15)	NULL,
    `re_date`	date	NULL,
	`re_usename`	varchar(20)	NULL,
	`re_usephone`	varchar(15)	NULL,
	`re_totalprice`	int	NULL,
	`re_co_num`	int	NOT NULL,
	`re_r_num`	int	NOT NULL,
	`re_me_id`	varchar(20)	NOT NULL,
	`re_gu_name`	varchar(20)	NOT NULL
);

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
	`r_num`	int auto_increment	NOT NULL primary key,
	`r_type`	varchar(50)	NULL,
	`r_intro`	longtext	NULL,
	`r_price`	int	NULL,
	`r_product_num`	int	NOT NULL
);

DROP TABLE IF EXISTS `coo_hold`;

CREATE TABLE `coo_hold` (
	`coo_num`	int auto_increment	NOT NULL primary key,
	`coo_co_num`	int	NOT NULL,
	`coo_me_id`	varchar(20)	NOT NULL
);

DROP TABLE IF EXISTS `Product`;

CREATE TABLE `Product` (
	`product_num`	int auto_increment	NOT NULL primary key,
	`product_name`	varchar(50)	NULL,
	`product_type`	varchar(10)	NULL,
	`product_content`	longtext	NULL,
	`product_location`	varchar(200)	NULL,
    `product_service`	varchar(500)	NULL,
	`product_address`	varchar(50)	NULL,
	`product_bi_id`	varchar(20)	NOT NULL
);

DROP TABLE IF EXISTS `BoardType`;

CREATE TABLE `BoardType` (
	`bt_num`	int auto_increment	NOT NULL primary key,
	`bt_name`	varchar(50)	NULL,
	`bt_writer_authority`	int	NULL,
	`bt_read_authority`	int	NULL
);

DROP TABLE IF EXISTS `File`;

CREATE TABLE `File` (
	`file_num`	int auto_increment	NOT NULL primary key,
	`file_name`	varchar(50)	NULL,
	`file_location`	varchar(100)	NULL,
	`file_originName`	varchar(50)	NULL,
	`file_size`	varchar(50)	NULL
);

DROP TABLE IF EXISTS `ProductFile`;

CREATE TABLE `ProductFile` (
	`pf_product_num`	int	NOT NULL,
	`pf_file_num`	int	NOT NULL
);

DROP TABLE IF EXISTS `RoomFile`;

CREATE TABLE `RoomFile` (
	`rf_r_num`	int	NOT NULL,
	`rf_file_num`	int	NOT NULL
);

DROP TABLE IF EXISTS `BoardFile`;

CREATE TABLE `BoardFile` (
	`bf_bo_num`	int	NOT NULL,
	`bf_file_num`	int	NOT NULL
);
DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
	`lo_num`	int	NOT NULL primary key,
	`lo_name`	varchar(10)	NULL
);

ALTER TABLE `Review` ADD CONSTRAINT `FK_Member_TO_Review_1` FOREIGN KEY (
	`rv_me_id`
)
REFERENCES `Member` (
	`me_id`
);

ALTER TABLE `BusReservation` ADD CONSTRAINT `FK_Member_TO_BusReservation_1` FOREIGN KEY (
	`br_me_id`
)
REFERENCES `Member` (
	`me_id`
);

ALTER TABLE `BusReservation` ADD CONSTRAINT `FK_Guset_TO_BusReservation_1` FOREIGN KEY (
	`br_gu_name`
)
REFERENCES `Guset` (
	`gu_name`
);

ALTER TABLE `Board` ADD CONSTRAINT `FK_Board_TO_Board_1` FOREIGN KEY (
	`bo_ori_num`
)
REFERENCES `Board` (
	`bo_num`
);

ALTER TABLE `Board` ADD CONSTRAINT `FK_BoardType_TO_Board_1` FOREIGN KEY (
	`bo_bt_num`
)
REFERENCES `BoardType` (
	`bt_num`
);

ALTER TABLE `Board` ADD CONSTRAINT `FK_Member_TO_Board_1` FOREIGN KEY (
	`bo_me_id`
)
REFERENCES `Member` (
	`me_id`
);

ALTER TABLE `Board` ADD CONSTRAINT `FK_Business_TO_Board_1` FOREIGN KEY (
	`bo_bi_id`
)
REFERENCES `Business` (
	`bi_id`
);

ALTER TABLE `Basket` ADD CONSTRAINT `FK_Member_TO_Basket_1` FOREIGN KEY (
	`bk_me_id`
)
REFERENCES `Member` (
	`me_id`
);

ALTER TABLE `Reservation` ADD CONSTRAINT `FK_Coopon_TO_Reservation_1` FOREIGN KEY (
	`re_co_num`
)
REFERENCES `Coopon` (
	`co_num`
);

ALTER TABLE `Reservation` ADD CONSTRAINT `FK_room_TO_Reservation_1` FOREIGN KEY (
	`re_r_num`
)
REFERENCES `room` (
	`r_num`
);

ALTER TABLE `Reservation` ADD CONSTRAINT `FK_Member_TO_Reservation_1` FOREIGN KEY (
	`re_me_id`
)
REFERENCES `Member` (
	`me_id`
);

ALTER TABLE `Reservation` ADD CONSTRAINT `FK_Guset_TO_Reservation_1` FOREIGN KEY (
	`re_gu_name`
)
REFERENCES `Guset` (
	`gu_name`
);

ALTER TABLE `room` ADD CONSTRAINT `FK_Product_TO_room_1` FOREIGN KEY (
	`r_product_num`
)
REFERENCES `Product` (
	`product_num`
);

ALTER TABLE `coo_hold` ADD CONSTRAINT `FK_Coopon_TO_coo_hold_1` FOREIGN KEY (
	`coo_co_num`
)
REFERENCES `Coopon` (
	`co_num`
);

ALTER TABLE `coo_hold` ADD CONSTRAINT `FK_Member_TO_coo_hold_1` FOREIGN KEY (
	`coo_me_id`
)
REFERENCES `Member` (
	`me_id`
);

ALTER TABLE `Product` ADD CONSTRAINT `FK_Business_TO_Product_1` FOREIGN KEY (
	`product_bi_id`
)
REFERENCES `Business` (
	`bi_id`
);
ALTER TABLE `Product` ADD CONSTRAINT `FK_location_TO_Product_1` FOREIGN KEY (
	`product_lo_num`
)
REFERENCES `location` (
	`lo_num`
);

ALTER TABLE `ProductFile` ADD CONSTRAINT `FK_Product_TO_ProductFile_1` FOREIGN KEY (
	`pf_product_num`
)
REFERENCES `Product` (
	`product_num`
);

ALTER TABLE `ProductFile` ADD CONSTRAINT `FK_File_TO_ProductFile_1` FOREIGN KEY (
	`pf_file_num`
)
REFERENCES `File` (
	`file_num`
);

ALTER TABLE `RoomFile` ADD CONSTRAINT `FK_room_TO_RoomFile_1` FOREIGN KEY (
	`rf_r_num`
)
REFERENCES `room` (
	`r_num`
);

ALTER TABLE `RoomFile` ADD CONSTRAINT `FK_File_TO_RoomFile_1` FOREIGN KEY (
	`rf_file_num`
)
REFERENCES `File` (
	`file_num`
);

ALTER TABLE `BoardFile` ADD CONSTRAINT `FK_Board_TO_BoardFile_1` FOREIGN KEY (
	`bf_bo_num`
)
REFERENCES `Board` (
	`bo_num`
);

ALTER TABLE `BoardFile` ADD CONSTRAINT `FK_File_TO_BoardFile_1` FOREIGN KEY (
	`bf_file_num`
)
REFERENCES `File` (
	`file_num`
);