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



<div class="order_list">
	<!-- 내역이 없을 때 empty list 출력-->
    <div class="empty_list">
        <div class="text_body">
            <p class="text_body_title">구매 내역이 없습니다.</p>
            <a href="#" class="button">
                <p class="text-lookup">SHOP 바로가기</p>
            </a>
        </div>
    </div>
</div>