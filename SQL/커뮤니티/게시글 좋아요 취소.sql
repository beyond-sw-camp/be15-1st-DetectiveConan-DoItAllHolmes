-- TS_062 게시글 좋아요 취소
-- 사용자가 게시글에 좋아요를 취소한다.
UPDATE board_like
SET board_like_is_delete = 'Y'
WHERE board_id = 7 AND user_id = 5;
