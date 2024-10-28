# clean_architecture_starter

- Clean Architecture
  - Entity: 애플리케이션의 비즈니스 규칙을 캡슐화하는 비즈니스 객체
  - Use case: 애플리케이션에서 수행되는 특정 비스니스 규칙 또는 작업
  - Interface Adapter: 유즈케이스와 엔티디를 외부 에이전트와 시스템의 내부 구조사이를 연결하는 역할
  - Frameworks & Drivers: 시스템의 가장 외부 계층으로 모든 세부사항(DB, Web, UI 등)을 포함
  1. 원칙
     - 의존성 규칙: 모든 의존성이 바깥 계층에서 안쪽 계층으로만 향해야 한다. 안쪽이란 더 고수준의 정책을 의미 → 핵심 비즈니스 로직 또는 어플리케이션 규칙이 프레임워크, UI, DB같은 외부 요소의 변경으로부터 보호되어야 한다.
  2. 계층간 분리

     ![image.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/022a5942-5b92-4d4b-a5fa-596c8b0508b1/58edf93c-5f54-441f-9275-150eeaadfb54/image.png)

     - Data: 외부 데이터 소스로부터 데이터를 가져오고 어플리케이션 내부로 전달
       - Model: 데이터 구조를 정의
       - DataSource: 데이터를 실제로 가져오는 로컬 및 원격 소스
       - Repository: DataSource와 상위 레이어 사이 중간자 역할
     - Domain: 비즈니스 로직 담당으로 핵심 기능과 규칙 정의, 데이터 레이어로부터 전달받은 데이터를 처리하고, 처리된 데이터를 프레젠테이션 레이어로 전달
       - Entity: 비즈니스 로직을 포함하는 핵심 클래스
       - Usecase: 특정 비즈니스 작업을 수행하는 클래스
     - Presentation: 사용자 인터페이스와 상호작용을 관리하고, 도메인 레이어로부터 받은 데이터를 사용자에게 표시하는 방식 결정
       - Presenter: UI 컴포넌트와 도메인 레이어 사이의 데이터 흐름과 상호작용 관리
     - Ui: 어플리케이션의 시각적 요소와 레이아웃 담당
       - Widget, Screen
