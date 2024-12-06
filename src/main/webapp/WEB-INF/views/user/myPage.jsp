<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- 메타 정보 -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <%@include file="/WEB-INF/views/include/shopHead.jsp" %>
    <!-- 커스텀 스타일 -->
    <style>
        /* 공통 스타일 */
        :root {
            --border-color: #ebebeb;
            --text-primary: #222;
            --text-secondary: rgba(34, 34, 34, 0.8);
            --bg-hover: #f8f8f8;
        }

        /* 작은 텍스트 */
        .text-sm {
            font-size: 12px;
            color: var(--text-secondary);
        }

        .mypage_container {
            margin-left: 100px;
            margin-right: auto;
            max-width: 1280px;
            padding: 40px 40px 160px;
        }

        /* 레이아웃 컴포넌트 */
        .mypage_container .my_home_title {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 42px;
            max-width: 100%;
            padding: 1rem 1rem 16px 1rem;
        }

        .mypage_container .btn_more {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .mypage_container .recent_purchase {
            background-color: #fafafa;
            border-radius: 12px;
            display: table;
            table-layout: fixed;
            width: 100%;
            margin-top: 20px;
            border: 1px solid var(--border-color);
        }

        .mypage_container .purchase_list_tab {
            display: flex;
            justify-content: space-around;
            border-bottom: 1px solid var(--border-color);
            padding: 1rem;
        }

        .mypage_container .tab_box {
            text-align: center;
            margin: 0;
        }

        .mypage_container .tab_item {
            position: relative;
            flex: 1;
            text-align: center;
        }

        .mypage_container .tab_item:not(:last-child)::after {
            content: '';
            position: absolute;
            right: 0;
            top: 50%;
            transform: translateY(-50%);
            height: 50%;
            width: 1px;
            background-color: var(--border-color);
        }

        .mypage_container .purchase_item_list {
            background-color: transparent;
            border: none;
            margin-top: 20px;
            padding: 1rem;
        }

        .mypage_container .purchase_item {
            display: flex;
            gap: 1rem;
            padding: 1rem;
            border-radius: 8px;
            background-color: #fff;
            transition: background-color 0.2s;
            text-decoration: none;
            color: inherit;
            margin-bottom: 1rem;
        }

        .mypage_container .purchase_item:hover {
            background-color: var(--bg-hover);
        }

        .mypage_container .item_image {
            width: 100px;
            height: 100px;
            border: 1px solid var(--border-color);
            border-radius: 4px;
            overflow: hidden;
            flex-shrink: 0;
        }

        .mypage_container .item_image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .mypage_container .item_info {
            flex: 1;
        }

        .mypage_container .item_status {
            margin-left: auto;
            text-align: right;
        }

        .mypage_container .item_name {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 0.5rem;
        }

        .mypage_container .item_price {
            font-size: 12px;
            color: var(--text-secondary);
            margin-bottom: 0.5rem;
        }

        .mypage_container .purchase_date {
            font-size: 12px;
            color: var(--text-secondary);
        }

        .mypage_container .status_text {
            font-size: 14px;
            font-weight: 500;
            color: var(--text-primary);
        }

        .mypage_container .status_action {
            font-size: 12px;
            color: var(--text-secondary);
            margin-top: 0.5rem;
        }

        .mypage_container .count {
            font-size: 0.9rem;
            margin-top: 0.2rem;
        }

        .mypage_container .tab_box .title {
            font-size: 12px;
        }

        .mypage_container .tab_box .count {
            font-size: 12px;
            color: var(--text-secondary);
        }

        /* 프로필 이미지 */
        .mypage_container .profile-image-container {
            position: relative;
            width: 80px;
            height: 80px;
            margin: 0 auto;
        }

        .mypage_container .profile-image-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            background-color: #f8f9fa;
        }

        .mypage_container .profile-upload-label {
            position: absolute;
            bottom: 0;
            right: 0;
            background-color: #f2b048;
            width: 28px;
            height: 28px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .mypage_container .profile-upload-label:hover {
            background-color: #eaad70;
        }

        .mypage_container .profile-upload-label i {
            color: white;
            font-size: 16px;
        }

        /* 링크 상태별 스타일 */
        .mypage_container a:not(.btn) {
            color: #000000;
            text-decoration: none;
        }

        .mypage_container a:not(.btn):visited,
        .mypage_container a:not(.btn):hover,
        .mypage_container a:not(.btn):active {
            color: #000000;
        }

        /* 큰 글자 (제목, 메인 텍스트) */
        .mypage_container .my_home_title .title,
        .mypage_container .user-info-section h2 {
            font-size: 18px;
            font-weight: bold;
        }

        /* 작은 글자 (부가 정보, 설명) */
        .mypage_container .btn_txt {
            font-size: 12px;
        }

        /* body 스타일 */
        .mypage_container body {
            background-color: #fff;
        }

        /* 찜한 상품 스타일 */
        .mypage_container .wishlist_item_list {
            margin-top: 20px;
            padding: 1rem;
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
        }

        .mypage_container .wishlist_item {
            width: calc(25% - 1rem); /* 4열 레이아웃 */
            box-sizing: border-box;
            text-decoration: none;
            color: inherit;
        }

        .mypage_container .wishlist_item .item_image {
            width: 100%;
            aspect-ratio: 1 / 1; /* 정사각형 비율 */
            overflow: hidden;
            border-radius: 4px;
            border: 1px solid var(--border-color);
        }

        .mypage_container .wishlist_item .item_image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform .3s ease;
        }

        .mypage_container .wishlist_item .item_image:hover img {
            transform: scale(1.05);
        }

        .mypage_container .wishlist_item .item_info {
            margin-top: 0.5rem;
            text-align: center;
        }

        .mypage_container .wishlist_item .item_name {
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 0.3rem;
        }

        .mypage_container .wishlist_item .item_price {
            font-size: 14px;
            color: var(--text-secondary);
        }

        /* 구매 내역 섹션 아래쪽 보더 추가 */
        .mypage_container .purchase-history-section {
            border-bottom: 1px solid var(--border-color);
            padding-bottom: 1rem;
        }

        /* 기존 클래스에 padding 추가 */
        .mypage_container .d-flex.align-items-center.justify-content-between.w-100 {
            padding: 15px;
            height: auto;
            min-height: 120px;
            border: 1px solid #ebebeb;
            border-radius: 12px;
        }

        /* 정보 수정과 프로필 관리 버튼에 스타일 적용 */
        .mypage_container .button-class {
            border: 1px solid #d3d3d3;
            color: rgba(34, 34, 34, 0.8);
            background-color: white;
            transition: none;
        }

        /* hover 효과 제거 */
        .mypage_container .button-class:hover {
            background-color: white !important; /* 기존 배경색 유지 */
            color: rgba(34, 34, 34, 0.8) !important; /* 기존 텍스트 색상 유지 */
            border-color: #d3d3d3 !important; /* 기존 테두리 색상 유지 */
        }

        /* 섹션 제목 스타일 */
        .mypage_container nav h5.border-bottom {
            font-weight: bold;
            font-size: 16px;
            padding-bottom: 8px;
            margin-bottom: 8px;
        }
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/include/shopCate.jsp" %>
    <!-- 메인 컨테이너 -->
    <div class="container py-4 mypage_container">
        <div class="row mx-0">
			<%@include file="/WEB-INF/views/include/mypageSideBar.jsp" %>
            <!-- 메인 컨텐츠 -->
            <main class="col-md-9">
                <!-- 사용자 정보 섹션 -->
                <section class="bg-light rounded mb-4 user-info-section">
                    <div class="d-flex align-items-center justify-content-between w-100">
                        <!-- 프로필 이미지 및 사용자 정보 -->
                        <div class="d-flex align-items-center">
                            <div class="me-3 text-center">
                                <div class="profile-image-container">
                                    <img src="" class="img-fluid rounded-circle" alt="프로필 이미지" id="profile-image">
                                    <label for="profile-upload" class="profile-upload-label">
                                        <i class="bi bi-camera"></i>
                                    </label>
                                    <input type="file" id="profile-upload" class="d-none" accept="image/*">
                                </div>
                            </div>
                            <div>
                                <h2 class="mb-2">사용자님</h2>
                                <p class="mb-1">이메일: user@example.com</p>
                            </div>
                        </div>  
                        
                        <!-- 버튼 -->
                        <div class="ms-auto">
                            <div class="d-flex gap-2">
                                <a href="#" class="btn button-class">정보 수정</a>
                                <a href="#" class="btn button-class">프로필 관리</a>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- 구매 내역 섹션 시작 -->
                <section class="purchase-history-section">
                    <div class="my_home_title">
                        <h3 class="title">구매 내역</h3>
                        <a href="/my/buying" class="btn_more">
                            <span class="btn_txt text-sm">더보기</span>
                            <i class="bi bi-chevron-right"></i>
                        </a>
                    </div>

                    <!-- 구매 상태 탭 -->
                    <div class="recent_purchase">
                        <div class="purchase_list_tab">
                            <div class="tab_item total">
                                <a href="#" class="tab_link">
                                    <dl class="tab_box">
                                        <dt class="title">전체</dt>
                                        <dd class="count">1</dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="tab_item">
                                <a href="#" class="tab_link">
                                    <dl class="tab_box">
                                        <dt class="title">진행 중</dt>
                                        <dd class="count">0</dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="tab_item">
                                <a href="#" class="tab_link">
                                    <dl class="tab_box">
                                        <dt class="title">종료</dt>
                                        <dd class="count">1</dd>
                                    </dl>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- 구매 아이템 리스트 -->
                    <div class="purchase_item_list">
                        <a href="/my/buying/89157583" class="purchase_item">
                            <div class="item_image">
                                <img src="product-image.jpg" alt="상품 이미지">
                            </div>
                            <div class="item_info">
                                <div class="item_name">상품명</div>
                                <div class="item_price">가격</div>
                                <div class="purchase_date">구매일: 2024-01-01</div>
                            </div>
                            <div class="item_status">
                                <div class="status_text">배송완료</div>
                                <div class="status_action">스타일</div>
                                <div class="status_action">올리기</div>
                            </div>
                        </a>
                    </div>
                </section>
                <!-- 구매 내역 섹션 끝 -->

                <!-- 찜한 상품 섹션 -->
                <div class="my_home_title">
                    <h3 class="title">찜한 상품명</h3>
                    <a href="/my/wishlist" class="btn_more">
                        <span class="btn_txt text-sm">더보기</span>
                        <i class="bi bi-chevron-right"></i>
                    </a>
                </div>

                <!-- 찜한 상품 리스트 -->
                <div class="wishlist_item_list">
                    <!-- 찜한 상품 1 -->
                    <a href="/product/12345" class="wishlist_item">
                        <div class="item_image">
                            <img src="wishlist-product1.jpg" alt="상품 이미지">
                        </div>
                        <div class="item_info">
                            <div class="item_name">찜한 상품명 1</div>
                            <div class="item_price">₩10,000</div>
                        </div>
                    </a>
                    <!-- 찜한 상품 2 -->
                    <a href="/product/67890" class="wishlist_item">
                        <div class="item_image">
                            <img src="wishlist-product2.jpg" alt="상품 이미지">
                        </div>
                        <div class="item_info">
                            <div class="item_name">찜한 상품명 2</div>
                            <div class="item_price">₩20,000</div>
                        </div>
                    </a>
                    <!-- 찜한 상품 3 -->
                    <a href="/product/13579" class="wishlist_item">
                        <div class="item_image">
                            <img src="wishlist-product3.jpg" alt="상품 이미지">
                        </div>
                        <div class="item_info">
                            <div class="item_name">찜한 상품명 3</div>
                            <div class="item_price">₩30,000</div>
                        </div>
                    </a>
                    <!-- 필요한 만큼 추가 -->
                </div>
            </main>
        </div>
    </div>
    <%@include file="/WEB-INF/views/include/shopFooter.jsp" %>

    <!-- Bootstrap JS 번들 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.getElementById('profile-upload').addEventListener('change', function(e) {
            if (this.files && this.files[0]) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    document.getElementById('profile-image').setAttribute('src', e.target.result);
                };
                reader.readAsDataURL(this.files[0]);
            }
        });
    </script>
</body>
</html>
