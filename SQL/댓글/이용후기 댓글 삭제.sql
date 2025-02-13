-- TS_096 업체 이용후기 댓글 삭제
-- 이용후기댓글 테이블의 내용을 삭제한다.
DELETE FROM review_comments
WHERE review_comments_id = 1
AND user_id = 7;    