-- TS-35 인테리어 상담 신청 취소	
-- 사용자는 상담 테이블에 자신이 신청한 상담을 취소 할 수 있다.
DELETE FROM counsel 
   WHERE counsel_id = 11 AND user_id = 16;
