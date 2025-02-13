-- TS-53 이사 업체 게시글 작성
--	사업자는 포트폴리오테이블에서 이사 게시글 정보 글을 작성할 수 있다.
INSERT INTO portfolio ( user_id, is_delete)
   VALUES (7, DEFAULT);

INSERT INTO move (active_location, min_price, max_price, move_type, portfolio_id)
   VALUES ('부천', 100000, 250000, '반포장',102 );