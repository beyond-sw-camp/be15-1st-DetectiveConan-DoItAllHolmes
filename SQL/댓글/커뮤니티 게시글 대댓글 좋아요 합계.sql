-- TS_111 커뮤니티 게시글 대댓글 좋아요 합계
-- 커뮤니티 게시글 대댓글의 좋아요 수의 합계를 구한다.
SELECT SUM(CASE WHEN a.board_like_is_delete = 'N' THEN 1 ELSE 0 END) AS total_reply_likes
FROM board_like a
JOIN board_comments b ON a.board_comments_id = b.board_comments_id
WHERE b.high_comment_id IS NOT NULL;
