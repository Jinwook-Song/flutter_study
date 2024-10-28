# 의존성 주입 (Get it)

- 의존성 주입
  - Dagger(andriod)
    - @annotation 기반으로 컴파일 타임에 의존성 주입
  - Swinject(ios)
    - swift로 작성된 의존성 주입 프레임워크
  - Getit(flutter)
    - 서비스 로케이터(Service Locator)
      - 등록된 서비스의 인스턴스를 싱글톤으로 관리하여 동일한 서비스에 대한 여러 요청에 동일한 인스턴스를 반환
    - 서비스 등록(Register)
      - 사용할 서비스(객체)들을 등록하며, 각 서비스는 고유한 식별자를 갖음
    - 서비스 검색(Get)
      - 등록된 식별자 기반으로 특정 서비스의 인스턴스를 검색
