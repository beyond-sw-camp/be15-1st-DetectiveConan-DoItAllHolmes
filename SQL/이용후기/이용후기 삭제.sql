-- TS_091 이용후기 삭제
-- 상담후기를 작성한 고객은 본인의 이용후기를 삭제할 수 있다.
DELETE FROM review
WHERE counsel_id IN (
    SELECT c.counsel_id
    FROM counsel c
    JOIN business_user b ON c.business_user_id = b.user_id
    WHERE c.counsel_status = '작업완료'
    AND c.user_id = 12
);