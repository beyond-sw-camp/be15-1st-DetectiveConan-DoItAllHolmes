-- TS_102 커뮤니티 게시글 댓글 좋아요
-- 커뮤니티 게시글 댓글에 좋아요를 한다.
UPDATE board_like
SET board_like_is_delete = 'N'
WHERE board_comment_id = 1;
