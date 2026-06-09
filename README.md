# 김민석 | Data Analyst Portfolio

데이터 지표를 설계하고 로그 분석으로 개선 방향을 제안하는 데이터 분석 포트폴리오입니다.

---

## 포트폴리오 3줄 요약
- 메이플스토리 스타포스 UI 변경 A/B 테스트 분석
- 유저 정체 및 이탈에 대한 Retention 분석
- Python, SQL, BigQuery, Dashboarding tools 설계

---

## 기술 스택
- SQL
- Python
- BigQuery
- Looker Studio
- Tableau

---

## Projects

| Project | 문제 정의 | 핵심 지표 | 주요 결과 | 사용 기술 |
|---|---|---|---|---|
| Project 1. UI 개편 A/B 테스트 분석 | 스타포스 UI 개편이 결제 전환율에 미치는 영향 검증 | 결제 전환율, 강화 시도 횟수, 파괴 방지 사용률 | Variant B 결제 전환율 +3.18%p, p<0.001 | Python, SQL, BigQuery, Looker Studio |
| Project 2. 성장 정체 구간과 유저 이탈 분석 | 고레벨 성장 정체가 이탈 증가와 연결되는지 분석 | 성장 효율, 최근 레벨업 이후 경과일, 14일 이탈 여부 | 고레벨 지역 이탈률 +10.93%p, 저성장 효율 유저 이탈률 +10.10%p | Python, SQL, BigQuery, Looker Studio |

## Project 1. UI 개편 A/B 테스트 분석

### Problem
스타포스 강화 UI 개편이 285레벨 이상 유저의 결제 전환율을 높이는지 검증했습니다.

### KPI
- Primary KPI: 결제 전환율
- Secondary KPI: 평균 강화 시도 횟수, 파괴 방지 사용률, 평균 메소 소모량, 파괴 발생률

### Result
- Variant A 결제 전환율: 10.78%
- Variant B 결제 전환율: 13.96%
- Uplift: +3.18%p
- Two-Proportion Z-test 결과 p<0.001
- Mid 세그먼트에서 가장 큰 상승 확인
- 파괴 방지 사용률 증가가 결제 전환 개선의 주요 행동 신호로 확인됨

### Action
- UI 전면 적용 권장
- Mid 세그먼트 대상 강화 UX 추가 개선
- 파괴 방지 할인 A/B Test 후속 실험 제안

### 주요 시각화
#### Conversion Rate
![Conversion Rate](images/Project1/conversion-rate.png)

#### Segment Analyze
![Segment Analyze](images/Project1/segment-analyze.png)

#### Behavioral Mediating Indicator
![Behavioral Mediating Indicator](images/Project1/behavioral-mediating-indicator.png)

### 관련 파일
- [Project1 PDF](docs/Project1_UI%20개편%20AB%20테스트%20분석.pdf)
- [Project1 SQL 폴더](sql/Project1)

---

## Project 2. 성장 정체 구간과 유저 이탈 분석

### Problem
260~300레벨 고레벨 구간에서 성장 정체가 이탈 증가와 연결되는지 분석했습니다.

### KPI
- 성장 효율: 경험치 획득량 / 플레이타임
- 최근 레벨업 이후 경과일
- 14일 이상 미접속 이탈 여부

### Result
- 고레벨 지역으로 갈수록 이탈률 +10.93%p 증가
- 성장 효율이 낮은 유저일수록 이탈률 +10.10%p 증가
- 280레벨 이후 경험치 요구량 급증 확인

### Action
- 280레벨 이후 경험치 요구량 완화
- EXP 부스트 이벤트 상시 도입
- 성장 구간별 리텐션 모니터링 대시보드 운영 제안

### 주요 시각화
#### Cohort Analyze
![Cohort Analyze](images/Project2/cohort-analyze.png)

#### Growth Analyze
![Growth Analyze](images/Project2/growth-analyze.png)

#### Growth Efficiency
![Growth Efficiency](images/Project2/growth-efficiency.png)

#### Level Analyze
![Level Analyze](images/Project2/level-analyze.png)

#### Location Churn
![location churn](images/Project2/location-churn.png)

### 관련 파일
- [Project2 PDF](docs/Project2_성장%20정체%20구간과%20유저%20이탈%20분석.pdf)
- [Project2 SQL 폴더](sql/Project2)

---

## Repository 구조
- `docs/` : 프로젝트 PDF 문서
- `images/Project1/` : Project1 시각화 이미지
- `images/Project2/` : Project2 시각화 이미지
- `sql/Project1/` : Project1 SQL
- `sql/Project2/` : Project2 SQL
- `notebooks/` : 분석 notebook 저장 폴더
