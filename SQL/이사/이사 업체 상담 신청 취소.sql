-- TS-50 이사 업체 상담 신청 취소
--	사용자는 사업자에게 상담을 신청취소할 수 있다.
DELETE FROM counsel
   WHERE counsel_id = 12 OR (user_id = 9 AND business_user_id = 7);