<%@include file="top.jsp" %>

<div class="center_content">
    <div class="center_title_bar">Ours Products
    </div>

    <c:forEach items="${products}" var="product">
        <div class="prod_box">
            <div class="top_prod_box"></div>
            <div class="center_prod_box">
                <div class="product_title"><a href="details">${product.name}</a></div>
                <div class="product_img"><a href="details/${product.id}"><img src="resources/images/${product.photo}" alt="" border="0" /></a></div>
                <div class="prod_price"><span class="price">${product.price}$</span></div>
            </div>
            <div class="bottom_prod_box"></div>
            <div class="prod_details_tab"> <a href="tocart/${product.id}" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="resources/images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="resources/images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="./details/${product.id}" class="prod_details">details</a> </div>
        </div>
    </c:forEach>

    <div class="center_title_bar">Page: &numsp;<c:forEach begin="1" end="${totalpages+1}" varStatus="counter">
            <a href="?page=${counter.count}">${counter.count}</a> 
        </c:forEach>
    </div>



    <div class="center_title_bar">Recommended Products</div>
    <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
            <div class="product_title"><a href="details">Motorola 156 MX-VL</a></div>
            <div class="product_img"><a href="details"><img src="resources/images/laptop.gif" alt="" border="0" /></a></div>
            <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="resources/images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="resources/images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="resources/images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="resources/details.html" class="prod_details">details</a> </div>
    </div>
    <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
            <div class="product_title"><a href="resources/details.html">Iphone Apple</a></div>
            <div class="product_img"><a href="resources/details.html"><img src="resources/images/p4.gif" alt="" border="0" /></a></div>
            <div class="prod_price"><span class="price">270$</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="resources/images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="resources/images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="resources/details.html" class="prod_details">details</a> </div>
    </div>
    <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
            <div class="product_title"><a href="resources/details.html">Samsung Webcam</a></div>
            <div class="product_img"><a href="resources/details.html"><img src="resources/images/p5.gif" alt="" border="0" /></a></div>
            <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="resources/images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="resources/images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="resources/images/favorites.gif" alt="" border="0" class="left_bt" /></a> <a href="resources/details.html" class="prod_details">details</a> </div>
    </div>
</div>
<%@include file="bottom.jsp" %>