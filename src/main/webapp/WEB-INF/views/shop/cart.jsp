<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Runfluence</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
  <%@include file="/WEB-INF/views/include/shopHead.jsp" %>
  <style>
    @font-face {
      font-family: 'JejuGothic';
      src: url('./JejuGothic.ttf') format('truetype');
    }

    body {
      font-family: 'JejuGothic', sans-serif;
      min-height: 100%;
      overflow: scroll;
      position: relative;
    }

    div {
      margin: 0;
      padding: 0;
    }

    p {
      margin-bottom: 0;
    }

    .header {
      background-color: #fff;
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      z-index: 3;
    }

    .inner {
      height: 44px;
      padding: 0 50px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      position: relative;
    }

    .btn_cancel,
    .btn_close {
      height: 24px;
      position: absolute;
      top: 50%;
      left: 22px;
      transform: translateY(-50%);
      will-change: transform;
    }

    .title_txt {
      color: #000;
      font-size: 18px;
      font-weight: normal;
      letter-spacing: -0.015em;
      word-break: break-word;
      margin: 0;
    }

    .btn_standard {
      position: absolute;
      top: 50%;
      right: 22px;
      transform: translateY(-50%);
      will-change: transform;
    }

    /* Wrap content 시작 */
    .wrap-content {
      flex: 1;
      display: flex;
      flex-direction: column;
      background-color: #f4f4f4 !important;
    }

    .container-lg.buy.step-2 {
      margin: 0 auto;
      padding: 20px 0;
    }

    .order-content {
      margin-left: auto;
      margin-right: auto;
      max-width: 700px;
    }

    .text-header-checkout {
      display: flex;
      align-items: center;
      gap: 8px;
      width: 100%;
    }

    .text-header-checkout .left {
      flex-grow: 1;
    }

    .title-item {
      display: flex;
      align-items: center;
      max-width: fit-content;
      gap: 2px;
    }

    .text-lookup.semibold {
      font-weight: 600;
      font-size: 16px;
      color: #222;
      text-overflow: ellipsis;
      white-space: nowrap;
    }

    .text-truncate {
      display: -webkit-box;
      text-overflow: ellipsis;
    }

    .text_table_left_align {
      display: flex;
      padding: 3px 0;
      width: -webkit-fill-available;
    }

    .text_table_left_align .title {
      align-items: flex-start;
      display: flex;
      flex: 0 0 auto;
      margin-right: 8px;
      width: 84px;
    }

    .text_table_left_align .labels-description {
      flex: 1 1 auto;
    }

    .text_table_labels {
      display: flex;
      flex-direction: column;
      gap: 2px;
    }

    .text_table_labels .labels {
      display: flex;
      justify-content: flex-start;
      text-align: left;
    }

    .text_body {
      align-items: center;
      display: flex;
    }

    .line_break_by_truncating_tail {
      -webkit-box-orient: vertical;
      display: -webkit-box;
      text-overflow: ellipsis;
    }

    .text-lookup {
      text-align: left;
      width: inherit;
      font-size: 14px;
    }

    .text-element {
      color: #909090;
    }

    .text-element.display_paragraph {
      color: #222222;
    }

    .control_data_box {
      cursor: pointer;
      min-height: 48px;
      padding: 14px;
      width: -webkit-fill-available;
      box-shadow: #ebebeb 0px 0px 0px 1px inset;
      margin: 8px 16px 20px;
    }

    .control_data_box__text__title {
      flex: 1 0 100px;
    }

    .divider_horizontal {
      width: -webkit-fill-available;
    }

    .product-list-info-default {
      width: -webkit-fill-available;
    }

    .content_image {
      display: inline-block;
    }

    .picture {
      border: none;
    }

    .product-list-info-default .content {
      display: flex;
      flex: 1;
      flex-direction: column;
      flex-wrap: wrap;
      margin-left: 16px;
      margin-top: 2px;
    }

    .product-list-info-default .bottom {
      align-items: flex-start;
      display: flex;
      gap: 4px;
      justify-content: space-between;
      margin-top: 8px;
    }

    .text-table-options--default {
      flex-wrap: wrap;
    }

    .text-table-options {
      align-items: center;
      display: flex;
      width: 100%;
    }

    .text-table-options--default .option1_item {
      flex: 0 1 auto;
    }

    .text-table-options--default .option-right-text {
      display: flex;
      flex: 0 1 auto;
    }

    .text-table-options--default .option-right-text .option2_item {
      margin: 0 3px;
    }

    .text-table-options--default .option-right-text .option3_item {
      gap: 3px;
    }

    .cursor-pointer {
      cursor: pointer;
    }

    .radio-element {
      margin-right: 8px;
    }

    .text_collapse {
      width: -webkit-fill-available;
    }

    .text_table_right_align .title-labels {
      display: flex;
      justify-content: space-between;
    }

    .text-lookup.has_action {
      cursor: pointer;
    }

    .text-lookup.underline {
      -webkit-text-decoration: underline;
      text-decoration: underline;
    }

    .text-header-checkout>.left,
    .text-header-checkout>.right {
      align-items: center;
      display: flex;
      gap: 4px;
    }

    .text-header-checkout>.left {
      flex-grow: 1;
    }

    .subtitle_item.tag_body {
      min-width: 20px;
    }

    .subtitle_item {
      flex: 0 1 auto;
      gap: 4px;
    }

    .tag_body {
      align-items: center;
      display: flex;
      height: 20px;
      justify-content: center;
      text-align: center;
    }

    .select_option_picker {
      min-width: auto;
    }

    .select_option_picker_justified {
      display: flex !important;
      flex-direction: column;
      justify-content: center;
      width: -webkit-fill-available;
    }

    .select_option_picker {
      background: #fff;
      border-radius: 10px;
      cursor: pointer;
      display: inline-flex;
    }

    .select_option_picker_justified .justified__text {
      display: flex;
      flex-direction: column;
      justify-content: center;
      padding: 4px 0;
    }

    .cart-buy-footer[data-v-71f193e4] {
      background: #fff;
      bottom: 0;
      box-shadow: 0 -1px 1px 0 rgba(0, 0, 0, .06);
      left: 0;
      /* position: fixed; */
      right: 0;
      width: 100%;
      z-index: 1;
    }

    .cart-buy-footer>.layout_list_horizontal_equal {
      margin: 0 auto !important;
      max-width: 700px;
    }

    .layout_list_horizontal_equal {
      display: flex;
      width: -webkit-fill-available;
    }

    .button_xsmall:hover {
      background-color: #Dee3e6 !important;
      border: 2px solid #000 !important;
    }

    .button_xlarge {
      min-height: 52px;
      min-width: 140px;
      padding: 10px 16px;
    }

    .button_large .button__text,
    .button_medium .button__text,
    .button_xlarge .button__text {
      align-items: center;
      display: flex;
      flex-direction: column;
      justify-content: center;
      min-height: 32px;
    }

    .button_xlarge .title_item {
      font-size: 16px;
    }

    .text-lookup.bold {
      font-weight: 700;
    }

    .select_option_picker_justified>.justified {
      display: flex;
      gap: 8px;
      justify-content: space-between;
    }

    .select_option_picker_justified .justified__action-image {
      margin-right: -8px;
      padding: 8px;
    }

    .select_option_picker_justified .justified__right,
    .select_option_picker_justified .title-item {
      flex: 0 0 auto;
    }

    .flex-align-center {
      align-items: center;
      display: flex;
    }

    .fixed-top {
      position: relative;
    }
    
    .divider[data-v-2db66556] {
	    background-color: var(--d583d372);
	    height: var(--2174a0d0);
	    width: var(--004afd35);
	}

    /* wrap content 종료 */
  </style>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    $(document).ready(function () {

      $("#toggle-icon").click(function () {
        if ($(".toggle-section").is(":visible")) {
          $(".toggle-section").slideUp();
          $("#arrow-down").show();
          $("#arrow-up").hide();

        } else {
          $(".toggle-section").slideDown();
          $("#arrow-down").hide();
          $("#arrow-up").show();
        }
      });

    });
  </script>
</head>

<body>
<%@include file="/WEB-INF/views/include/shopCate.jsp" %>
  <div class="header fixed-top">


    <div class="wrap-content d-flex flex-column flex-grow-1 bg-light">
      <div class="container-lg buy step-2">
        <div class="content content-step-2">
          <div class="container content-step-2-cart-buy-immediate-container">

            <div class="order-content">
              <div class="order-content-wrapper bg-white rounded p-3 shadow-sm flex-column align-items-start d-flex">
              <h2 class="title_txt mx-auto" style="text-align:center;"><b>장바구니</b></h2>
              </div>
            </div>
            
            <div data-v-27257960="" data-v-72ff8bd3="" class="divider_horizontal" data-v-5dd17c18="" style="height: 8px;">
			<div data-v-2db66556="" data-v-27257960="" class="divider" style="--d583d372: #F4F4F4; --004afd35: 100%; --2174a0d0: 8px;">
			</div>
			</div>
              
              <!--------------선택상품 삭제. 전체선택-->
			<div class="order-content">
        		<div class="order-content-wrapper bg-white rounded p-3 shadow-sm">
   					<div class="text-header-checkout d-flex align-items-center" style="gap: 8px;">
						<div class="flex-grow-1">
							<div class="text-body title-item d-flex align-items-center" style="gap: 0px 2px;">
								<p class="text-lookup text-element semibold display_paragraph">
									장바구니 상품
								</p>
							</div>
						</div>
						<div class="d-flex align-items-center gap-1">
							<div class="text_body description_item" style="gap: 4px;">
								<p class="text-lookup semibold text-truncate m-0" style="color: #222; font-size: 16px;">
           						총 1건
         							</p>
       						</div>
     					</div>
   					</div>
   					
				</div>
			</div>
			
			<div data-v-27257960="" data-v-72ff8bd3="" class="divider_horizontal" data-v-5dd17c18="" style="height: 8px;">
			<div data-v-2db66556="" data-v-27257960="" class="divider" style="--d583d372: #F4F4F4; --004afd35: 100%; --2174a0d0: 8px;">
			</div>
			</div>
			
			<!-- 선택 상품 삭제 전체 선택 -->
			<div class="order-content">
				<div class="order-content-wrapper bg-white rounded shadow-sm flex-column align-items-start d-flex"  style="border-radius: 0px 0px 10px 10px; width: -webkit-fill-available;">
					<div style="height: 20px;"></div>
			    <div class="order-content-header justify-content-between" style="padding-left: 20px; display: flex; padding-right: 20px; width: 100%; padding-bottom: 15px;">
			      <!-- Checkbox -->
			      <input type="checkbox" id="item-select" name="item-select" class="checkbox-input">
			      <label for="item-select" class="checkbox-label"></label>
			  
			      <!-- Delete Button -->
			      <button class="button_xsmall" style="border-radius: 100px; padding: 4px 10px; background-color: rgb(255, 255, 255); box-shadow: rgb(235, 235, 235) 0px 0px 0px 1px inset; cursor: pointer; ">
			        <div class="button__text">
			          <div class="text_body title_item" style="gap: 0px 2px;">
			            <p class="text-lookup text-element display_paragraph white-space-nowrap ellipsis-1" style="color: rgb(34, 34, 34); text-align: left; width: inherit; --870e2ebe: 12px; --5c758a7a: #222222; --01d25667: 12px; --fc3d6318: 12px; ">선택 삭제</p>
			          </div>
			        </button>
				    </div>
				</div>
			</div>
			
			<div data-v-27257960="" data-v-72ff8bd3="" class="divider_horizontal" data-v-5dd17c18="" style="height: 8px;">
			<div data-v-2db66556="" data-v-27257960="" class="divider" style="--d583d372: #F4F4F4; --004afd35: 100%; --2174a0d0: 8px;">
			</div>
			</div>
            
            <!-- 상품 리스트 -->
            
            <div class="order-content">
            <div class="order-content-wrapper bg-white rounded shadow-sm flex-column align-items-start d-flex" style="border-radius: 0px 0px 10px 10px; width: -webkit-fill-available;">
                <div style="height: 20px;"></div>
                <div class="order-content-header justify-content-between" style="padding-left: 20px; display: flex; padding-right: 20px; width: 100%;">
                    <!-- Checkbox -->
                    <input type="checkbox" id="item-select" name="item-select" class="checkbox-input " >
                    <label for="item-select" class="checkbox-label"></label>
                
                    <!-- Delete Button -->
                    <button class="button_xsmall" style="border-radius: 100px; padding: 4px 10px; background-color: rgb(255, 255, 255); box-shadow: rgb(235, 235, 235) 0px 0px 0px 1px inset; cursor: pointer;">
                      <div class="button__text">
                        <div class="text_body title_item" style="gap: 0px 2px;">
                          <p class="text-lookup text-element display_paragraph white-space-nowrap ellipsis-1" style="color: rgb(34, 34, 34); text-align: left; width: inherit; --870e2ebe: 12px; --5c758a7a: #222222; --01d25667: 12px; --fc3d6318: 12px;">삭제</p>
                        </div>
                      </div>
					</button>
                  </div>
				<div style="height: 20px;"></div>
                <div class="product-list-info-default d-flex" style="padding: 0px 16px;">
                  <div class="thumbnail d-inline-block position-relative"
                    style="border-radius: 10px; background-color: #f4f4f4; width: 80px; height: 80px;">
                    <div class="content_image" style="width: 80px; height: 80px;">
                      <picture class="picture image" style="object-fit: none; aspect-ratio: auto;">
                        <source type="image/webp"
                          srcset="https://kream-phinf.pstatic.net/MjAyMzAyMTZfMTU0/MDAxNjc2NTM2NTMwNTQx.hu3R_fMqd947Y2-86BiY-qW1YEqxdpjNScBAkUG1SH8g.S-Ep5v7zM1lCgbvDXc8VxtojU9mauC-RaLYaCaCELI4g.JPEG/a_47311e20fc104289873f16757800ca12.jpg">
                        <source
                          srcset="https://kream-phinf.pstatic.net/MjAyMzAyMTZfMTU0/MDAxNjc2NTM2NTMwNTQx.hu3R_fMqd947Y2-86BiY-qW1YEqxdpjNScBAkUG1SH8g.S-Ep5v7zM1lCgbvDXc8VxtojU9mauC-RaLYaCaCELI4g.JPEG/a_47311e20fc104289873f16757800ca12.jpg">
                        <img
                          src="https://kream-phinf.pstatic.net/MjAyMzAyMTZfMTU0/MDAxNjc2NTM2NTMwNTQx.hu3R_fMqd947Y2-86BiY-qW1YEqxdpjNScBAkUG1SH8g.S-Ep5v7zM1lCgbvDXc8VxtojU9mauC-RaLYaCaCELI4g.JPEG/a_47311e20fc104289873f16757800ca12.jpg"
                          loading="lazy" width="80px" height="80px" class="image">
                      </picture>
                    </div>
                  </div>

                  <div class="content">
                    <div class="d-flex flex-column align-items-start" style="width: -webkit-fill-available;">
                      <div class="text_body" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail"
                          style="color: #222;">
                          Adidas Originals Quilted Superstar Bomber Jacket Black - KR Sizing
                        </p>
                      </div>
                      <div class="text_body" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail text-start"
                          style="color: #a7a7a7; font-size: 13px;">
                          아디다스 오리지널스 퀼티드 슈퍼스타 봄버 자켓 블랙 - KR 사이즈
                        </p>
                      </div>
                      <div class="text_body" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail text-start"
                          style="color: #a7a7a7; font-size: 12px;">
                          HL9203
                        </p>
                      </div>
                    </div>
                    <div class="bottom">
                      <div class="text-table-options text-table-options--default" style="margin: 0px 0px 2px;">
                        <div class="text_body option option1_item" style="gap: 0px 3px;">
                          <p class="text-lookup text-element semibold display_paragraph line_break_by_truncating_tail"
                            style="color: #222; font-size: 14px">
                            S
                          </p>
                        </div>
                        <div class="option-right-text">
                          <div class="text_body option option2_item" style="gap: 0px 2px;">
                            <p class="text-lookup text-element semibold display_paragraph"
                              style="color: #222; font-size: 14px">
                              /
                            </p>
                          </div>
                          <div class="text_body option option3_item" style="gap: 0px 3px;">
                            <p class="text-lookup text-element semibold display_paragraph line_break_by_truncating_tail text-start"
                              style="color: #222; font-size: 14px">
                              일반 배송
                            </p>
                          </div>
                        </div>
                      </div>
                      <div class="text_table_labels label-item flex-shrink-0" style="margin: 0px 0px 2px;">
                        <div class="labels">
                          <div class="text_body labels__label1" style="gap: 0px 2px;">
                            <p class="text-lookup text-element semibold display_paragraph d-flex justify-content-end text-start"
                              style="color: #222; font-size: 16px; white-space: nowrap;">
                              180,000원
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                
                <div style="height: 20px;"></div>
                <div class="text-header-checkout" style="height: 20px; padding: 0px 16px;">
                  <div class="left">
                    <div class="text_body title_item" style="gap: 0px 2px;">
                      <p class="text-lookup text-element display_paragraph text-truncate"
                        style="color: #222; text-align: left;">
                        상품금액
                      </p>
                    </div>
                  </div>
                  <div class="right">180,000원</div>
                </div>

                <div style="height: 8px;"></div>
                <div class="d-flex flex-column align-items-start" style="gap: 6px 0px; padding: 0px 16px;">
                  <div class="d-flex">
                    <div class="radio-element cursor-pointer">
                    <div class="text_body label-item" style="gap: 0px 2px;">
                      <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail"
                        style="color: #909090; text-align: left; width: inherit; font-size: 13px;">
                        검수완료 · 5-7일 내 도착 예정</p>
                    </div>
                  </div>
                 
                  </div>
                </div>

                <div style="height: 20px;"></div>
                <div class="text_collapse" style="padding: 16px; background-color: #fafafa;">
                  <div class="d-flex justify-content-between position-relative">
                    <div class="text_body" style="gap: 0px 2px;">
                      <p class="text-lookup text-element display_paragraph"
                        style="color: #222; text-align: left; width: inherit; font-size: 14px;">
                        예상 결제금액
                      </p>
                    </div>
                    <div id="toggle-icon" class="d-flex align-items-center cursor-pointer">
                      <div class="text_body" style="gap: 0px 2px;">
                        <p class="text-lookup text-element semibold display_paragraph"
                          style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                          303,000원
                        </p>
                      </div>
                      <svg id="arrow-down" style="margin-left: 4px;" viewBox="0 0 12 12" fill="none"
                        xmlns="http://www.w3.org/2000/svg" width="12" height="12">
                        <path fill-rule="evenodd" clip-rule="evenodd"
                          d="M1.375 3.956l.53-.53L6 7.52l4.095-4.094.53.53L6 8.581 1.375 3.956z" fill="#4E4E4E"></path>
                      </svg>
                      <svg id="arrow-up" style="margin-left: 4px; display: none;" viewBox="0 0 12 12" fill="none"
                        xmlns="http://www.w3.org/2000/svg" width="12" height="12">
                        <path fill-rule="evenodd" clip-rule="evenodd"
                          d="M6 4.48L1.906 8.574l-.53-.53L6 3.419l4.625 4.625-.53.53L6 4.48z" fill="#4E4E4E"></path>
                      </svg>
                    </div>
                  </div>
                  <!-- 접었다가 펼치는 부분 -->
                  <div class="toggle-section" style="display: none;">
                    <div class="content">
                      <div class="divider_horizontal" style="height: 2px; margin: 16px 0px 12px;">
                        <div class="divider" style="background-color: #f4f4f4; width: 100%; height: 2px;"></div>
                      </div>
                      <div class="text_table_right_align" style="margin: 4px 0px 0px; padding: 3px 0px;">
                        <div class="title-labels">
                          <div class="text_body title" style="gap: 0px 2px; padding: 0px;">
                            <p class="text-lookup text-element display_paragraph"
                              style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                              상품금액
                            </p>
                          </div>
                          <div class="text_table_labels labels" style="align-items: flex-end; float: right;">
                            <div class="labels">
                              <div class="text_body labels__label1" style="gap: 0px 2px;">
                                <p class="text-lookup text-element display_paragraph"
                                  style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                                  180,000원
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="text_table_right_align" style="margin: 4px 0px 0px; padding: 3px 0px;">
                        <div class="title-labels">
                          <div class="text_body title" style="gap: 0px 2px; padding: 0px;">
                            <p class="text-lookup text-element display_paragraph"
                              style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                              할인 금액
                            </p>
                          </div>
                          <div class="text_table_labels labels" style="align-items: flex-end; float: right;">
                            <div class="labels">
                              <div class="text_body labels__label1" style="gap: 0px 2px;">
                                <p class="text-lookup text-element display_paragraph"
                                  style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                                  무료
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="text_table_right_align" style="margin: 4px 0px 0px; padding: 3px 0px;">
                        <div class="title-labels">
                          <div class="text_body title" style="gap: 0px 2px; padding: 0px;">
                            <p class="text-lookup text-element display_paragraph"
                              style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                              수수료
                            </p>
                            <div class="content_image"
                              style="border-radius: 50%; width: 16px; height: 16px; cursor: pointer;">
                              <picture class="picture image" style="object-fit: none; aspect-ratio: auto;">
                                <source type="image/webp"
                                  srcset="https://kream-phinf.pstatic.net/MjAyNDA2MjdfMTI1/MDAxNzE5NDI0MjgzNTY1.KJPqasmhwUlwHrPUzPFAQmVyd6QuI0iGYFjRQWpXMVwg.222-hSWJZRQRo6w0dVNrzfzGgGoPMnFLhPAj5cVjGEYg.PNG/a_b2ea142984164007897f0cd010028868.png">
                                <source
                                  srcset="https://kream-phinf.pstatic.net/MjAyNDA2MjdfMTI1/MDAxNzE5NDI0MjgzNTY1.KJPqasmhwUlwHrPUzPFAQmVyd6QuI0iGYFjRQWpXMVwg.222-hSWJZRQRo6w0dVNrzfzGgGoPMnFLhPAj5cVjGEYg.PNG/a_b2ea142984164007897f0cd010028868.png">
                                <img
                                  src="https://kream-phinf.pstatic.net/MjAyNDA2MjdfMTI1/MDAxNzE5NDI0MjgzNTY1.KJPqasmhwUlwHrPUzPFAQmVyd6QuI0iGYFjRQWpXMVwg.222-hSWJZRQRo6w0dVNrzfzGgGoPMnFLhPAj5cVjGEYg.PNG/a_b2ea142984164007897f0cd010028868.png"
                                  loading="lazy" width="16px" height="16px" class="image">
                              </picture>
                            </div>
                          </div>
                          <div class="text_table_labels labels" style="align-items: flex-end; float: right;">
                            <div class="labels">
                              <div class="text_body labels__label1" style="gap: 0px 2px;">
                                <p class="text-lookup text-element display_paragraph"
                                  style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                                  무료
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="text_table_right_align" style="margin: 4px 0px 0px; padding: 3px 0px;">
                        <div class="title-labels">
                          <div class="text_body title" style="gap: 0px 2px; padding: 0px;">
                            <p class="text-lookup text-element display_paragraph"
                              style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                              배송비
                            </p>
                          </div>
                          <div class="text_table_labels labels" style="align-items: flex-end; float: right;">
                            <div class="labels">
                              <div class="text_body labels__label1" style="gap: 0px 2px;">
                                <p class="text-lookup text-element display_paragraph"
                                  style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                                  무료
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- 접었다가 펼치는 부분 종료 -->
                   
                </div>
              </div>
            </div>
            
			<div data-v-27257960="" data-v-72ff8bd3="" class="divider_horizontal" data-v-5dd17c18="" style="height: 8px;">
			<div data-v-2db66556="" data-v-27257960="" class="divider" style="--d583d372: #F4F4F4; --004afd35: 100%; --2174a0d0: 8px;">
			</div>
			</div>
			            
			<div class="order-content">
              <div class="order-content-wrapper bg-white rounded shadow-sm flex-column align-items-start d-flex"
                style="border-radius: 0px 0px 10px 10px; width: -webkit-fill-available;">
                <div style="height: 20px;"></div>
                
  
                  <div class="order-content-header justify-content-between" style="padding-left: 20px; display: flex; padding-right: 20px; width: 100%;">
                    <!-- Checkbox -->
                    <input type="checkbox" id="item-select" name="item-select" class="checkbox-input " >
                    <label for="item-select" class="checkbox-label"></label>
                
                    <!-- Delete Button -->
                    <button class="button_xsmall" style="border-radius: 100px; padding: 4px 10px; background-color: rgb(255, 255, 255); box-shadow: rgb(235, 235, 235) 0px 0px 0px 1px inset; cursor: pointer;">
                      <div class="button__text">
                        <div class="text_body title_item" style="gap: 0px 2px;">
                          <p class="text-lookup text-element display_paragraph white-space-nowrap ellipsis-1" style="color: rgb(34, 34, 34); text-align: left; width: inherit; --870e2ebe: 12px; --5c758a7a: #222222; --01d25667: 12px; --fc3d6318: 12px;">삭제</p>
                        </div>
                      </div>
					</button>
                  </div>
      			 <div style="height: 20px;"></div>
                  <div class="product-list-info-default d-flex" style="padding: 0px 16px;">
                    <div class="thumbnail d-inline-block position-relative"
                      style="border-radius: 10px; background-color: #f4f4f4; width: 80px; height: 80px;">
                      <div class="content_image" style="width: 80px; height: 80px;">
                        <picture class="picture image" style="object-fit: none; aspect-ratio: auto;">
                          <source type="image/webp"
                            srcset="https://kream-phinf.pstatic.net/MjAyMzAyMTZfMTU0/MDAxNjc2NTM2NTMwNTQx.hu3R_fMqd947Y2-86BiY-qW1YEqxdpjNScBAkUG1SH8g.S-Ep5v7zM1lCgbvDXc8VxtojU9mauC-RaLYaCaCELI4g.JPEG/a_47311e20fc104289873f16757800ca12.jpg">
                          <source
                            srcset="https://kream-phinf.pstatic.net/MjAyMzAyMTZfMTU0/MDAxNjc2NTM2NTMwNTQx.hu3R_fMqd947Y2-86BiY-qW1YEqxdpjNScBAkUG1SH8g.S-Ep5v7zM1lCgbvDXc8VxtojU9mauC-RaLYaCaCELI4g.JPEG/a_47311e20fc104289873f16757800ca12.jpg">
                          <img
                            src="https://kream-phinf.pstatic.net/MjAyMzAyMTZfMTU0/MDAxNjc2NTM2NTMwNTQx.hu3R_fMqd947Y2-86BiY-qW1YEqxdpjNScBAkUG1SH8g.S-Ep5v7zM1lCgbvDXc8VxtojU9mauC-RaLYaCaCELI4g.JPEG/a_47311e20fc104289873f16757800ca12.jpg"
                            loading="lazy" width="80px" height="80px" class="image">
                        </picture>
                      </div>
                    </div>
  
                    <div class="content">
                      <div class="d-flex flex-column align-items-start" style="width: -webkit-fill-available;">
                        <div class="text_body" style="gap: 0px 2px;">
                          <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail"
                            style="color: #222;">
                            Adidas Originals Quilted Superstar Bomber Jacket Black - KR Sizing
                          </p>
                        </div>
                        <div class="text_body" style="gap: 0px 2px;">
                          <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail text-start"
                            style="color: #a7a7a7; font-size: 13px;">
                            아디다스 오리지널스 퀼티드 슈퍼스타 봄버 자켓 블랙 - KR 사이즈
                          </p>
                        </div>
                        <div class="text_body" style="gap: 0px 2px;">
                          <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail text-start"
                            style="color: #a7a7a7; font-size: 12px;">
                            HL9203
                          </p>
                        </div>
                      </div>
                      <div class="bottom">
                        <div class="text-table-options text-table-options--default" style="margin: 0px 0px 2px;">
                          <div class="text_body option option1_item" style="gap: 0px 3px;">
                            <p class="text-lookup text-element semibold display_paragraph line_break_by_truncating_tail"
                              style="color: #222; font-size: 14px">
                              S
                            </p>
                          </div>
                          <div class="option-right-text">
                            <div class="text_body option option2_item" style="gap: 0px 2px;">
                              <p class="text-lookup text-element semibold display_paragraph"
                                style="color: #222; font-size: 14px">
                                /
                              </p>
                            </div>
                            <div class="text_body option option3_item" style="gap: 0px 3px;">
                              <p class="text-lookup text-element semibold display_paragraph line_break_by_truncating_tail text-start"
                                style="color: #222; font-size: 14px">
                                일반 배송
                              </p>
                            </div>
                          </div>
                        </div>
                        <div class="text_table_labels label-item flex-shrink-0" style="margin: 0px 0px 2px;">
                          <div class="labels">
                            <div class="text_body labels__label1" style="gap: 0px 2px;">
                              <p class="text-lookup text-element semibold display_paragraph d-flex justify-content-end text-start"
                                style="color: #222; font-size: 16px; white-space: nowrap;">
                                180,000원
                              </p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
  
                  
                  <div style="height: 20px;"></div>
                  <div class="text-header-checkout" style="height: 20px; padding: 0px 16px;">
                    <div class="left">
                      <div class="text_body title_item" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph text-truncate"
                          style="color: #222; text-align: left;">
                          상품금액
                        </p>
                      </div>
                    </div>
                    <div class="right">180,000원</div>
                  </div>
  
                  <div style="height: 8px;"></div>
                  <div class="d-flex flex-column align-items-start" style="gap: 6px 0px; padding: 0px 16px;">
                    <div class="d-flex">
                      <div class="radio-element cursor-pointer">
                        <div class="text_body label-item" style="gap: 0px 2px;">
                          <p class="text-lookup text-element display_paragraph line_break_by_truncating_tail"
                            style="color: #909090; text-align: left; width: inherit; font-size: 13px;">
                            검수완료 · 5-7일 내 도착 예정</p>
                        </div>
                    </div>

                    </div>
                  </div>
  
                  <div style="height: 20px;"></div>
                  <div class="text_collapse" style="padding: 16px; background-color: #fafafa;">
                    <div class="d-flex justify-content-between position-relative">
                      <div class="text_body" style="gap: 0px 2px;">
                        <p class="text-lookup text-element display_paragraph"
                          style="color: #222; text-align: left; width: inherit; font-size: 14px;">
                          예상 결제금액
                        </p>
                      </div>
                      <div id="toggle-icon" class="d-flex align-items-center cursor-pointer">
                        <div class="text_body" style="gap: 0px 2px;">
                          <p class="text-lookup text-element semibold display_paragraph"
                            style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                            303,000원
                          </p>
                        </div>
                        <svg id="arrow-down" style="margin-left: 4px;" viewBox="0 0 12 12" fill="none"
                          xmlns="http://www.w3.org/2000/svg" width="12" height="12">
                          <path fill-rule="evenodd" clip-rule="evenodd"
                            d="M1.375 3.956l.53-.53L6 7.52l4.095-4.094.53.53L6 8.581 1.375 3.956z" fill="#4E4E4E"></path>
                        </svg>
                        <svg id="arrow-up" style="margin-left: 4px; display: none;" viewBox="0 0 12 12" fill="none"
                          xmlns="http://www.w3.org/2000/svg" width="12" height="12">
                          <path fill-rule="evenodd" clip-rule="evenodd"
                            d="M6 4.48L1.906 8.574l-.53-.53L6 3.419l4.625 4.625-.53.53L6 4.48z" fill="#4E4E4E"></path>
                        </svg>
                      </div>
                    </div>
                    <!-- 접었다가 펼치는 부분 -->
                    <div class="toggle-section" style="display: none;">
                      <div class="content">
                        <div class="divider_horizontal" style="height: 2px; margin: 16px 0px 12px;">
                          <div class="divider" style="background-color: #f4f4f4; width: 100%; height: 2px;"></div>
                        </div>
                        <div class="text_table_right_align" style="margin: 4px 0px 0px; padding: 3px 0px;">
                          <div class="title-labels">
                            <div class="text_body title" style="gap: 0px 2px; padding: 0px;">
                              <p class="text-lookup text-element display_paragraph"
                                style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                                상품금액
                              </p>
                            </div>
                            <div class="text_table_labels labels" style="align-items: flex-end; float: right;">
                              <div class="labels">
                                <div class="text_body labels__label1" style="gap: 0px 2px;">
                                  <p class="text-lookup text-element display_paragraph"
                                    style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                                    180,000원
                                  </p>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="text_table_right_align" style="margin: 4px 0px 0px; padding: 3px 0px;">
                          <div class="title-labels">
                            <div class="text_body title" style="gap: 0px 2px; padding: 0px;">
                              <p class="text-lookup text-element display_paragraph"
                                style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                                할인 금액
                              </p>
                            </div>
                            <div class="text_table_labels labels" style="align-items: flex-end; float: right;">
                              <div class="labels">
                                <div class="text_body labels__label1" style="gap: 0px 2px;">
                                  <p class="text-lookup text-element display_paragraph"
                                    style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                                    무료
                                  </p>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="text_table_right_align" style="margin: 4px 0px 0px; padding: 3px 0px;">
                          <div class="title-labels">
                            <div class="text_body title" style="gap: 0px 2px; padding: 0px;">
                              <p class="text-lookup text-element display_paragraph"
                                style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                                수수료
                              </p>
                              <div class="content_image"
                                style="border-radius: 50%; width: 16px; height: 16px; cursor: pointer;">
                                <picture class="picture image" style="object-fit: none; aspect-ratio: auto;">
                                  <source type="image/webp"
                                    srcset="https://kream-phinf.pstatic.net/MjAyNDA2MjdfMTI1/MDAxNzE5NDI0MjgzNTY1.KJPqasmhwUlwHrPUzPFAQmVyd6QuI0iGYFjRQWpXMVwg.222-hSWJZRQRo6w0dVNrzfzGgGoPMnFLhPAj5cVjGEYg.PNG/a_b2ea142984164007897f0cd010028868.png">
                                  <source
                                    srcset="https://kream-phinf.pstatic.net/MjAyNDA2MjdfMTI1/MDAxNzE5NDI0MjgzNTY1.KJPqasmhwUlwHrPUzPFAQmVyd6QuI0iGYFjRQWpXMVwg.222-hSWJZRQRo6w0dVNrzfzGgGoPMnFLhPAj5cVjGEYg.PNG/a_b2ea142984164007897f0cd010028868.png">
                                  <img
                                    src="https://kream-phinf.pstatic.net/MjAyNDA2MjdfMTI1/MDAxNzE5NDI0MjgzNTY1.KJPqasmhwUlwHrPUzPFAQmVyd6QuI0iGYFjRQWpXMVwg.222-hSWJZRQRo6w0dVNrzfzGgGoPMnFLhPAj5cVjGEYg.PNG/a_b2ea142984164007897f0cd010028868.png"
                                    loading="lazy" width="16px" height="16px" class="image">
                                </picture>
                              </div>
                            </div>
                            <div class="text_table_labels labels" style="align-items: flex-end; float: right;">
                              <div class="labels">
                                <div class="text_body labels__label1" style="gap: 0px 2px;">
                                  <p class="text-lookup text-element display_paragraph"
                                    style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                                    무료
                                  </p>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="text_table_right_align" style="margin: 4px 0px 0px; padding: 3px 0px;">
                          <div class="title-labels">
                            <div class="text_body title" style="gap: 0px 2px; padding: 0px;">
                              <p class="text-lookup text-element display_paragraph"
                                style="color: #909090; text-align: left; width: inherit; font-size: 14px;">
                                배송비
                              </p>
                            </div>
                            <div class="text_table_labels labels" style="align-items: flex-end; float: right;">
                              <div class="labels">
                                <div class="text_body labels__label1" style="gap: 0px 2px;">
                                  <p class="text-lookup text-element display_paragraph"
                                    style="color: #222; text-align: right; width: inherit; font-size: 14px;">
                                    무료
                                  </p>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- 접었다가 펼치는 부분 종료 -->
                     
                  </div>
                </div>
              </div>
              <!---------------선택주문정보 start------------>
            <div data-v-27257960="" data-v-72ff8bd3="" class="divider_horizontal" data-v-5dd17c18="" style="height: 8px;">
			<div data-v-2db66556="" data-v-27257960="" class="divider" style="--d583d372: #F4F4F4; --004afd35: 100%; --2174a0d0: 8px;">
			</div>
			</div>
			
			<div class="order-content">
            
            <div data-v-30367b65="" data-v-72ff8bd3="" class="text_body" data-v-5dd17c18="" style="border-radius: 10px 10px 0px 0px; width: -webkit-fill-available; gap: 0px 2px; padding: 15px 16px; background-color: rgb(255, 255, 255);">
              <p data-v-411bafa1="" data-v-13a202e0="" data-v-30367b65="" class="text-lookup text-element bold display_paragraph" style="color: rgb(34, 34, 34); text-align: left; width: inherit; --870e2ebe: 16px; --5c758a7a: #222222; --01d25667: 16px; --fc3d6318: 16px;">선택 주문정보</p>
            </div>
            
            <div data-v-27257960="" data-v-72ff8bd3="" class="divider_horizontal" data-v-5dd17c18="" style="height: 1px; padding: 0px 16px; background-color: rgb(255, 255, 255);"><div data-v-2db66556="" data-v-27257960="" class="divider" style="--d583d372: #F4F4F4; --004afd35: 100%; --2174a0d0: 1px;"></div></div>  
            
            <div data-v-5dd17c18="" data-v-72ff8bd3="" class="layout_list_vertical" style="gap: 4px 0px; padding: 12px 16px; background-color: rgb(255, 255, 255);">
            <div data-v-d148bcc4="" data-v-72ff8bd3="" class="text_table_right_align" data-v-5dd17c18="" style="padding: 3px 0px; background-color: rgb(255, 255, 255);">
            <div data-v-d148bcc4="" class="title-labels">
            <div data-v-30367b65="" data-v-d148bcc4="" class="text_body title" style="gap: 0px 2px; padding: 0px;">
            	<p data-v-411bafa1="" data-v-13a202e0="" data-v-30367b65="" class="text-lookup text-element display_paragraph" style="color: rgb(144, 144, 144); text-align: left; width: inherit; --870e2ebe: 14px; --5c758a7a: #909090; --01d25667: 14px; --fc3d6318: 14px;">총 상품금액</p>
            </div>
            <div data-v-441f876b="" data-v-d148bcc4="" class="text_table_labels labels" style="--1863b985: flex-end; --453c8022: right;">
            <div data-v-441f876b="" class="labels">
            <div data-v-30367b65="" data-v-441f876b="" class="text_body labels__label1" style="gap: 0px 2px;">
            
            <p data-v-411bafa1="" data-v-13a202e0="" data-v-30367b65="" class="text-lookup text-element display_paragraph" style="color: rgb(34, 34, 34); text-align: right; width: inherit; --870e2ebe: 14px; --5c758a7a: #222222; --01d25667: 14px; --fc3d6318: 14px;">118,000원</p>
            
            </div>
            </div>
            </div>
            </div>
            
            </div>
            
            <div data-v-d148bcc4="" data-v-72ff8bd3="" class="text_table_right_align" data-v-5dd17c18="" style="padding: 3px 0px;">
            <div data-v-d148bcc4="" class="title-labels">
            <div data-v-30367b65="" data-v-d148bcc4="" class="text_body title" style="gap: 0px 2px; padding: 0px;">
            <p data-v-411bafa1="" data-v-13a202e0="" data-v-30367b65="" class="text-lookup text-element display_paragraph" style="color: rgb(144, 144, 144); text-align: left; width: inherit; --870e2ebe: 14px; --5c758a7a: #909090; --01d25667: 14px; --fc3d6318: 14px;">총 할인금액</p>
            <div data-v-1a4183c0="" data-v-30367b65="" class="content_image" element="[object Object]" element-style="[object Object]" style="border-radius: 50%; width: 16px; height: 16px; margin: 0px 0px 0px 2px; cursor: pointer;">
            <picture data-v-1cc7fb83="" data-v-1a4183c0="" class="picture image" style="object-fit: none; aspect-ratio: auto;"><source data-v-1cc7fb83="" type="image/webp" srcset="https://kream-phinf.pstatic.net/MjAyNDA2MjdfMTI1/MDAxNzE5NDI0MjgzNTY1.KJPqasmhwUlwHrPUzPFAQmVyd6QuI0iGYFjRQWpXMVwg.222-hSWJZRQRo6w0dVNrzfzGgGoPMnFLhPAj5cVjGEYg.PNG/a_b2ea142984164007897f0cd010028868.png">
            <source data-v-1cc7fb83="" srcset="https://kream-phinf.pstatic.net/MjAyNDA2MjdfMTI1/MDAxNzE5NDI0MjgzNTY1.KJPqasmhwUlwHrPUzPFAQmVyd6QuI0iGYFjRQWpXMVwg.222-hSWJZRQRo6w0dVNrzfzGgGoPMnFLhPAj5cVjGEYg.PNG/a_b2ea142984164007897f0cd010028868.png"><img data-v-1cc7fb83="" src="https://kream-phinf.pstatic.net/MjAyNDA2MjdfMTI1/MDAxNzE5NDI0MjgzNTY1.KJPqasmhwUlwHrPUzPFAQmVyd6QuI0iGYFjRQWpXMVwg.222-hSWJZRQRo6w0dVNrzfzGgGoPMnFLhPAj5cVjGEYg.PNG/a_b2ea142984164007897f0cd010028868.png" loading="lazy" width="16px" height="16px" class="image"></picture>
            </div>
            </div>
            <div data-v-441f876b="" data-v-d148bcc4="" class="text_table_labels labels" style="--1863b985: flex-end; --453c8022: right;">
            <div data-v-441f876b="" class="labels">
            <div data-v-30367b65="" data-v-441f876b="" class="text_body labels__label1" style="gap: 0px 2px;">
            <p data-v-411bafa1="" data-v-13a202e0="" data-v-30367b65="" class="text-lookup text-element display_paragraph" style="color: rgb(34, 34, 34); text-align: right; width: inherit; --870e2ebe: 14px; --5c758a7a: #222222; --01d25667: 14px; --fc3d6318: 14px;">0원</p>
            </div>
            </div>
            </div>
            </div>
            </div>
            <div data-v-d148bcc4="" data-v-72ff8bd3="" class="text_table_right_align" data-v-5dd17c18="" style="padding: 3px 0px;">
            <div data-v-d148bcc4="" class="title-labels">
            <div data-v-30367b65="" data-v-d148bcc4="" class="text_body title" style="gap: 0px 2px; padding: 0px;">
            <p data-v-411bafa1="" data-v-13a202e0="" data-v-30367b65="" class="text-lookup text-element display_paragraph" style="color: rgb(144, 144, 144); text-align: left; width: inherit; --870e2ebe: 14px; --5c758a7a: #909090; --01d25667: 14px; --fc3d6318: 14px;">총 배송비</p>
            </div>
            <div data-v-441f876b="" data-v-d148bcc4="" class="text_table_labels labels" style="--1863b985: flex-end; --453c8022: right;">
            <div data-v-441f876b="" class="labels">
            <div data-v-30367b65="" data-v-441f876b="" class="text_body labels__label1" style="gap: 0px 2px;">
            <p data-v-411bafa1="" data-v-13a202e0="" data-v-30367b65="" class="text-lookup text-element display_paragraph" style="color: rgb(34, 34, 34); text-align: right; width: inherit; --870e2ebe: 14px; --5c758a7a: #222222; --01d25667: 14px; --fc3d6318: 14px;">5,000원</p>
            
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>   
            <div data-v-27257960="" data-v-72ff8bd3="" class="divider_horizontal" data-v-5dd17c18="" style="height: 1px; padding: 0px 16px; background-color: rgb(255, 255, 255);">
            <div data-v-2db66556="" data-v-27257960="" class="divider" style="--d583d372: #F4F4F4; --004afd35: 100%; --2174a0d0: 1px;">
            </div>
            </div>
            <div data-v-d148bcc4="" data-v-72ff8bd3="" class="text_table_right_align" data-v-5dd17c18="" style="border-radius: 0px 0px 10px 10px; padding: 15px 16px; background-color: rgb(255, 255, 255);">
            <div data-v-d148bcc4="" class="title-labels">
            <div data-v-30367b65="" data-v-d148bcc4="" class="text_body title" style="gap: 0px 2px; padding: 1px 0px 0px;">
            <p data-v-411bafa1="" data-v-13a202e0="" data-v-30367b65="" class="text-lookup text-element semibold display_paragraph" style="color: rgb(34, 34, 34); text-align: left; width: inherit; --870e2ebe: 14px; --5c758a7a: #222222; --01d25667: 14px; --fc3d6318: 14px;">총 예상 결제금액</p>
            </div>
            <div data-v-441f876b="" data-v-d148bcc4="" class="text_table_labels labels" style="--1863b985: flex-end; --453c8022: right;">
            <div data-v-441f876b="" class="labels">
            <div data-v-30367b65="" data-v-441f876b="" class="text_body labels__label1" style="gap: 0px 2px;">
            <p data-v-411bafa1="" data-v-13a202e0="" data-v-30367b65="" class="text-lookup text-element bold display_paragraph" style="color: rgb(34, 34, 34); text-align: right; width: inherit; --870e2ebe: 16px; --5c758a7a: #222222; --01d25667: 16px; --fc3d6318: 16px;">123,000원</p>
            </div>
            </div>
            </div>
            </div>
            </div>
            
<!--------------end----------------------->
			<div data-v-27257960="" data-v-72ff8bd3="" class="divider_horizontal" data-v-5dd17c18="" style="height: 8px;">
			<div data-v-2db66556="" data-v-27257960="" class="divider" style="--d583d372: #F4F4F4; --004afd35: 100%; --2174a0d0: 8px;">
			</div>
			</div>
            <!--------------기타 안내문 start-------------------------->
            <div class="order-content">
              <div class="order-content-wrapper">
                <div class="text_body"
                  style="border-radius: 10px; gap: 0px 2px; padding: 16px; background-color: #fff;">
                  
                  <p class="text-lookup text-element display_paragraph"
                    style="color: #909090; text-align: left; width: inherit; font-size: 13px; --5c758a7a: #909090; --01d25667: 13px; --fc3d6318: 13px;">
                    상품은 Runfluence 또는 제휴 업체가 판매하며 각 거래 조건 등은 <span class="text-lookup underline has_action">판매자
                      정보</span>
                    에서 확인해주시기 바랍니다.
                  </p>
                </div>
              </div>
            </div>
            
			<div data-v-27257960="" data-v-72ff8bd3="" class="divider_horizontal" data-v-5dd17c18="" style="height: 8px;">
			<div data-v-2db66556="" data-v-27257960="" class="divider" style="--d583d372: #F4F4F4; --004afd35: 100%; --2174a0d0: 8px;">
			</div>
			</div>
            
            </div>
            <div class="cart-buy-footer">
		          <div class="layout_list_horizontal_equal" style="margin: 8px; gap: 16px; justify-content: center;">
		            <button class="button button_xlarge"
		              style="border-radius: 10px; padding: 10px 16px; background-color: #ef6253; cursor: pointer; flex-grow:1;">
		              <div class="button__text">
		                <div class="text_body title_item" style="gap: 0px 4px;">
		                  <p class="text-lookup text-element bold display_paragraph line_break_by_truncating_tail white-space-nowrap text-truncate"
		                    style="color: #ffffff; text-align: left; width: inherit; font-size: 16px;">
		                    317,900원
		                    <em class="text-lookup bold" style="color: rgba(255, 255, 255, 0.65);">·</em> 결제하기
		                  </p>
		                </div>
		              </div>
		            </button>
		          </div>
		        </div>         
            </div>
            </div>
<!-------------------------------------------------------------------------------------------------------------------------------------------------------->
	         </div>
	     </div>
	   </div>
        
   
    <%@include file="/WEB-INF/views/include/shopFooter.jsp" %>
</body>

</html>

