-- TS-51 이사 작업 단계 수정
--	사업자가 상담 테이블에서 작업 단계를 수정한다.
UPDATE counsel 
	SET counsel_status = '상담중'
	WHERE counsel_id = 13 OR (user_id = 9 AND business_user_id = 7);