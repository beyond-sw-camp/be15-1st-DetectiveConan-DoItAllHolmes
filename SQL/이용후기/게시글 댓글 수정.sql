-- TS_099 커뮤니티 게시글 댓글 수정
-- 게시판 댓글을 테이블 중 내용을 수정한다.
UPDATE board_comments
SET board_comments_content = "가나업체 대박이네요",
WHERE board_comments_content= 1;