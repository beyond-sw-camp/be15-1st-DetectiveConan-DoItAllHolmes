-- TS-41 인테리어 게시글 조회
--	사업자와 사용자는 포트폴리오테이블에서 인테리어 게시글 정보 글을 조회할 수 있다.
SELECT 
    a.interior_image, a.concept, a.interior_house_type, a.interior_house_size, a.interior_budget, a.construction_date,
    c.company_name, c.company_phone, c.company_location
		FROM interior a 
		JOIN portfolio b ON a.portfolio_id = b.portfolio_id 
		JOIN business_user c ON b.user_id = c.user_id
		WHERE b.portfolio_id = 101;