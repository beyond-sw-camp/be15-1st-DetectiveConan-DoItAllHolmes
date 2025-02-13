-- TS_061 게시글 좋아요
-- 사용자가 게시글에 좋아요를 한다. 
INSERT INTO board_like ( board_id, user_id, board_like_is_delete)
SELECT b.board_id, 5, 'N' 
FROM board b
WHERE b.board_id = 7;