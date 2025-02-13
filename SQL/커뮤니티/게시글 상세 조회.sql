-- TS_057 게시글 상세 조회
-- 모든 회원은 게시판 테이블에 모든 게시글 중 특정 게시글을 선택해 조회한다.
SELECT *
FROM board
WHERE board_title = '현관*' OR board_content = '첫인상*' OR user_id = 6;