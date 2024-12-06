<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="/WEB-INF/views/include/shopHead.jsp" %>
</head>
<script>
$(document).ready(function() {
	
	
	
	$("#array").change(function() {
	        var array = $(this).val();
	        document.shopForm.array.value = array;
	        document.shopForm.submit();
	});
	
	$("#searchBtn").click(function(){
		if($.trim($("#_searchValue").val()).length <= 0) {
			alert("조회값을 입력하세요.");
			$("#_searchValue").val("");
			$("#_searchValue").focus();
			return;
		}
		
		document.shopForm.prodId.value = "";
		document.shopForm.searchValue.value = $("#_searchValue").val();
		document.shopForm.curPage.value = 1;
		
		document.shopForm.action = "/shop/shopList";
		document.shopForm.submit();
	});
});

function fn_view(prodId)
{
	document.shopForm.prodId.value = prodId;
	document.shopForm.action = "/shop/detail";
	document.shopForm.submit();
}

function fn_list(curPage)
{
	document.shopForm.prodId.value = "";
	document.shopForm.curPage.value = curPage;
	document.shopForm.action = "/shop/shopList";
	document.shopForm.submit();
}

function genderOnlyOne(element) {
    $('input[name="gender"]').prop('checked', false);
    $(element).prop('checked', true);
    
    document.optionForm.action = "/shop/shopList";
    document.optionForm.submit();
}

function priceOnlyOne(element) {
    $('input[name="price"]').prop('checked', false);
    $(element).prop('checked', true);
    
    document.optionForm.action = "/shop/shopList";
    document.optionForm.submit();
}

function brandOnlyOne(element) {
    $('input[name="brand"]').prop('checked', false);
    $(element).prop('checked', true);
    
    document.optionForm.action = "/shop/shopList";
    document.optionForm.submit();
}

</script>
<body>
<%@include file="/WEB-INF/views/include/shopCate.jsp" %>
    <!-- Shop Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <!-- Shop Sidebar Start -->
            <div class="col-lg-3 col-md-12">
            <form name="optionForm" id="optionForm" method="post">
                 <!-- Gender Start -->
                 <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">성별</h5>
                    
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="gender-all" name="gender" value="all" onclick='genderOnlyOne(this)' <c:if test='${gender == "all" }'> checked </c:if>>
                            <label class="custom-control-label check" for="gender-all">All</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="gender-1" name="gender" value="women" onclick='genderOnlyOne(this)' <c:if test='${gender == "women" }'> checked </c:if>>
                            <label class="custom-control-label check" for="gender-1">Women</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="gender-2" name="gender" value="man" onclick='genderOnlyOne(this)' <c:if test='${gender == "man" }'> checked </c:if>>
                            <label class="custom-control-label check" for="gender-2">Man</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>

                </div>
                <!-- Gender End -->
                <!-- Price Start -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">가격</h5>

                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-all" name="price" value="all" onclick='priceOnlyOne(this)' <c:if test='${price == "all" }'> checked </c:if>>
                            <label class="custom-control-label check" for="price-all">All Price</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-1" name="price" value="10" onclick='priceOnlyOne(this)' <c:if test='${price == "10" }'> checked </c:if>>
                            <label class="custom-control-label check" for="price-1">~ 10만원</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-2" name="price" value="20" onclick='priceOnlyOne(this)' <c:if test='${price == "20" }'> checked </c:if>>
                            <label class="custom-control-label check" for="price-2">10만원~20만원</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-3" name="price" value="30" onclick='priceOnlyOne(this)' <c:if test='${price == "30" }'> checked </c:if>>
                            <label class="custom-control-label check" for="price-3">20만원~30만원</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-4" name="price" value="40" onclick='priceOnlyOne(this)' <c:if test='${price == "40" }'> checked </c:if>>
                            <label class="custom-control-label check" for="price-4">30만원~40만원</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-5" name="price" value="50" onclick='priceOnlyOne(this)' <c:if test='${price == "50" }'> checked </c:if>>
                            <label class="custom-control-label check" for="price-5">40만원~50만원</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-6" name="price" value="60" onclick='priceOnlyOne(this)' <c:if test='${gender == "60" }'> checked </c:if>>
                            <label class="custom-control-label check" for="price-6">50만원 이상</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                </div>
                <!-- Price End -->
                
                <!-- Color Start -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">브랜드</h5>

                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-all" name="brand" value="all" onclick='brandOnlyOne(this)' <c:if test='${brand == "all" }'> checked </c:if>>
                            <label class="custom-control-label check" for="brand-all">All Brand</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-1" id="brand-all" name="brand" value="nike" onclick='brandOnlyOne(this)' <c:if test='${brand == "nike" }'> checked </c:if>>
                            <label class="custom-control-label check" for="brand-1">Nike</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-2" id="brand-all" name="brand" value="adidas" onclick='brandOnlyOne(this)' <c:if test='${brand == "adidas" }'> checked </c:if>>
                            <label class="custom-control-label check" for="brand-2">Adidas</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-3" id="brand-all" name="brand" value="puma" onclick='brandOnlyOne(this)' <c:if test='${brand == "puma" }'> checked </c:if>>
                            <label class="custom-control-label check" for="brand-3">Puma</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-4" id="brand-all" name="brand" value="on" onclick='brandOnlyOne(this)' <c:if test='${brand == "on" }'> checked </c:if>>
                            <label class="custom-control-label check" for="brand-4">On</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-5" id="brand-all" name="brand" value="hoka" onclick='brandOnlyOne(this)' <c:if test='${brand == "hoka" }'> checked </c:if>>
                            <label class="custom-control-label check" for="brand-5">Hoka</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-6" id="brand-all" name="brand" value="other" onclick='brandOnlyOne(this)' <c:if test='${brand == "other" }'> checked </c:if>>
                            <label class="custom-control-label check" for="brand-6">Other</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>

                </div>
                <!-- Color End -->

                <!-- Size Start -->
                <div class="mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">사이즈</h5>

                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="size-all">
                            <label class="custom-control-label check" for="size-all">All Size</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-1">
                            <label class="custom-control-label check" for="size-1">XS</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-2">
                            <label class="custom-control-label check" for="size-2">S</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-3">
                            <label class="custom-control-label check" for="size-3">M</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-4">
                            <label class="custom-control-label check" for="size-4">L</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="size-5">
                            <label class="custom-control-label check" for="size-5">XL</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                </div>
			</form>
                <!-- Size End -->

                <!-- Size2 Start -->
                <div class="mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">사이즈</h5>
                    <form>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="size2-all">
                            <label class="custom-control-label check" for="size2-all">All Size</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-1">
                            <label class="custom-control-label check" for="size2-1">220</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-2">
                            <label class="custom-control-label check" for="size2-2">230</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-3">
                            <label class="custom-control-label check" for="size2-3">240</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-4">
                            <label class="custom-control-label check" for="size2-4">250</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-5">
                            <label class="custom-control-label check" for="size2-5">260</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-6">
                            <label class="custom-control-label check" for="size2-6">270</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-7">
                            <label class="custom-control-label check" for="size2-7">280</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-8">
                            <label class="custom-control-label check" for="size2-8">290</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size2-9">
                            <label class="custom-control-label check" for="size2-9">300</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>

                    </form>
                </div>
                <!-- Size2 End -->
            </div>
            <!-- Shop Sidebar End -->


            <!-- Shop Product Start -->
            <div class="col-lg-9 col-md-12">
                <div class="row pb-3">
                    <div class="col-12 pb-1">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <form action="">
                                <div class="input-group">
                                    <div class="input-group-append">
                                    </div>
                                </div>
                            </form>
                            <div class="dropdown ml-4">
							    <select class="form-select border" id="array">
							        <option value="">정렬 기준</option>
							        <option value="1">최신순</option>
							        <option value="2">인기순</option>
							        <option value="3">할인순</option>
							    </select>
							</div>
                        </div>
                    </div>
                    <!-- 단품 제품 영역 start -->
                    <c:if test="${!empty list}">
                    <c:forEach var="prod" items="${list}" varStatus="status">
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <a href="javascript:void(0)" onclick="fn_view('${prod.prodId}');">
                                    <img class="img-fluid w-100" src="/resources/prod-img/TOPS/mainImg/${prod.prodId }.png" alt="Colorful Stylish Shirt">
                                </a>
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">${prod.prodName }</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>${prod.prodPrice - (prod.prodPrice * (prod.prodDiscountPercent / 100)).intValue()}￦</h6><h6 class="text-muted ml-2"><del>${prod.prodPrice}￦</del></h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <div class="btn btn-sm text-dark p-0 wish">
                                    <i class="heart bi-heart" id="heart-icon" style="font-size:15px; color: red; cursor: pointer;"></i> Wish
                                </div>
                                <a href="" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Cart
                                </a>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    </c:if>
                    <!-- 단품 제품 영역 end -->
                    
                    <!-- 페이징 start -->
                    <c:if test="${!empty paging }">
                    <div class="col-12 pb-1">
                        <nav aria-label="Page navigation">
                          <ul class="pagination justify-content-center mb-3">
                          
                          <!-- 이전 페이징 start -->
                          <c:if test="${paging.prevBlockPage gt 0}">
                            <li class="page-item disabled">
                              <a class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.prevBlockPage})" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                              </a>
                            </li>
                            </c:if>
                            <!-- 이전 페이징 end -->
                            
                            <c:forEach var="i" begin="${paging.startPage }" end="${paging.endPage }">
							<c:choose>
								<c:when test="${paging.curPage ne i }">
                            		<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${i})">${i}</a></li>
								</c:when>
								
         						<c:otherwise>
                            		<li class="page-item active"><a class="page-link" href="javascript:void(0)">${i}</a></li>
                            	</c:otherwise>	
							</c:choose>
                            </c:forEach>
                            <!-- 다음 페이징 start -->
                            <c:if test="${paging.nextBlockPage gt 0 }">
                            <li class="page-item">
                              <a class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.nextBlockPage})" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                              </a>
                            </li>
                            </c:if>
                            <!-- 다음 페이징 end -->
                            
                          </ul>
                        </nav>
                    </div>
                    </c:if>
                    <!-- 페이징 end -->
                    
                </div>
            </div>
            <!-- Shop Product End -->
        </div>
    </div>
    <!-- Shop End -->
    
    <!-- form 태그 start -->
    <form name="shopForm" id="shopForm" method="post">
    	<input type="hidden" name="prodId" value="">
    	<input type="hidden" name="searchValue" value="${searchValue }">
   		<input type="hidden" name="curPage" value="${curPage }">
    </form>

    <%@include file="/WEB-INF/views/include/shopFooter.jsp" %>
</body>

</html>