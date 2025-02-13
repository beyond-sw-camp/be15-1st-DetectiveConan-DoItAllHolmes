-- TS_063 게시글 좋아요 개수
-- 게시판에 좋아요 합계를 구한다.
SELECT COUNT(*) AS 좋아요
FROM board_like  
WHERE board_like_is_delete = 'N' and board_id=5;
