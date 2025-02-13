-- TS_109 커뮤니티 게시글 대댓글 좋아요
-- 커뮤니티 게시글 대댓글에 좋아요를 한다.
UPDATE board_like
SET board_like_is_delete = 'N' 
WHERE board_comments_id = 4 
  AND user_id = 1;