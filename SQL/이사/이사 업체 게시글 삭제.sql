-- TS-55 이사 업체 게시글 삭제
--	사업자는 포트폴리오테이블에서 이사 게시글 정보 글을 삭제할 수 있다.
UPDATE portfolio 
   SET is_delete = 'Y'
   WHERE portfolio_id = 102;