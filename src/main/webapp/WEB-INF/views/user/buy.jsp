<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>        
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>구매 내역</title>
    <!-- 부트스트랩 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
   
    <!-- Optional Bootstrap JS and dependencies (jQuery and Popper.js) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <!-- 부트스트랩 아이콘 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <%@include file="/WEB-INF/views/include/shopHead.jsp" %>
    <style>
        .buying_container {
            margin-left: 120px;
            margin-right: auto;
            max-width: 1280px;
            padding: 40px 40px 160px;
            height: 100vh;
        }

        .buying_container .nav-tabs {
            border-bottom: 1px solid #dee2e6;
        }
        
        .buying_container .nav-tabs .nav-link {
            color: #6c757d;
            border: none;
            border-bottom: 2px solid transparent;
            padding: 1rem 0.5rem;
        }
        
        .buying_container .nav-tabs .nav-link:hover {
            border-color: transparent;
            color: #212529;
        }
        
        .buying_container .nav-tabs .nav-link.active {
            color: #212529;
            border: none;
            border-bottom: 2px solid #212529;
            font-weight: 500;
        }
        
        .buying_container .nav-link .count {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 4px;
        }

        .buying_container .nav-link.active .count {
            color: #f15746;
            font-size: 20px;
        }
        
        .buying_container .nav-link .title {
            font-size: 13px;
        }

        /* 버튼 너비를 100%로 설정하여 내용 중앙 정렬 */
        .buying_container .nav-item button {
            width: 100%;
            justify-content: center;
        }
    
        /* 컨테이너 스타일 추가 */
        .buying_container .container.py-4 {
            display: flex;
            flex-direction: column; /* 내부 요소들을 세로로 배치 */
            margin-left: auto;
            margin-right: auto;
            max-width: 1280px;
            padding: 40px 40px 160px;
        }
        .buying_container main h2.mb-4 {
            font-size: 24px;
            letter-spacing: -.36px;
        }
        
        .buying_container .head_btn {
            background-color: #fff;
            border: 1px solid #ebebeb;
            border-radius: 12px;
            display: inline-block;
            font-size: 13px;
            letter-spacing: -.07px;
            line-height: 24px;
            min-width: 120px;
            padding: 5px 30px 5px 10px;
            position: relative;
            cursor: pointer;
            text-align: left;
            padding-left: 10px;
        }

        .buying_container .head_btn .bi-chevron-down {
            font-size: 16px;
            color: #222;;
        }

        .buying_container .text_body {
            text-align: center;  /* 내부 요소들 중앙 정렬 */
            width: 100%;
        }

        /* 타이틀 스타일 */
        .buying_container .text_body_title {
            color: rgba(0, 0, 0, 0.804);
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 12px;  /* 타이틀과 버튼 사이 간격 */
        }

        .buying_container .empty_list {
            align-items: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            min-height: 192px;
            padding: 56px 28px;
            width: 100%;
        }

        .buying_container .text-lookup {
            color: rgb(34, 34, 34);
            font-size: 13px;
            font-weight: bold;
            margin: 0;
        }

        /* SHOP 바로가기 버튼 스타일 */
        .buying_container .text_body .button {
            background-color: #fff;
            border: 1px solid #131212;
            border-radius: 12px;
            display: inline-block;
            padding: 5px 10px;
            margin-top: 10px;
            text-decoration: none;
        }

        .buying_container .text_body .button:hover {
            background-color: #f8f8f8;
        }

        
        
        /* row 클래스 수정 */
        .buying_container .row {
            display: flex;
            flex-direction: row;  /* 가로 방향 배치 */
            gap: 20px;  /* 사이드바와 메인 컨텐츠 사이 간격 */
        }

        /* 메인 컨텐츠 스타일 */
        .buying_container .main-content {
            flex: 1;  /* 남은 공간 모두 차지 */
            min-width: 0;  /* 오버플로우 방지 */ 
            
            .sidebar {
                width: 100%;
                margin-bottom: 20px;
            }
        }

        
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/include/shopCate.jsp" %>
    <!-- 메인 컨텐츠 -->
    <div class="container-fluid py-4 buying_container">
        <div class="row">
            <!-- 사이드바 -->
            <%@include file="/WEB-INF/views/include/mypageSideBar.jsp" %>
            <!-- 메인 컨텐츠 -->
            <main class="main-content">
                <h2 class="mb-4">구매 내역</h2>
                <!-- 여기에 구매 내역 컨텐츠 추가 -->
                <div class="container mt-5">
                    <!-- 탭 메뉴 -->
                    <ul class="nav nav-tabs d-flex justify-content-center mb-4" id="purchaseTab" role="tablist">
                        <li class="nav-item flex-fill text-center" role="presentation">
                            <a class="nav-link d-flex flex-column align-items-center w-100 ${currentTab == 'all' ? 'active' : ''}" href="/user/buy?tab=all" id="bidding-tab"  type="button" role="tab">
                                <span class="count">1</span>
                                <span class="title">전체</span>
                            </a>
                        </li>
                        <li class="nav-item flex-fill text-center" role="presentation">
                            <a class="nav-link d-flex flex-column align-items-center w-100 ${currentTab == 'inProgressing' ? 'active' : ''}" href="/user/buy?tab=inProgressing" id="progress-tab" type="button" role="tab">
                                <span class="count">0</span>
                                <span class="title">진행 중</span>
                            </a>
                        </li>
                        <li class="nav-item flex-fill text-center" role="presentation">
                            <a class="nav-link d-flex flex-column align-items-center w-100 ${currentTab == 'complete' ? 'active' : ''}" href="/user/buy?tab=complete" id="completed-tab" type="button" role="tab">
                                <span class="count">1</span>
                                <span class="title">종료</span>
                            </a>
                        </li>
                    </ul>
                    <!-- 모달 버튼 -->
                    <div class="purchase_head">
                        <div class="head_product">
                            <button class="head_btn" data-bs-toggle="modal" data-bs-target="#statusModal">
                                전체<i class="bi bi-chevron-down position-absolute" style="right: 8px; top: 50%; transform: translateY(-50%);"></i>
                            </button>
                        </div>
                    </div>
                    <!--탭 컨텐츠 출력-->
                    <div class="tab-content">
                    	<c:choose>
                    		<c:when test="${currentTab == 'all'}">
                    			<%@include file="/WEB-INF/views/user/buyinclude/buyall.jsp" %>
                    		</c:when>
                    		<c:when test="${currentTab == 'inProgressing'}">
                    			<%@include file="/WEB-INF/views/user/buyinclude/buyingProgress.jsp" %>
                    		</c:when>
                    		<c:when test="${currentTab == 'complete'}">
                    			<%@include file="/WEB-INF/views/user/buyinclude/buyEnd.jsp" %>
                    		</c:when>
                    	</c:choose>
                    </div>
                </div>
                
            </main>
        </div>
    </div>

<%@include file="/WEB-INF/views/include/shopFooter.jsp" %>

    <!-- 부트스트랩 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<div class="modal-content">
		<c:choose>
      		<c:when test="${currentTab == 'all'}">
      			<%@include file="/WEB-INF/views/user/buyinclude/buyallModal.jsp" %>
      		</c:when>
      		<c:when test="${currentTab == 'inProgressing'}">
      			<%@include file="/WEB-INF/views/user/buyinclude/buyingModal.jsp" %>
      		</c:when>
      		<c:when test="${currentTab == 'complete'}">
      			<%@include file="/WEB-INF/views/user/buyinclude/buyEndModal.jsp" %>
      		</c:when>
      	</c:choose>	
	</div>	
    <!-- 자바스크립트 추가 -->
    <script>
        // 상태 선택 시 버튼 텍스트 변경
        document.querySelectorAll('.status-link').forEach(link => {
            link.addEventListener('click', function(e) {
                e.preventDefault();
                const selectedText = this.querySelector('span').textContent;
                document.querySelector('.head_btn').textContent = selectedText;
                
                // 모달 닫기
                const modal = bootstrap.Modal.getInstance(document.getElementById('statusModal'));
                modal.hide();
            });
        });
    </script>
</body>
</html>