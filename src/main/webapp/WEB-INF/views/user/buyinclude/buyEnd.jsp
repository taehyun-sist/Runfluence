<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<head>
	<style type="text/css">
		.order-link {
            text-decoration: none;
            color: inherit;
            display: block;
        }
        
        .order-info {
        	font-size: 12px;
            text-align: left;
            color: #666;
            height: 38px;
            padding: 10px 16px;
            cursor: pointer;
        }
        
        .d-flex {
        	gap: 12px; /* 요소들 사이의 간격 */
            align-items: center; /* 수직 중앙 정렬 */
        }
        
        .d-flex_product {
        	padding: 16px 0;
        }
        
        .product-info {
        	font-size: 12px;
            gap: 4px 0px;
        }
	</style>
</head>

<!-- 주문 내역 컨테이너 -->
<div class="my_order_list">
    <div class="divider" style="background-color: #f0f0f0; height: 8px; width: 100%; margin: 20px 0;"></div>
    <!-- 주문 항목 -->
    <a href="/orders/detail" class="order-link">
        <div class="container my-3 p-3">
            <!-- 결제번호 및 날짜 표시 헤더 -->
            <div class="order-info d-flex justify-content-between align-items-center mb-3">
                <div class="d-flex align-items-center">
                    <span class="order-label" style="color: #222; font-weight: 500;">결제번호</span>
                    <span class="order-number ms-2" style="color: #666;">O-OR22943006</span>
                </div>
                <div class="order-date" style="color: #666;">24/07/07 16:15</div>
            </div>
            <hr>
            <!-- 상품 정보 표시 섹션 -->
            <div class="d-flex product">
                <!-- 상품 이미지 -->
                <div>
                    <img src="https://kream-phinf.pstatic.net/MjAyNDA0MThfMjQx/MDAxNzEzNDI2OTg4Mzk4.tW8vDhc_nnA_LVl2HEMahMFuRZvDn8hSPHKIrURpft0g.ovBwIg1xARbe5C7pVyBzEX9wSUORhiyUGLYaAdmQFKMg.JPEG/p_7a82036adf1b4db382c0612d0bacda14.jpg" alt="상품 이미지" class="img-fluid" style="width: 72px; height: 72px; object-fit: cover; border-radius: 10px;">
                </div>
                <!-- 상품 정보 -->
                <div class="product-info flex-grow-1">
                    <p class="mb-1">Nothing Ear (a) Yellow</p>
                    <div class="d-flex">
                        <p class="mb-0 me-2" style="font-weight: 600;">ONE SIZE</p>
                        <p class="mb-0">/</p>
                        <p class="mb-0 ms-2" style="font-weight: 600;">1개</p>
                    </div>
                </div>
                <!-- 상태 및 액션 -->
                <div class="text-end">
                    <p class="mb-1">배송완료</p>
                </div>
            </div>
        </div>
    </a>
</div>