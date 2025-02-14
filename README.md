## 다 해줘 홈즈!🕵️‍♀️ 사용자 맞춤 이사, 인테리어, 부동산 추천 시스템 🏘  
---
<p align="center">
    <img src="https://github.com/user-attachments/assets/54785bc3-65f6-45c2-9458-b3ba2a02a990" width="300">
    <img src="https://github.com/user-attachments/assets/54095a8e-f1c9-4208-90f1-30e5a67af0d1" width="300">
</p>

### 🔍 Do It All, Holmes!

---

## 목차
1. [프로젝트 기획서](#Project-Proposal)
2. [프로젝트 세부 사항](#Project-Detail)
3. [WBS](#WBS)
4. [모델링](#Modeling)
5. [유스케이스](#Usecase)
6. [요구사항 명세서](#Software-Requirement-Specification)
7. [테이블 정의서](#Table-Definition-Document)
8. [서버 구축](#Server-Setup)
9. [테스트케이스 및 쿼리](#TestCase-and-Query)
10. [기술 스택](#Tech-Stacks)
11. [동료 평가](#Feedback)

---



## 👯‍♀️ 팀원 소개

<p align="center">
    <img src="https://github.com/user-attachments/assets/0abc9fa9-085e-488e-8691-ef8215d2c479" width="800">
</p>  

## Project-Proposal
## 목표
---
## ⭐ 집 구하는 것부터 시작해서 이사, 인테리어까지 ONE-STOP으로❣

### Project Overview
> **❣ 사용자는 한 번의 설문조사만으로 부동산 매물 확인, 인테리어, 이사 업체 연결까지 원스톱(ONE-STOP)으로 제공받아, 여러 업체에 일일이 정보를 문의하는 번거로움을 줄일 수 있습니다.**
> 
> **❣  정보의 비대칭성을 해소하기 위해 사용자들의 투명한 후기를 제공하여 보다 신뢰할 수 있는 결정을 내릴 수 있도록 돕습니다.**
> 
> **❣ 이 플랫폼은 사용자의 요구사항을 반영한 맞춤형 서비스를 제공하며, 바쁜 현대인들에게 편리함과 안정감을 선사하는 유용한 솔루션입니다.**  
### Problem Definition

> **🤦‍♀️ 매물 찾기부터 이사까지 최소 2주 ~ 8주 , 인테리어 1 ~ 2달, 업체 조사부터 연락, 날짜 선정 등 다 따로 따로 오랜 시간에 걸쳐 정해야 합니다.**
> 
> **🤦‍♀️ 빠르게 변화하는 리모델링 트렌드, 맞춤형 인테리어 수요 증가, 소셜 미디어의 영향에 따라 계속해서 증가하고 있습니다.**
> 
> **🤦‍♀️ 4,50대의 경우 전원생활 희망하며, 단독주택 인테리어까지 희망 하는데 핸드폰을 오래보는 것이 힘듭니다.**
> 
> **🤦‍♀️ 여러 이사 업체와 인테리어 회사가 있어 한 번에 쉽게 업체 간의 특징을 비교 가능한 어플이 없어 이사와 인테리어에 불만족하는 사용자 증가하고 있습니다.**
> 
> **🤦‍♀️ 집, 이사, 인테리어에 대한 정보를 찾기 위해 여러 업체와 서비스에 가입 해야 하는 번거로움이 있습니다.**  

<details>
 <summary>📰관련 기사</summary>
 
[**1인 가구 증가로 인한 이사 업체 수요 증가**](http://www.yongdal.pro/board/notice_view.html?n=45)  
[**4~50대 전원 생활 희망**](https://www.jutek.kr/user/selectBbsColumn.do?BBS_NUM=1374&COD03_CODE=c0318&MEN02_NUM=57&pageNum=1)  
[**인테리어 수요 증가**](https://blog.opensurvey.co.kr/article/living-2020-2/)

</details>
  
### Project Necessity
> **💡 한 번의 회원 가입으로 부동산 매물 검색부터 시작해, 맞춤형 인테리어 디자인과 이사 업체까지,  후기를 통해 신뢰할 수 있는 업체들과 사용자 한 명 한 명의 요구에 맞춰 최적의 선택을 가능하게 해준다.**  
> 
> **💡 이사 업체와 인테리어 업체에 대한 다른 사용자의 투명한 후기들로 인해 사용자들이 업체에 대해 불만족을 최대한 줄일 수 있다.**  
> 
> **💡 핸드폰을 오래 보는 것이 힘든 4,50대에게 빠르게 원하는 조건에 맞는 정보를 찾아준다.**  
>  
> **💡 집에 대한 고민이 있는 사람들에게 커뮤니티를 제공하여 정보를 공유할 수 있게 해준다.**    

  
## Project-Detail
  
### Target Customer
>
> **1️⃣ 나의 여건에 맞게 집을 구하고 싶다!**
>
> **2️⃣ 내가 생각하는 조건에 맞는 인테리어를 할 수 있는 업체를 빠르게 찾고 싶다!**
>  
> **3️⃣ 믿을 수 있는 업체를 소개 받고 싶다!**
>
>  ## → 위의 과정을 ONE-STEP으로 소개 받고 싶은 사람🙋‍♀️
  
### Main Function
>  **🏘 부동산 매물 검색**  
> **지역, 가격, 면적 등 사용자의 조건에 맞는 다양한 매물을 검색하고 비교 가능!**
>   
>  **🛏 인테리어 디자인 서비스**     
> **각 인테리어 업체가 제공하는 다양한 디자인 포트폴리오를 확인하여, 자신이 원하는 스타일과 분위기를 갖춘 디자인을 쉽게 선택!**
>   
>  **📦 이사 업체 연결**   
> **사용자는 포장이사와 반포장이사 등 다양한 이사 서비스 종류를 선택하여 자신에게 가장 적합한 옵션을 결정하고, 이사 일정을 예약!**  
>   
>  **💟 커뮤니티**   
> **커뮤니티를 통해 누구나 자신의 방의 인테리어나 가구를 소개하는 글을 작성해 서로 소통 가능!**   



### Product

## WBS
<details>
<summary>WBS</summary>
 
![WBS](./images/wbs1.png)  
![WBS](./images/wbs2.png)

</details>



## Usecase
<details>
<summary>유스케이스</summary>
 
![유스케이스](./images/usecase.png)

</details>

## Software-Requirement-Specification

<details>
<summary>요구사항 명세서</summary>
 
![image](https://github.com/user-attachments/assets/8f17ed82-ecb8-49bf-b74f-0f3e947739c2)

![image](https://github.com/user-attachments/assets/04393ec0-ee30-4140-a76b-f58ff63b8fbe)

![image](https://github.com/user-attachments/assets/80b5607f-a131-471e-9536-4ff4070f8935)

</details>

## Table-Definition-Document

<details>
 <summary> 테이블 정의서 </summary>
 
![image](https://github.com/user-attachments/assets/eea896ca-b5fe-440d-bc77-dab3d527ed1a)
![image](https://github.com/user-attachments/assets/787d9b1b-a94d-492a-b902-c20eb9d340d9)
![image](https://github.com/user-attachments/assets/c90e41d6-47d7-45bf-be7f-1db46af04295)
![image](https://github.com/user-attachments/assets/bfd06a7d-6cf5-4396-b274-2450f02a9d78)

</details>

## Modeling

<details>
<summary>Logical Data Modeling</summary>

![logical](./images/logical_modeling.png)


</details>

<details>
<summary>Physical Data Modeling</summary>

![physical](./images/physical_modeling.png)



</details>

## Server-Setup
### Replication 서버 구축
   **1. 개요**  
* Master-Slave 서버를 구축하고, 데이터 베이스 복제를 설정하는 과정을 기록  
* 이는 데이터 무결성 유지 및 부하 분산을 위해 구현 
</br>

  **2. 목적**
* 데이터 무결성 및 고가용성 유지
* 부하 분산
* 백업 및 복구 용이  

</br>

**3. Master 및 Slave 서버 연동**  
![서버 연동](./images/master_server.png)

![서버 연동](./images/slave_server.png)
</br>
</br>
**4. Master 서버에 데이터베이스 생성 후 Slave 서버에 동기화**
![데이터 베이스 생성](./images/master_database_creating.png)

</br>

**5. slave 서버에서 데이터 변경 시 read only옵션으로 인한 오류 발생**

![데이터 베이스 생성](./images/slave_database_creating.png)
## TestCase-and-Query
<details>
<summary>💌테스트 케이스</summary>

 ![테스트케이스](./images/image1.png)
 ![테스트케이스](./images/image2.png)
 ![테스트케이스](./images/image3.png)
 ![테스트케이스](./images/image4.png)
 ![테스트케이스](./images/image5.png)
 

</details>

<details>
<summary> 👩회원</summary>
<div markdown="1">
</div>

<details>
<summary>¹로그인</summary>
<div markdown="1">

![image](https://github.com/user-attachments/assets/b9958d75-0782-4685-b505-339da2e9ab4d)
![image](https://github.com/user-attachments/assets/7d650f69-e09f-439a-9c33-3996d0a93565)

</div>
</details>

<details>
<summary>²회원가입</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/225728f9-59fb-4cba-9a0c-d699d29f7907)
![image](https://github.com/user-attachments/assets/bfbf55c1-a52d-4426-9e97-cdde68c08f60)

</div>
</details>

<details>
<summary>³회원 정보 수정</summary>
<div markdown="1">

![image](https://github.com/user-attachments/assets/7fda30b2-8622-46ae-abcd-98796c396357)

</div>
</details>

<details>
<summary>⁴회원정보찾기</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/54e26e95-03c2-44a3-8eaf-8b2bc8967a07)

</div>
</details>

<details>
<summary>⁵회원신고</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/f4dade90-feee-452a-aebb-cc67e5b5a572)

</div>
</details>

<details>
<summary>⁶내가 쓴 이용후기 모아보기</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/198cfbc6-0a18-44d2-8327-cfcced8690b3)

</div>
</details>

<details>
<summary>⁷즐겨찾기 모아보기</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/0b36b278-0e50-4b17-9289-9679be2d89ff)
![image](https://github.com/user-attachments/assets/2d67c737-2ba2-457c-a3e3-0985ff59eece)

</div>
</details>

<details>
<summary>⁸회원탈퇴</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/099d93ff-b039-4e52-ac3c-dcd1d31fe526)
![image](https://github.com/user-attachments/assets/12e5372f-cf31-49e9-8f70-df2e638af643)

</div>
</details>

<details>
<summary>⁹상담 신청 목록 조회</summary>
<div markdown="1">

![image](https://github.com/user-attachments/assets/664bd5c5-acaf-4276-b330-86e329c033c5)
![image](https://github.com/user-attachments/assets/17cd40ef-548d-4657-9f9a-1117a66e90eb)

</div>
</details>

<details>
<summary>¹⁰상담 신청 내용 상세 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/aaf34af1-bdfb-4256-aeff-f5a0c1d64d3d)

</div>
</details>
</details>

<details>
<summary> 🏠부동산</summary>
<div markdown="1">
</div>

<details>
<summary>¹부동산 업체 정보 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/0614dc59-ebfb-4b78-a19b-c24db7872927)
![image](https://github.com/user-attachments/assets/789e5d69-22cb-4edb-bb0e-1b75c332d3ba)

</div>
</details>

<details>
<summary>²부동산 업체 정보 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/d49c4793-9382-463d-a94f-5fd8556de6a1)

</div>
</details>

<details>
<summary>³부동산 업체 정보 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/1686772c-0045-445b-9045-38ea832766e4)
![image](https://github.com/user-attachments/assets/145f64d8-9d8c-49a2-b30f-afdfcbe35eba)

</div>
</details>

<details>
<summary>⁴부동산 업체 정보 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/5784f9b9-bf4b-4b10-89e9-3368dbd03e63)

</div>
</details>

<details>
<summary>⁵부동산 매물 글 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/d9ddc036-877c-4c82-99a4-f9cc9a11495e)

</div>
</details>

<details>
<summary>⁶부동산 매물 글 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/25c7a12f-a10f-4354-afb2-16ba3161e964)
 ![image](https://github.com/user-attachments/assets/c42e20e7-337a-4ac4-be72-05bd1b168490)

</div>
</details>

<details>
<summary>⁷부동산 매물 글 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/fd5f2d51-a587-44ed-bb3d-3c5cd3a0f3ca)

</div>
</details>

<details>
<summary>⁸부동산 매물 글 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/ff7d0185-16c3-4397-9b22-cb37c54972a2)
 ![image](https://github.com/user-attachments/assets/df35d5bd-9bce-44f6-971b-afa304108d53)

</div>
</details>

<details>
<summary>⁹부동산 상담 신청 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/8606b1cf-3a6c-4b68-8743-4644b22cd0bd)

</div>
</details>

<details>
<summary>¹⁰부동산 상담 신청 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/6408335d-2587-4b92-b4e7-f264c9b5f4e2)

</div>
</details>

<details>
<summary>¹¹부동산 상담 신청 취소</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/df6f1e5c-a0d9-4a11-8f54-e96926098025)

</div>
</details>

<details>
<summary>¹²부동산 즐겨찾기 기능</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/c03a9983-f31b-4481-94f7-8cc950d55089)

</div>
</details>

<details>
<summary>¹³부동산 즐겨찾기 취소</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/0f78660d-efca-47f4-87ca-32dc3f36265a)
 ![image](https://github.com/user-attachments/assets/ad4bc8ab-e99c-44bf-af22-86346e30c347)

</div>
</details>

<details>
<summary>¹⁴부동산 작업 단계 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/8d019714-267f-4fc2-98b3-629844d86128)
 ![image](https://github.com/user-attachments/assets/df815840-4d3d-45d1-800a-78262cbc0614)

</div>
</details>

<details>
<summary>¹⁵부동산 작업 단계 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/81fed87c-0efd-489f-ad3e-bfce0e136228)

</div>
</details>
</details>

<details>
<summary> 🛋️인테리어</summary>
<div markdown="1">
</div>

<details>
<summary>¹인테리어 업체 정보 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/f53ce442-761a-43fa-95d2-d20ef4690058)

</div>
</details>

<details>
<summary>²인테리어 업체 정보 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/68291c63-4ebc-43b6-af1f-5bcfb3d6520b)
![image](https://github.com/user-attachments/assets/3ae39fbb-4c66-4064-8af1-5220b3ace029)

</div>
</details>

<details>
<summary>³인테리어 업체 정보 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/c3af70ae-4f77-4740-a9f6-9f2190c5237f)

</div>
</details>

<details>
<summary>⁴인테리어 업체 정보 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/10416c7d-d12a-4e7e-91ff-51471b3166f2)

</div>
</details>

<details>
<summary>⁵인테리어 상담 신청 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/4fa34bcd-2d1e-4316-92ab-3bc6b94f4fb8)

</div>
</details>

<details>
<summary>⁶인테리어 상담 신청 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/16dc4576-ba93-4f8a-9daa-2bc0e033088c)

</div>
</details>

<details>
<summary>⁷인테리어 상담 신청 취소</summary>
<div markdown="1">

![image](https://github.com/user-attachments/assets/ed67f352-98f0-4efe-8d39-5b1493b86318)

</div>
</details>

<details>
<summary>⁸인테리어 업체 즐겨찾기 기능</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/fa3da8c3-601f-4242-902d-ac2b192db3b5)

</div>
</details>

<details>
<summary>⁹인테리어 업체 즐겨찾기 취소</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/8aae1015-456a-45dd-86e4-8758d6f5641c)

</div>
</details>

<details>
<summary>¹⁰인테리어 작업 단계 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/3129df90-5e19-4363-8391-4949563e6598)

</div>
</details>

<details>
<summary>¹¹인테리어 작업 단계 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/2f30e888-91b7-4bbd-a9a7-9775dbadb59c)

</div>
</details>

<details>
<summary>¹²인테리어 게시글 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/48e557d4-f059-40c4-99cf-f00944be2277)

</div>
</details>

<details>
<summary>¹³인테리어 게시글 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/689cb9e0-c3b4-49de-ad7d-183a32f6bced)

</div>
</details>

<details>
<summary>¹⁴인테리어 게시글 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/8b9a8e3d-bacb-4ac5-88a0-c06339dc7e71)

</div>
</details>

<details>
<summary>¹⁵인테리어 게시글 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/c840e6d2-78fe-4c88-a630-f38938cf4038)

</div>
</details>
</details>

<details>
<summary> 📦이사</summary>
<div markdown="1">
</div>

<details>
<summary>¹이사 업체 정보 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/700962bf-8ca6-483a-9426-b091484f1e6f)

</div>
</details>

<details>
<summary>²이사 업체 정보 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/a9962b2a-f7c4-488a-acef-f6b81d7935d2)

</div>
</details>

<details>
<summary>³이사 업체 정보 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/9fc2aff8-f070-4bfa-8c2b-e2ab0acdbd86)

</div>
</details>

<details>
<summary>⁴이사 업체 정보 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/df878800-f8a7-4cf8-b35f-2547e7d9c9aa)

</div>
</details>

<details>
<summary>⁵이사 업체 상담 신청 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/d2dfa6c0-c04d-436c-a79b-d7eb612527c5)

</div>
</details>

<details>
<summary>⁶이사 업체 상담 신청 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/2619f775-a34a-46de-a4be-1b7cdb90af9b)

</div>
</details>

<details>
<summary>⁷이사 업체 상담 신청 취소</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/a728d0fa-448e-4761-b977-0762c746f471)

</div>
</details>

<details>
<summary>⁸이사 업체 즐겨찾기 기능</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/1ee25f63-3907-4665-9ccf-f5cc831e1186)

</div>
</details>

<details>
<summary>⁹이사 업체 즐겨찾기 취소</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/550aa413-51be-4b75-92ab-64c72f2fe00f)

</div>
</details>

<details>
<summary>¹⁰이사 작업 단계 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/6ed36a64-30cf-4c06-8e6d-7f33ab0d5d90)

</div>
</details>

<details>
<summary>¹¹이사 작업 단계 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/36df0dd0-907e-4f00-9a22-bdd5d7bc4b55)

</div>
</details>

<details>
<summary>¹²이사 업체 게시글 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/a4ebe0d1-ba30-4e6d-b85b-48fe2ef3b1e4)

</div>
</details>

<details>
<summary>¹³이사 업체 게시글 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/5901f87c-ebb9-4ca0-bc1b-0283ed515413)

</div>
</details>

<details>
<summary>¹⁴이사 업체 게시글 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/01d226a5-7441-4439-806c-65b2dd1d45e2)

</div>
</details>

<details>
<summary>¹⁵이사 업체 게시글 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/e59e5875-e01a-4afa-a5db-d101ec42d03d)

</div>
</details>
</details>

<details>
<summary> 💬커뮤니티</summary>
<div markdown="1">
</div>

<details>
<summary>¹게시글 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/6c4519c8-d761-4472-bb45-c814b501015d)

</div>
</details>

<details>
<summary>²게시글 상세 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/bd598f91-92da-48da-868b-8f1d2c98c6cc)

</div>
</details>

<details>
<summary>³게시글 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/5bcffad0-c6dd-45cd-8040-5f2e990442ea)

</div>
</details>

<details>
<summary>⁴게시글 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/6cc52218-5004-4ab8-a85a-e64a90bae380)

</div>
</details>

<details>
<summary>⁵게시글 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/a303a507-1437-4194-b19f-53ba4a037f6f)

</div>
</details>

<details>
<summary>⁶게시글 좋아요</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/ca39b3ff-a5c1-48dd-9cc3-59aa1dea264b)

</div>
</details>

<details>
<summary>⁷게시글 좋아요 취소</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/544818ea-4cce-4237-95bc-3f84d96348b7)

</div>
</details>

<details>
<summary>⁸게시글 좋아요 개수</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/b48e7794-8b99-483f-8e21-7b9b247d7ea3)

</div>
</details>

<details>
<summary>⁹공지사항 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/38c0f985-e5fa-40ef-b34b-5be7add6cb6a)

</div>
</details>
</details>

<details>
<summary> 📝설문</summary>
<div markdown="1">
</div>

<details>
<summary>¹매물 설문지 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/37c89db7-2008-48f1-a332-a6ca6d9284ca)

</div>
</details>

<details>
<summary>²매물 설문지 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/be54d8c3-28e5-4517-b9e6-c15bc93581a9)

</div>
</details>

<details>
<summary>³매물 설문지 조회</summary>
<div markdown="1">

![image](https://github.com/user-attachments/assets/21ffd527-00a3-46e2-9250-a731dc855f45)
 
</div>
</details>

<details>
<summary>⁴이사 업체 설문지 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/8431c337-dbd6-4b5e-8343-551c954d6c1e)

</div>
</details>

<details>
<summary>⁵이사 업체 설문지 수정</summary>
<div markdown="1">

![image](https://github.com/user-attachments/assets/c2a8ccc8-c943-41f4-8c3e-12d81a766fd4)

</div>
</details>

<details>
<summary>⁶이사 업체 설문지 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/1af3486f-525d-44a0-8672-fb99c1b48901)

</div>
</details>

<details>
<summary>⁷인테리어 설문지 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/a560e394-190c-42d5-a3b5-a79adbb5f441)

</div>
</details>

<details>
<summary>⁸인테리어 설문지 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/c088cb5f-3404-4352-878f-aaf7803c57e3)

</div>
</details>

<details>
<summary>⁹인테리어 설문지 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/3730d198-83e0-41da-b8d1-f4affa741d73)

</div>
</details>
</details>

<details>
<summary> 😍매칭</summary>
<div markdown="1">
</div>

<details>
<summary>¹매물 매칭</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/36482695-3945-44cc-a97d-1ec4f50ff01a)


</div>
</details>

<details>
<summary>²이사 업체 매칭</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/f8a90455-6c35-4312-b06d-247f091f5761)
![image](https://github.com/user-attachments/assets/7881c197-8c5d-4571-9afa-b8af8fa66767)

</div>
</details>

<details>
<summary>³인테리어 업체 매칭</summary>
<div markdown="1">

![image](https://github.com/user-attachments/assets/105ba380-4768-4131-b6c7-bd375f8477fe)



</div>
</details>
</details>

<details>
<summary> 👨‍💼관리자</summary>
<div markdown="1">
</div>

<details>
<summary>¹회원 정보 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/082141ed-fe02-4646-9ee2-6eea10bce908)

</div>
</details>

<details>
<summary>²회원 정보 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/81420ea9-6dda-4ac2-b9ed-b808a083b1ee)

</div>
</details>

<details>
<summary>³사업자 인증 확인</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/c6711f6d-67e3-495f-a712-26c821d74f86)

</div>
</details>

<details>
<summary>⁴사업자 정보 조회</summary>
<div markdown="1">

![image](https://github.com/user-attachments/assets/0e72f018-18fa-4afd-9287-f749dd7ec3d3)

 
</div>
</details>

<details>
<summary>⁵사업자 정보 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/97662254-d2cc-4bda-8042-b8a7e283d0cf)

</div>
</details>

<details>
<summary>⁶회원 차단</summary>
<div markdown="1">

![image](https://github.com/user-attachments/assets/5f6d7899-a46a-41f7-b90b-a81e667136be)
 
</div>
</details>

<details>
<summary>⁷게시글 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/455be502-93d6-49d3-9247-fbd7ac45bc1c)

</div>
</details>

<details>
<summary>⁸공지사항 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/3ee80d6c-63f4-406b-b9dc-d7febdcf2a64)

</div>
</details>

<details>
<summary>⁹공지사항 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/7da2d454-e544-4d27-8f20-711469707125)

</div>
</details>

<details>
<summary>¹⁰공지사항 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/2576d623-7a3f-488b-b08b-dd5407f25aa0)

</div>
</details>

<details>
<summary>¹¹통계데이터 조회</summary>
<div markdown="1">

![image](https://github.com/user-attachments/assets/e6990f8a-359f-4afe-a7b8-2a4fe4474394)
![image](https://github.com/user-attachments/assets/4b163807-e483-4034-94b4-6b5d9e8f8e96)
![image](https://github.com/user-attachments/assets/9813a5c1-284c-4386-93fc-03f723232a14)
![image](https://github.com/user-attachments/assets/84ed2927-1a7c-462e-b5ed-d6c80e250389)
![image](https://github.com/user-attachments/assets/e47efb29-d5eb-45cc-b42c-42dd5eaa1efe)
![image](https://github.com/user-attachments/assets/9b65bf34-268b-4e8d-b0c0-1fe08b679390)

</div>
</details>

<details>
<summary>¹²작업 단계 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/c3630d44-6f8f-457c-bae9-01f66ea31d4e)

</div>
</details>
</details>

<details>
<summary> ⌨️이용 후기</summary>
<div markdown="1">
</div>

<details>
<summary>¹이용 후기 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/d20ebd56-54a4-4b3b-b0fa-ff4077c6ee7e)

</div>
</details>

<details>
<summary>²이용 후기 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/d6b3cfb2-6ef7-49ad-9b54-7a86a7292283)

</div>
</details>

<details>
<summary>³이용 후기 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/22e07331-4165-48f1-985a-f56512614216)
 ![image](https://github.com/user-attachments/assets/cfdf13e5-3475-4c8f-a1ef-f2e916ae34b2)

</div>
</details>

<details>
<summary>⁴이용 후기 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/c527d163-43f3-461d-862d-ceae14cc0b00)

</div>
</details>

<details>
<summary>⁵특정 이용 후기 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/5ac5ff1e-7b33-4809-b9f1-0810de7e0d8a)

</div>
</details>
</details>

<details>
<summary> 🖥️댓글</summary>
<div markdown="1">
</div>

<details>
<summary>¹업체 이용후기 댓글 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/4eec621a-0fd2-490e-85bc-a15394ea7e44)

</div>
</details>

<details>
<summary>²업체 이용후기 댓글 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/a48af61c-9d7c-4689-913d-f4cfac31b8ef)
 ![image](https://github.com/user-attachments/assets/e0f6f51e-ec79-4a30-beb5-814ed5b948ac)

</div>
</details>

<details>
<summary>³업체 이용후기 댓글 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/3f847f84-a31f-415c-bf4d-1b879b07c418)
![image](https://github.com/user-attachments/assets/73d7be17-5ffb-4a68-bfe5-4a5aefb7af80)

</div>
</details>

<details>
<summary>⁴업체 이용후기 댓글 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/321ba4a5-b0d9-445d-ab9a-dcc5624fc5ea)

</div>
</details>

<details>
<summary>⁵커뮤니티 게시글 댓글 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/c9b98c0f-b199-4982-b8c6-6b5f8df745ee)

</div>
</details>

<details>
<summary>⁶커뮤니티 게시글 댓글 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/d5f4570b-85ee-4e9b-a521-304fb64cb1c0)

</div>
</details>

<details>
<summary>⁷커뮤니티 게시글 댓글 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/cdc52592-1129-45d3-ab83-47911202cbcc)

</div>
</details>

<details>
<summary>⁸커뮤니티 게시글 댓글 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/77627898-790b-40c0-bfb6-c303e65058f2)

</div>
</details>

<details>
<summary>⁹커뮤니티 게시글 댓글 좋아요</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/c48c82ed-3c0d-4dd9-bbfa-16e0d4625f9b)

</div>
</details>

<details>
<summary>¹⁰커뮤니티 게시글 댓글 좋아요 취소</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/18d7a962-5d31-466b-b2f9-a38971809448)

</div>
</details>

<details>
<summary>¹¹커뮤니티 게시글 댓글 좋아요 합계</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/ad2e1eac-2190-416c-a0c2-f9639ea68000)

</div>
</details>

<details>
<summary>¹²커뮤니티 게시글 대댓글 작성</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/d0778ae1-3e80-4f90-9011-10096a230a7f)

</div>
</details>

<details>
<summary>¹³커뮤니티 게시글 대댓글 조회</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/f02672bb-a4f8-44f6-8320-e82dc2f5ad90)

</div>
</details>

<details>
<summary>¹⁴커뮤니티 게시글 대댓글 수정</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/41213766-7a11-4959-b1fa-997e44e75f07)

</div>
</details>

<details>
<summary>¹⁵커뮤니티 게시글 대댓글 삭제</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/2340aa67-0beb-4e30-96f5-9f413ca0ffa8)

</div>
</details>

<details>
<summary>¹⁶커뮤니티 게시글 대댓글 좋아요</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/009640e9-2177-464f-8c6e-5f077417a04f)

</div>
</details>

<details>
<summary>¹⁷커뮤니티 게시글 대댓글 좋아요 취소</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/9fdecd21-8a6a-46c8-aa32-b1de1bea8300)

</div>
</details>

<details>
<summary>¹⁸커뮤니티 게시글 대댓글 합계</summary>
<div markdown="1">

 ![image](https://github.com/user-attachments/assets/6598357e-f9e4-49ad-bac5-0d848e2d1cf1)

</div>
</details>
</details>

<details>
<summary> 🛖관련 Storaged Object</summary>
<div markdown="1">
</div>
<details>
<summary>후기 작성 시 상담 상태 확인 트리거</summary>
<div markdown="1">

 ![trigger](./images/trigger_status_confirm.png)

</div>
</details>

<details>
<summary>회원 탈퇴시 관련 데이터 정리 트리거</summary>
<div markdown="1">

![trigger](./images/trigger_signout.png)
![trigger](./images/trigger_signout_result.png)
![trigger](./images/trigger_signout_result2.png)
![trigger](./images/trigger_signout_result3.png)
</div>
</details>
<details>
<summary>신고횟수 초과 시 자동 상담 요청을 생성하는 트리거</summary>
<div markdown="1">

 ![trigger](./images/trigger_report.png)
 ![trigger](./images/trigger_report_result.png)
</div>
</details>

<details>
<summary>특정 사용자가 작성한 모든 후기 가져오기 프로시져</summary>
<div markdown="1">

 ![procedure](./images/procedure_1st.png)

</div>
</details>

<details>
<summary>특정 상담 상태 변경 프로시져</summary>
<div markdown="1">
    
![procedure](./images/counsel_status_before_result.png)
![procedure](./images/counsel_status.png)

</div>
</details>

<details>
<summary>Top3 즐겨찾기 조회 프로시저</summary>
<div markdown="1">

![procedure](./images/procedure_favorite.png)

</div>
</details>
<details>
<summary>Top3 게시판 좋아요 조회 프로시저</summary>
<div markdown="1">

![procedure](./images/procedure_likes.png)

</div>
</details>

<details>
<summary>일자별 가입 사용자 수 조회 프로시저</summary>
<div markdown="1">

 ![procedure](./images/procedure_date_user.png)

</div>
</details>

<details>
<summary>일자별 가입 사업자 수 조회 프로시저</summary>
<div markdown="1">

![procedure](./images/procedure_date_business_user.png)

</div>
</details>

<details>
<summary>월자별 가입 사용자 수 조회</summary>
<div markdown="1">

 ![function](./images/function_month_user.png)

</div>
</details>

<details>
<summary>월자별 가입 비즈니스 사용자 수 조회</summary>
<div markdown="1">

 ![function](./images/function_month_business.png)

</div>
</details>


</details>
</details>

## Tech-Stacks

| Category   | Tools/Technologies |
|------------|--------------------|
| Database   |   <img src="https://img.shields.io/badge/mariadb-003545?style=for-the-badge&logo=mariadb&logoColor=white"> <img src="https://img.shields.io/badge/HeidiSQL-4479A1?style=for-the-badge&logo=heidisql&logoColor=white" />          |
| OS    |   <img src="https://img.shields.io/badge/linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">  <img src="https://img.shields.io/badge/ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=black">|
| collaboration tool | <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white"> <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"> ![Figma](https://img.shields.io/badge/figma-%23F24E1E.svg?style=for-the-badge&logo=figma&logoColor=white) </br>  <img src="https://img.shields.io/badge/discord-5865F2?style=for-the-badge&logo=discord&logoColor=white"> <img src="https://img.shields.io/badge/notion-000000?style=for-the-badge&logo=notion&logoColor=white">     |
| Modeling |   <img src="https://img.shields.io/badge/da%23-84A454?style=for-the-badge&logo=&logoColor=black" alt="da#"> <img src="https://img.shields.io/badge/ERD_Cloud-4A90E2?style=for-the-badge&logo=cloud&logoColor=white" /> <img src="https://img.shields.io/badge/Draw.io-F08705?style=for-the-badge&logo=diagrams.net&logoColor=white" />  |

## Feedback 
| 조원명 | REIVIEW |
| --- | --- |
| 김기홍 |내용 삽입|
| 김태환 |내용 삽입|
| 부재녕 |프로젝트를 진행하면서 수업 시간에 이해하지 못했던 것들을 다시 한 번 경험해 볼 수 있어서 너무 좋았던 것 같습니다. 첫 프로젝트여서 어떻게 해야 할지 막막하고 정말 너무 부족한 실력이었지만 많은 걸 가르쳐 주시고 인내심 있게 기다려 주신 팀원들에게 감사합니다. 좋은 팀원들을 만나 첫 프로젝트를 무사히 잘 끝낼 수 있었습니다. 팀원들 덕분에 한 단계 더 성장할 수 있었던 기회였습니다!!! |
| 이기연 |내용 삽입|
| 이채은 |내용 삽입|
| 최지혜 |내용 삽입|

