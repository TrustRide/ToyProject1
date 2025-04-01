# 토이프로젝트1_ 중고차 판매 사이트

## 개요
이 데이터베이스는 **중고차 판매 사이트** 시스템을 위한 데이터 저장소로, 주요 테이블과 관계를 정의합니다. 해당 데이터베이스는 배송, 카테고리, 이미지, 옵션, 주소록 등의 정보를 저장하고 관리합니다.

---

## 테이블 설명

### 1. `delivery` (배송 정보 테이블)
- `delivery_id`: 배송 고유 ID
- `delivery_fee`: 배송비
- `tracking_number`: 운송장 번호
- `delivery_started_at`: 배송 시작 시간
- `delivery_driver_contact`: 배송 기사 연락처
- `delivery_completed_at`: 배송 완료 시간
- `delivery_request`: 배송 요청 사항
- `order_id`: 주문 ID (외래키)
- `code_id`: 코드 ID
- `created_at`: 생성일
- `updated_at`: 수정일
- `deleted_at`: 삭제일 (논리 삭제 처리)

### 2. `middle_category` (중분류 카테고리 테이블)
- `middle_category_id`: 중분류 ID (PK)
- `middle_category_name`: 중분류 이름
- `major_category_code`: 대분류 코드 (외래키)
- `created_at`: 생성일
- `updated_at`: 수정일
- `deleted_at`: 삭제일

### 3. `image` (이미지 테이블)
- `image_id`: 이미지 ID (PK)
- `image_url`: 이미지 URL
- `image_type`: 이미지 유형
- `car_info_id`: 차량 정보 ID (외래키)
- `review_id`: 리뷰 ID (외래키, NULL 허용)
- `inquiry_id`: 문의 ID (외래키, NULL 허용)
- `image_content`: 이미지 설명
- `created_at`: 생성일
- `updated_at`: 수정일
- `deleted_at`: 삭제일

### 4. `option_Info` (옵션 정보 테이블)
- `option_Info_id`: 옵션 ID (PK)
- `option_name`: 옵션명
- `option_description`: 옵션 설명
- `Field`: 관련 필드
- `created_at`: 생성일
- `updated_at`: 수정일
- `deleted_at`: 삭제일

### 5. `address_book` (주소록 테이블)
- `address_book_id`: 주소록 ID (PK)
- `address_name`: 주소 이름

---

## 관계 설명
ERD(엔티티 관계 다이어그램) 이미지를 참고하여 테이블 간 관계를 이해할 수 있습니다. 각 테이블은 외래키(FK)를 통해 서로 연결되어 있으며, 주문, 배송, 이미지, 카테고리 등의 정보를 효율적으로 관리할 수 있도록 설계되었습니다.

---

## 데이터베이스 사용 방법
1. **데이터 생성**: 각 테이블에 맞는 데이터를 삽입합니다.
2. **데이터 조회**: 필요한 데이터를 `SELECT` 쿼리를 통해 검색합니다.
3. **데이터 수정**: 기존 데이터를 `UPDATE` 쿼리를 통해 수정합니다.
4. **데이터 삭제**: 논리 삭제(`deleted_at` 필드 활용) 또는 물리 삭제를 수행합니다.

---

## ERD 다이어그램
첨부된 ERD 이미지를 참고하여 데이터베이스의 전체 구조를 파악할 수 있습니다.

