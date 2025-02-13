-- TS-54 이사 업체 게시글 수정
--	사업자는 포트폴리오테이블에서 이사 게시글 정보 글을 수정할 수 있다.

UPDATE move a
	JOIN portfolio b ON a.portfolio_id = b.portfolio_id
	SET  active_location='서울', min_price=100000, max_price=300000, move_type='포장'
	WHERE a.portfolio_id = 102 AND b.user_id = 7;