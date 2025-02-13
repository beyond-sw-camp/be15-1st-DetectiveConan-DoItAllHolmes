-- TS_010. 상담 신청 내용 상세 조회
-- 회원번호 11번인 상담인 것들 모두 조회
SELECT * FROM counsel
WHERE user_id = 11;

-- 그 중에서 특정 상담 상세
SELECT * FROM counsel
WHERE counsel_id = 1;