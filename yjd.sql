ALTER TABLE sr_user ADD COLUMN user_type TINYINT NOT NULL DEFAULT 0 COMMENT '0、个人用户 1、企业用户';

DROP TABLE sr_company;
CREATE TABLE sr_company(
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		sruid INT NOT NULL COMMENT 'sr用户ID',
		legal_person_name VARCHAR(20) COMMENT '法人名称',
		legal_id_number VARCHAR(18) COMMENT '法人身份证',
		KEY idx_sruid(sruid)
		)COMMENT '企业信息表'; 
		
-- 增加实际放款金额
ALTER TABLE sr_order ADD COLUMN actual_loan_amount DECIMAL(19,0) DEFAULT NULL COMMENT '借款金额 单位（分）' AFTER loan_amount;
UPDATE sr_order SET actual_loan_amount = loan_amount;



ALTER TABLE sr_product MODIFY COLUMN product_code VARCHAR(20) NOT NULL COMMENT '产品code';






