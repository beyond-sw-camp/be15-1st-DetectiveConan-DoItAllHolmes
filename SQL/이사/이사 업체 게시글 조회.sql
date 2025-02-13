-- TS-56 이사 업체 게시글 조회
--	사업자와 사용자는 포트폴리오테이블에서 이사 게시글 정보 글을 조회할 수 있다.
SELECT 
    a.active_location, a.min_price, a.max_price, a.move_type,
    c.company_name, c.company_phone, c.company_location
		FROM move a 
		JOIN portfolio b ON a.portfolio_id = b.portfolio_id 
		JOIN business_user c ON b.user_id = c.user_id
		WHERE b.portfolio_id = 102;