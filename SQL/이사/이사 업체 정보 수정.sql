-- TS-43 이사 업체 정보 수정
--	사업자는 사업자 정보 테이블에 작성한 업체 정보를 수정할수 있다4
UPDATE business_user
   SET business_number = '33333-33233', doc = 'http:ss', role = 'move',
	    company_name = '개나리', company_phone = '010-1234-1234', company_location = '구로'
   WHERE user_id = 7;