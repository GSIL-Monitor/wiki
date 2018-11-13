SELECT * FROM sr_user WHERE user_phone = '12222222222' ;
SELECT * FROM sr_credit WHERE sruid = (SELECT id FROM sr_user WHERE user_phone = '12222222222');
SELECT * FROM sr_company WHERE sruid = (SELECT id FROM sr_user WHERE user_phone = '12222222222');


DELETE FROM sr_credit WHERE sruid = (SELECT id FROM sr_user WHERE user_phone = '12222222222');
DELETE FROM sr_company WHERE sruid = (SELECT id FROM sr_user WHERE user_phone = '12222222222');
DELETE FROM sr_user WHERE user_phone = '12222222222' ;