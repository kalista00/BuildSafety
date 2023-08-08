# **PORTFOLIO**

## **📗 목차**

<b>

- 📝 [개요](#-포트폴리오-개요)
- 🛠 [기술 및 도구](#-기술-및-도구)
- 🔗 [링크](#-링크)
- 👨🏻‍💻 [기능 구현](#-기능-구현)
  - [메인페이지](#1-메인페이지)
  - [로그인](#2-로그인)
  - [지도](#3-지도)
  - [시공/설계 지도 다음페이지](#4-시공/설계-지도-다음페이지)
  - [안전/설계지침(시공/설계)](#5-안전/설계지침(시공/설계))
  - [기타](#6-기타-기능)
- 🚀 [배포](#-배포)
- ⏰ [커밋 히스토리](#-커밋-히스토리)

</b>

## **📝 포트폴리오 개요**

> **프로젝트:** 기상건축도우미
>
> **기획 및 제작:** 김창희 외 1명
>
> **분류:** 팀 프로젝트
>
> **제작 기간:** 2023.06 ~ 07.
>
> **주요 기능:** 건축시공시 안전지침 제공, 건축설계 시 고려사항 제공, 세션관리(Spring AOP), 카카오로그인, 카카오지도, 채용정보, 계획서, 메인페이지 및 소개
>
> **사용API:** 공공데이터 API(기상정보, 채용정보), ChatGPT API, 카카오 API(지도, 로그인)
>
> **문의:** rambo71025453@gmail.com
 
<br />

## **🛠 기술 및 도구**
<p align="center">
  <img src="https://img.shields.io/badge/Spring-6DB33F?style=flat&logo=Spring&logoColor=white"></a>&nbsp
  <img src="https://img.shields.io/badge/Java11-007396?style=flat&logo=OpenJDK&logoColor=white"/>
  <img src="https://img.shields.io/badge/html5-%23E34F26.svg?style=flat&logo=html5&logoColor=white"/></a> &nbsp
  <img src="https://img.shields.io/badge/css-1572B6?style=flat-square&logo=css3&logoColor=white"/></a>&nbsp 
  <img src="https://img.shields.io/badge/javascript-%23323330.svg?style=flat&logo=javascript&logoColor=%23F7DF1E"/></a> &nbsp
  <img src="https://img.shields.io/badge/oracle-F80000?style=flat&logo=oracle&logoColor=white"></a>&nbsp 
  <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=flat&logo=apachetomcat&logoColor=white"></a>&nbsp 
  <img src="https://img.shields.io/badge/github-181717.svg?style=flat&logo=github&logoColor=white"></a>&nbsp 
  <img src="https://img.shields.io/badge/Eclipse-FE7A16.svg?style=flat&logo=Eclipse&logoColor=white"></a>&nbsp 
  <img src="https://img.shields.io/badge/Sourcetree-0052CC.svg?style=flat&logo=Sourcetree&logoColor=white"></a>&nbsp 
</p>
<br />

## **🔗 링크**

**링크:** <!--[https://keemtj.com](https://keemtj.com)
-->

<br />

## **👨🏻‍💻 기능 구현**

### **1. 메인페이지**
![image](https://github.com/kalista00/BuildSafety/assets/122184547/28c0c548-dc31-421b-b283-029a4e1ea54f)

- 백그라운드 비디오 구현
- 우측 상단바에 있는 버튼 누르면 해당 부분으로 focus
  
### **2. 로그인**

![image](https://github.com/kalista00/BuildSafety/assets/122184547/13abada1-7927-4d70-ae6d-80869a5d31a4)

- 카카오 로그인 API로 로그인 구현
- Spring AOP를 통한 세션관리
- 로그인session이 있어야만 시공/설계/채용정보 페이지로 이동 가능

### **3. 지도**

![image](https://github.com/kalista00/BuildSafety/assets/122184547/bbb6a279-e42d-473b-91b4-028c63ef234e)

- 메인에서 시공/설계버튼을 통해 들어올 수 있음
- 카카오 맵 API를 사용해서 시공/설계페이지로 파라미터 전달
 
<!--
- 5개의 endpoint를 두고 반응형을 구현함

```javascript
// media.js
const deviceSizes = {
  desktop: '1440px',
  laptop: '1280px',
  tablet: '1024px',
  mobile: '768px',
  phone: '480px',
};

const media = {
  desktop: `screen and (max-width: ${deviceSizes.desktop})`,
  laptop: `screen and (max-width: ${deviceSizes.laptop})`,
  tablet: `screen and (max-width: ${deviceSizes.tablet})`,
  mobile: `screen and (max-width: ${deviceSizes.mobile})`,
  phone: `screen and (max-width: ${deviceSizes.phone})`,
};

export { deviceSizes, media };
```

<img width="100%" alt="반응형 네비게이션" src="https://user-images.githubusercontent.com/51189962/136144313-2a67d258-3ec1-4517-80fc-3f67b957dff5.gif" />
-->


### **4. 시공/설계 지도 다음페이지**

#### **날짜별 공정적기(시공)**
![image](https://github.com/kalista00/BuildSafety/assets/122184547/77c8178f-62a0-4d6c-bf5a-5bfeb23dc5cf)
- 기상청 공공데이터 api를 이용해서 날씨정보를 가져옴
- 해당날짜에 공정을 적고 '안전지침확인' 버튼을 누르면 지침확인 가능
<br />

#### **해당지역 평균기후 및 특성(설계)**
![image](https://github.com/kalista00/BuildSafety/assets/122184547/cb4afb69-2478-4bd5-b84d-863229a7e4eb)
- database에 저장된 해당지역의 평균기후를 가져옴
- '설계지침보기' 버튼을 누르면 지침확인가능
<br />
### **5. 안전/설계지침(시공/설계)**

#### **시공 안전지침**
![image](https://github.com/kalista00/BuildSafety/assets/122184547/67bb8521-2727-4c67-b86b-a034d5373d01)
<br />
<br />
#### **기후 및 특성을 고려한 설계지침**
![image](https://github.com/kalista00/BuildSafety/assets/122184547/a265c1aa-2613-44c6-b6cb-7d86d0670a3d)



### **6. 로딩창 구현**

![image](https://github.com/kalista00/BuildSafety/assets/122184547/a94eaa33-3bb3-45d0-ab65-c0e9fe96cb79)

- favicon.ico 생성
- Fade-in transform
- 프로젝트 페이지
- React-responsive-carousel 커스텀
- 
### **7. 사이드바**
![image](https://github.com/kalista00/BuildSafety/assets/122184547/f9c931c3-3ff1-40c7-8b70-3514aa9caae2)

### **8. 시공/설계 계획**
![image](https://github.com/kalista00/BuildSafety/assets/122184547/e2fc0f29-6596-4763-9b74-cebbbe41f005)

### **9. 채용정보**
![image](https://github.com/kalista00/BuildSafety/assets/122184547/4d8a913b-9811-466f-a6f8-0e674967beb5)

### **10. 기타 기능**
- 사이트 가이드
- Spring AOP 세션 구현

## **🚀 배포**

- 첫 배포

```
$ npm install -g firebase-tools
$ firebase init
$ firebase login
  > HOSTING
  > Directroy? build
$ yarn build
$ firebase deploy
```

- 수정 후 배포

```
$ yarn build
$ firebase deploy
```

- 커스텀 도메인: Godaddy에서 커스텀 도매인 구매(https://keemtj.com)

<br />

## ⏰ 커밋 히스토리

<br/>
<br/>
<br/>
-->
