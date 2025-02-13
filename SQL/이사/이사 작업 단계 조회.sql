-- TS-52이사 작업 단계 조회
--	사업자가 상담 테이블에서 작업 단계를 조회한다.
SELECT counsel_status
	from counsel
	WHERE counsel_id = 13 OR (user_id = 9 AND business_user_id = 7);