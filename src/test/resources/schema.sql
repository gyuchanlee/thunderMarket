DROP TABLE IF EXISTS `Member`;

CREATE TABLE `Member` (
	`member_id`	VARCHAR(255)	NOT NULL,
	`userid`	VARCHAR(255)	NULL,
	`password`	VARCHAR(255)	NULL,
	`phone`	VARCHAR(255)	NULL,
	`author`	VARCHAR(255)	NULL
);

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
	`address_id`	VARCHAR(255)	NOT NULL,
	`address`	VARCHAR(255)	NULL,
	`phone`	VARCHAR(255)	NULL,
	`name`	VARCHAR(255)	NULL,
	`id2`	VARCHAR(255)	NOT NULL
);

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
	`order_id`	VARCHAR(255)	NULL,
	`member_id`	VARCHAR(255)	NOT NULL,
	`ITEM_ID`	VARCHAR(255)	NOT NULL,
	`quantity`	VARCHAR(255)	NULL,
	`isOrder`	VARCHAR(255)	NULL,
	`isReturn`	VARCHAR(255)	NULL,
	`return_reason`	VARCHAR(255)	NULL,
	`payment_type`	VARCHAR(255)	NULL
);

DROP TABLE IF EXISTS `Item`;

CREATE TABLE `Item` (
	`ITEM_ID`	VARCHAR(255)	NOT NULL,
	`category`	VARCHAR(255)	NULL,
	`name`	VARCHAR(255)	NULL,
	`price`	VARCHAR(255)	NULL,
	`rate`	VARCHAR(255)	NULL,
	`img`	VARCHAR(255)	NULL,
	`itemDetail`	VARCHAR(255)	NULL
);

DROP TABLE IF EXISTS `QnA`;

CREATE TABLE `QnA` (
	`qna_id`	VARCHAR(255)	NOT NULL,
	`title`	VARCHAR(255)	NULL,
	`content`	VARCHAR(255)	NULL,
	`member_id`	VARCHAR(255)	NOT NULL,
	`createdDate`	VARCHAR(255)	NULL,
	`lastModifiedDate`	VARCHAR(255)	NULL,
	`files`	VARCHAR(255)	NULL
);

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
	`notice_id`	VARCHAR(255)	NOT NULL,
	`title`	VARCHAR(255)	NULL,
	`content`	VARCHAR(255)	NULL,
	`member_id`	VARCHAR(255)	NOT NULL,
	`createdDate`	VARCHAR(255)	NULL,
	`lastModifiedDate`	VARCHAR(255)	NULL,
	`files`	VARCHAR(255)	NULL
);

DROP TABLE IF EXISTS `item_details`;

CREATE TABLE `item_details` (
	`ITEM_ID`	VARCHAR(255)	NOT NULL,
	`size`	VARCHAR(255)	NULL,
	`stock`	VARCHAR(255)	NULL
);

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
	`review_id`	VARCHAR(255)	NOT NULL,
	`title`	VARCHAR(255)	NULL,
	`content`	VARCHAR(255)	NULL,
	`member_id`	VARCHAR(255)	NOT NULL,
	`createdDate`	VARCHAR(255)	NULL,
	`lastModifiedDate`	VARCHAR(255)	NULL,
	`files`	VARCHAR(255)	NULL,
	`ITEM_ID`	VARCHAR(255)	NOT NULL
);

ALTER TABLE `Member` ADD CONSTRAINT `PK_MEMBER` PRIMARY KEY (
	`member_id`
);

ALTER TABLE `address` ADD CONSTRAINT `PK_ADDRESS` PRIMARY KEY (
	`address_id`
);

ALTER TABLE `Item` ADD CONSTRAINT `PK_ITEM` PRIMARY KEY (
	`ITEM_ID`
);

ALTER TABLE `QnA` ADD CONSTRAINT `PK_QNA` PRIMARY KEY (
	`qna_id`
);

ALTER TABLE `notice` ADD CONSTRAINT `PK_NOTICE` PRIMARY KEY (
	`notice_id`
);

ALTER TABLE `review` ADD CONSTRAINT `PK_REVIEW` PRIMARY KEY (
	`review_id`
);

ALTER TABLE `address` ADD CONSTRAINT `FK_Member_TO_address_1` FOREIGN KEY (
	`id2`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `order` ADD CONSTRAINT `FK_Member_TO_order_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `order` ADD CONSTRAINT `FK_Item_TO_order_1` FOREIGN KEY (
	`ITEM_ID`
)
REFERENCES `Item` (
	`ITEM_ID`
);

ALTER TABLE `QnA` ADD CONSTRAINT `FK_Member_TO_QnA_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `notice` ADD CONSTRAINT `FK_Member_TO_notice_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `item_details` ADD CONSTRAINT `FK_Item_TO_item_details_1` FOREIGN KEY (
	`ITEM_ID`
)
REFERENCES `Item` (
	`ITEM_ID`
);

ALTER TABLE `review` ADD CONSTRAINT `FK_Member_TO_review_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `Member` (
	`member_id`
);

ALTER TABLE `review` ADD CONSTRAINT `FK_Item_TO_review_1` FOREIGN KEY (
	`ITEM_ID`
)
REFERENCES `Item` (
	`ITEM_ID`
);

