CREATE TABLE `delivery` (
	`delivery_id`	INT	NOT NULL,
	`delivery_fee`	VARCHAR(20)	NULL,
	`tracking_number`	INT	NULL,
	`delivery_started_at`	DATETIME	NULL,
	`delivery_driver_contact`	VARCHAR(20)	NULL,
	`delivery_completed_at`	DATETIME	NULL,
	`delivery_request`	VARCHAR(30)	NULL,
	`order_id`	INT	NOT NULL,
	`code_id`	varchar(10)	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL
);

CREATE TABLE `middle_category` (
	`middle_category_id`	INT (PK)	NOT NULL,
	`middle_category_name`	VARCHAR(20)	NULL,
	`major_category_code`	INT (PK)	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL
);

CREATE TABLE `image` (
	`image_id`	int	NOT NULL,
	`image_url`	varchar(30)	NULL,
	`image_type`	varchar(30)	NULL,
	`car_info_id`	INT	NOT NULL,
	`review_id`	INT	NULL,
	`inquiry_id`	INT	NULL,
	`image_content`	varchar(50)	NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL
);

CREATE TABLE `option_Info` (
	`option_Info_id`	Int(PK)	NOT NULL,
	`option_name`	varchar(20)	NULL,
	`option_description`	varchar(1000)	NULL,
	`Field`	INT	NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL
);

CREATE TABLE `address_book` (
	`address_book_id`	INT	NOT NULL,
	`address_name`	VARCHAR(20)	NULL,
	`postal_code`	VARCHAR(20)	NULL,
	`road_address`	VARCHAR(20)	NULL,
	`detailed_address`	VARCHAR(20)	NULL,
	`user_id`	INT	NOT NULL,
	`code_id`	varchar(10)	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL
);

CREATE TABLE `car_infomation` (
	`car_info_id`	INT	NOT NULL,
	`description`	VARCHAR(30)	NULL,
	`sub_category_id`	INT (PK)	NOT NULL,
	`create_at`	TIMESTAMP	NULL,
	`update_at`	TIMESTAMP	NULL,
	`delete_at`	TIMESTAMP	NULL,
	`info_id2`	VARCHAR(255)	NULL
);

CREATE TABLE `review_comment` (
	`review_comment_id`	INT	NOT NULL,
	`comment_content`	VARCHAR(1000)	NULL,
	`review_id`	INT	NOT NULL,
	`admin_id`	INT	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`Field2`	VARCHAR(255)	NULL
);

CREATE TABLE `vehicle_option` (
	`vehicle_option_id`	Int(PK)	NOT NULL,
	`option_exist`	boolean	NULL,
	`option_Info_id`	Int(PK)	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`Field2`	VARCHAR(255)	NULL
);

CREATE TABLE `terms` (
	`terms_id`	INT	NOT NULL,
	`terms_status_id`	INT	NOT NULL,
	`user_id`	INT	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL
);

CREATE TABLE `sub_category` (
	`sub_category_id`	INT (PK)	NOT NULL,
	`sub_category_name`	VARCHAR(20)	NULL,
	`middle_category_code`	INT (PK)	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL
);

CREATE TABLE `review` (
	`review_id`	INT	NOT NULL,
	`review_content`	VARCHAR(1000)	NULL,
	`rating`	INT	NULL,
	`car_info_id`	INT	NOT NULL,
	`user_id`	INT	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`Field2`	VARCHAR(255)	NULL
);

CREATE TABLE `major_category` (
	`major_category_id`	INT (PK)	NOT NULL,
	`major_category_name`	VARCHAR(20)	NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL
);

CREATE TABLE `code_table` (
	`code_id`	varchar(10)	NOT NULL,
	`code_type_name`	VARCHAR(20)	NULL,
	`code_type`	VARCHAR(255)	NULL,
	`status`	INT	NOT NULL,
	`status_name`	VARCHAR(20)	NULL,
	`is_active`	Boolean	NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL
);

CREATE TABLE `license_info` (
	`license_info_id`	INT	NOT NULL,
	`ssn`	VARCHAR(20)	NULL,
	`license_number`	VARCHAR(20)	NULL,
	`issue_date`	VARCHAR(20)	NULL,
	`expiration_date`	VARCHAR(20)	NULL,
	`code_id`	varchar(10)	NOT NULL,
	`code_id2`	varchar(10)	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL
);

CREATE TABLE `user` (
	`user_id`	INT	NOT NULL,
	`user_email`	VARCHAR(50)	NOT NULL,
	`user_password`	VARCHAR(255)	NOT NULL,
	`user_phone_number`	VARCHAR(20)	NOT NULL,
	`user_name`	VARCHAR(50)	NOT NULL,
	`user_gender`	CHAR(1) CHECK (gender IN ('M', 'F'))	NOT NULL,
	`user_account`	VARCHAR(50)	NULL,
	`license_info_id`	INT	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`Field`	BOOLEAN	NULL,
	`Field2`	int	NULL
);

CREATE TABLE `inspection` (
	`inspection_id`	INT	NOT NULL,
	`is_inspected`	boolean	NULL,
	`inspection_name`	varchar(20)	NULL,
	`inspection_details`	varchar(50)	NULL,
	`inspection_insurance_fee`	INT	NULL,
	`inspection_date`	DATETIME	NULL,
	`create_at`	TIMESTAMP	NULL,
	`update_at`	TIMESTAMP	NULL,
	`delete_at`	TIMESTAMP	NULL,
	`car_info_id`	INT	NOT NULL
);

CREATE TABLE `wishlist` (
	`wishlist_id`	INT	NOT NULL,
	`wishlist_created_at`	TIMESTAMP	NULL,
	`user_id`	INT	NOT NULL,
	`car_info_id`	INT	NOT NULL,
	`create_at`	TIMESTAMP	NULL,
	`update_at`	TIMESTAMP	NULL,
	`delete_at`	TIMESTAMP	NULL,
	`Field2`	VARCHAR(255)	NULL
);

CREATE TABLE `order` (
	`order_id`	INT	NOT NULL,
	`order_amount`	INT	NULL,
	`discount_amount`	INT	NULL,
	`final_amount`	INT	NULL,
	`order_completed_date`	DATETIME	NULL,
	`orcer_cancled_date`	DATETIME	NULL,
	`ownership_type`	VARCHAR(30)	NULL,
	`is_joint_ownership`	BOOLEAN	NULL,
	`code_id`	varchar(10)	NOT NULL,
	`code_id2`	varchar(10)	NULL,
	`user_id`	INT	NOT NULL,
	`coupon_id`	INT	NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`car_info_id`	INT	NOT NULL
);

CREATE TABLE `issued_coupon` (
	`issued_id`	INT	NOT NULL,
	`issue_date`	DATETIME	NULL,
	`is_used`	BOOLEAN	NULL,
	`used_date`	DATETIME	NULL,
	`coupon_id`	INT	NOT NULL,
	`user_id`	INT	NOT NULL,
	`order_id`	INT	NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`Field2`	VARCHAR(255)	NULL
);

CREATE TABLE `terms_status` (
	`terms_status_id`	INT	NOT NULL,
	`consent_required_personal_info`	BOOLEAN	NULL,
	`consent_optional_third_party_use`	BOOLEAN	NULL,
	`consent_required_unique_id`	BOOLEAN	NULL,
	`consent_optional_custom_service`	BOOLEAN	NULL,
	`consent_marketing_use`	BOOLEAN	NULL,
	`consent_sms_receipt`	BOOLEAN	NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL
);

CREATE TABLE `admin` (
	`admin_id`	INT	NOT NULL,
	`admin_email`	varchar(30)	NULL,
	`admin_password`	varchar(20)	NULL,
	`admin_phone`	varchar(20)	NULL,
	`admin_name`	varchar(20)	NULL,
	`department`	varchar(20)	NULL,
	`position`	varchar(20)	NULL,
	`gender`	char(1)	NULL,
	`address_name`	varchar(20)	NULL,
	`postal_code`	varchar(20)	NULL,
	`road_address`	varchar(50)	NULL,
	`detailed_address`	varchar(50)	NULL,
	`settlement_account`	varchar(20)	NULL,
	`product_dispatch_address`	varchar(20)	NULL,
	`Fieldreturn_exchange_address`	varchar(20)	NULL,
	`code_id`	varchar(10)	NOT NULL,
	`create_at`	TIMESTAMP	NULL,
	`update_at`	TIMESTAMP	NULL,
	`delete_at`	TIMESTAMP	NULL
);

CREATE TABLE `payment` (
	`payment_id`	INT	NOT NULL,
	`payment_method`	VARCHAR(20)	NULL,
	`payment_date`	DATETIME	NULL,
	`payment_canceled_at`	DATETIME	NULL,
	`order_id`	INT	NOT NULL,
	`code_id`	varchar(10)	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`Field2`	VARCHAR(255)	NULL
);

CREATE TABLE `order_history` (
	`order_history_id`	INT	NOT NULL,
	`change_item`	VARCHAR(20)	NULL,
	`previous_value`	VARCHAR(20)	NULL,
	`changed_at`	VARCHAR(20)	NULL,
	`changed_by`	VARCHAR(20)	NULL,
	`order_status`	VARCHAR(20)	NULL,
	`payment_status`	VARCHAR(20)	NULL,
	`payment_method`	VARCHAR(20)	NULL,
	`payment_amount`	INT	NULL,
	`refund_status`	VARCHAR(20)	NULL,
	`refund_reason`	VARCHAR(20)	NULL,
	`delivery_status`	VARCHAR(20)	NULL,
	`delivery_fee`	INT	NULL,
	`order_id`	INT	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`Field2`	VARCHAR(255)	NULL
);

CREATE TABLE `coupon` (
	`coupon_id`	INT	NOT NULL,
	`coupon_name`	VARCHAR(30)	NULL,
	`discount_type`	VARCHAR(30)	NULL,
	`discount_value`	INT	NULL,
	`min_order_amount`	INT	NULL,
	`max_discount_amount`	INT	NULL,
	`start_date`	DATETIME	NULL,
	`end_date`	DATETIME	NULL,
	`is_active`	BOOLEAN	NULL,
	`admin_id`	INT	NOT NULL,
	`code_id`	varchar(10)	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`Field`	VARCHAR(255)	NULL
);

CREATE TABLE `inquiry` (
	`inquiry_id`	INT	NOT NULL,
	`inquiry_content`	VARCHAR(100)	NULL,
	`order_id`	INT	NOT NULL,
	`code_id`	varchar(10)	NOT NULL,
	`code_id2`	varchar(10)	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`Field2`	VARCHAR(255)	NULL
);

CREATE TABLE `accident_insurance` (
	`accident_insurance_id`	INT	NOT NULL,
	`has_damage_history`	boolean	NULL,
	`damage_count`	INT	NULL,
	`damage_category`	varchar(20)	NULL,
	`repair_estimate`	INT	NULL,
	`accident_date`	DATETIME	NULL,
	`insurance_payout`	INT	NULL,
	`code_id2`	varchar(10)	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`Field2`	VARCHAR(255)	NULL
);

CREATE TABLE `refund` (
	`refund_id`	INT	NOT NULL,
	`refund_reason`	VARCHAR(20)	NULL,
	`refund_completed_at`	DATETIME	NULL,
	`order_id`	INT	NOT NULL,
	`code_id`	CHAR(1)	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`Field2`	VARCHAR(255)	NULL
);

CREATE TABLE `information` (
	`info_id`	VARCHAR(255)	NULL,
	`model_name`	varchar(50)	NULL,
	`mileage`	varchar(20)	NULL,
	`engine_capacity`	varchar(20)	NULL,
	`fuel_type`	varchar(20)	NULL,
	`transmission`	varchar(20)	NULL,
	`color`	varchar(20)	NULL,
	`manufacture_year`	varchar(20)	NULL,
	`previous_registration_fee`	INT	NULL,
	`maintenance_cost`	INT	NULL,
	`extended_warranty_price`	INT	NULL,
	`car_location`	varchar(50)	NULL,
	`owner_change_count`	INT	NULL,
	`car_price`	INT	NULL,
	`car_num`	varchar(50)	NULL,
	`Field`	INT	NULL,
	`create_at`	TIMESTAMP	NULL,
	`update_at`	TIMESTAMP	NULL,
	`delete_at`	TIMESTAMP	NULL,
	`offer_report_number`	VARCHAR(30)	NULL,
	`vin_number`	VARCHAR(30)	NULL
);

CREATE TABLE `inquiry_comment` (
	`inquiry_comment_id`	INT	NOT NULL,
	`comment_content`	VARCHAR(1000)	NULL,
	`inquiry_id`	INT	NOT NULL,
	`admin_id`	INT	NOT NULL,
	`created_at`	TIMESTAMP	NULL,
	`updated_at`	TIMESTAMP	NULL,
	`deleted_at`	TIMESTAMP	NULL,
	`Field2`	VARCHAR(255)	NULL
);

ALTER TABLE `delivery` ADD CONSTRAINT `PK_DELIVERY` PRIMARY KEY (
	`delivery_id`
);

ALTER TABLE `middle_category` ADD CONSTRAINT `PK_MIDDLE_CATEGORY` PRIMARY KEY (
	`middle_category_id`
);

ALTER TABLE `image` ADD CONSTRAINT `PK_IMAGE` PRIMARY KEY (
	`image_id`
);

ALTER TABLE `option_Info` ADD CONSTRAINT `PK_OPTION_INFO` PRIMARY KEY (
	`option_Info_id`
);

ALTER TABLE `address_book` ADD CONSTRAINT `PK_ADDRESS_BOOK` PRIMARY KEY (
	`address_book_id`
);

ALTER TABLE `car_infomation` ADD CONSTRAINT `PK_CAR_INFOMATION` PRIMARY KEY (
	`car_info_id`
);

ALTER TABLE `review_comment` ADD CONSTRAINT `PK_REVIEW_COMMENT` PRIMARY KEY (
	`review_comment_id`
);

ALTER TABLE `vehicle_option` ADD CONSTRAINT `PK_VEHICLE_OPTION` PRIMARY KEY (
	`vehicle_option_id`
);

ALTER TABLE `terms` ADD CONSTRAINT `PK_TERMS` PRIMARY KEY (
	`terms_id`
);

ALTER TABLE `sub_category` ADD CONSTRAINT `PK_SUB_CATEGORY` PRIMARY KEY (
	`sub_category_id`
);

ALTER TABLE `review` ADD CONSTRAINT `PK_REVIEW` PRIMARY KEY (
	`review_id`
);

ALTER TABLE `major_category` ADD CONSTRAINT `PK_MAJOR_CATEGORY` PRIMARY KEY (
	`major_category_id`
);

ALTER TABLE `code_table` ADD CONSTRAINT `PK_CODE_TABLE` PRIMARY KEY (
	`code_id`
);

ALTER TABLE `license_info` ADD CONSTRAINT `PK_LICENSE_INFO` PRIMARY KEY (
	`license_info_id`
);

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`user_id`
);

ALTER TABLE `inspection` ADD CONSTRAINT `PK_INSPECTION` PRIMARY KEY (
	`inspection_id`
);

ALTER TABLE `wishlist` ADD CONSTRAINT `PK_WISHLIST` PRIMARY KEY (
	`wishlist_id`
);

ALTER TABLE `order` ADD CONSTRAINT `PK_ORDER` PRIMARY KEY (
	`order_id`
);

ALTER TABLE `issued_coupon` ADD CONSTRAINT `PK_ISSUED_COUPON` PRIMARY KEY (
	`issued_id`
);

ALTER TABLE `terms_status` ADD CONSTRAINT `PK_TERMS_STATUS` PRIMARY KEY (
	`terms_status_id`
);

ALTER TABLE `admin` ADD CONSTRAINT `PK_ADMIN` PRIMARY KEY (
	`admin_id`
);

ALTER TABLE `payment` ADD CONSTRAINT `PK_PAYMENT` PRIMARY KEY (
	`payment_id`
);

ALTER TABLE `order_history` ADD CONSTRAINT `PK_ORDER_HISTORY` PRIMARY KEY (
	`order_history_id`
);

ALTER TABLE `coupon` ADD CONSTRAINT `PK_COUPON` PRIMARY KEY (
	`coupon_id`
);

ALTER TABLE `inquiry` ADD CONSTRAINT `PK_INQUIRY` PRIMARY KEY (
	`inquiry_id`
);

ALTER TABLE `accident_insurance` ADD CONSTRAINT `PK_ACCIDENT_INSURANCE` PRIMARY KEY (
	`accident_insurance_id`
);

ALTER TABLE `refund` ADD CONSTRAINT `PK_REFUND` PRIMARY KEY (
	`refund_id`
);

ALTER TABLE `information` ADD CONSTRAINT `PK_INFORMATION` PRIMARY KEY (
	`info_id`
);

ALTER TABLE `inquiry_comment` ADD CONSTRAINT `PK_INQUIRY_COMMENT` PRIMARY KEY (
	`inquiry_comment_id`
);

