-- TS-42 이사 업체 정보 작성 	
-- 사업자는 업체 테이블에 업체 정보를 작성할 수 있다.
INSERT INTO business_user (user_id, business_number, doc, role, company_name, company_phone, company_location, is_delete)
   VALUES (7, '44444-44344', 'https//image', 'house', '개개나리', '010-5574-3343', '은평구', DEFAULT);