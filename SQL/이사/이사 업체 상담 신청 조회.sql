-- TS-46 이사 업체 상담 신청 조회
--	사업자는 상담 테이블에서 사용자가 신청한 상담을 조회할 수 있다.
SELECT * 
   FROM counsel
   WHERE business_user_id = 7 AND counsel_status = '상담신청';