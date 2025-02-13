-- TS_026. 인테리어 업체 정보 작성
-- 사업자 등록(인증 절차)
INSERT INTO business_user (user_id, business_number, doc, role, company_name, company_phone, company_location)
        VALUES (7, '345-67-89012', 'doc3.pdf', 'interior', '디자인하우스 인테리어', '051-265-9874',
		  '부산시 해운대구 해운대로 120');;
        
        
-- business 유저로 변경
UPDATE user
SET ROLE = "business"
WHERE user_id = 7;

SELECT * FROM user
WHERE user_id = 7;

SELECT * FROM business_user
WHERE user_id = 7;