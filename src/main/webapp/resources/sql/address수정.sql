use `project`;

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
	`r_name`	varchar(50)	NULL,
	`r_intro`	longtext	NULL,
	`r_price`	int	NULL,
	`r_product_num`	int	NOT NULL
);
DROP TABLE IF EXISTS `Product`;

CREATE TABLE `Product` (
	`product_num`	int auto_increment	NOT NULL primary key,
	`product_type`	varchar(10)	NULL,
	`product_name`	varchar(50)	NULL,
	`product_content`	longtext	NULL,
	`product_location`	varchar(200)	NULL,
	`product_service`	varchar(500)	NULL,
	`product_address`	varchar(50)	NULL,
	`product_bi_id`	varchar(20)	NOT NULL,
	`product_lo_num`	int	NOT NULL,
	`product_postNum`	varchar(5)	NULL,
	`product_mainAddress`	varchar(100)	NULL,
	`product_detailAddress`	varchar(50)	NULL,
	`product_extraAddress`	varchar(50)	NULL
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