-- TS-36 인테리어 작업 단계 수정
-- 사업자는 사용자와의 작업단계를 수정할 수 있다.
UPDATE counsel 
   SET counsel_status = '작업완료'
   WHERE counsel_id = 10 AND business_user_id = 3 AND user_id = 20;