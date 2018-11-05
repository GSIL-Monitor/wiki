ALTER TABLE sr_user ADD COLUMN TYPE INT(2) NOT NULL DEFAULT '0' AFTER email COMMENT '1:个人 2:企业';

DROP TABLE sr_company;
CREATE TABLE sr_company(
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		sruid INT NOT NULL COMMENT 'sr用户ID',
		legal_person_name VARCHAR(20) COMMENT '法人名称',
		legal_id_number VARCHAR(18) COMMENT '法人身份证',
		ctime INT(11) DEFAULT NULL,
		mtime INT(11) DEFAULT NULL,
		KEY idx_sruid(sruid)
		)COMMENT '企业信息表'; 
		
-- 增加实际放款金额

ALTER TABLE sr_order ADD COLUMN lending_amount DECIMAL(19,0) DEFAULT NULL AFTER signing_time COMMENT '放款金额 单位（分）';
UPDATE sr_offline_repayment SET lending_amount = loan_amount;



ALTER TABLE sr_product MODIFY COLUMN product_code VARCHAR(20) NOT NULL COMMENT '产品code';