-- TS-37인테리어 작업 단계 조회	
-- 사업자는 사용자와의 작업단계를 조회할 수 있다.
SELECT counsel_status
   FROM counsel 
   WHERE counsel_id = 9 AND business_user_id = 3 AND user_id = 19;