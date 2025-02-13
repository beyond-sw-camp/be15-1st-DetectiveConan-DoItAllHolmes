-- TS_090 이용후기 수정
-- 상담후기를 작성한 고객은 본인의 이용후기를 수정할 수 있다.
UPDATE review r
SET review_contents = '새로운 리뷰 내용'
WHERE EXISTS (
   SELECT 1
   FROM counsel c
   WHERE c.counsel_status = '작업완료'
   AND c.counsel_id = r.counsel_id
);
