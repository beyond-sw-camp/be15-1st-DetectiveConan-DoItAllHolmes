-- TS_104 커뮤니티 게시글 댓글 좋아요 합계
-- 커뮤니티 게시글 댓글의 좋아요 수의 합계를 구한다.
SELECT COUNT(board_like_id)
FROM board_like
WHERE board_comments_id = 3
AND board_like_is_delete = 'N';