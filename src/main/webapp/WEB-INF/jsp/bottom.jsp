
                <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- end of center content -->
                <div class="right_content">
                    <div class="shopping_cart">
                        <div class="cart_title">Shopping cart</div>
                        <div class="cart_details"> ${items} items <br />
                            <span class="border_cart"></span> Total: <span class="price">350$</span> </div>
                        <div class="cart_icon"><a href="./cart" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img src="resources/images/shoppingcart.png" alt="" width="48" height="48" border="0" /></a></div>
                    </div>
                    <div class="title_box">What?s new</div>
                    <div class="border_box">
                        <div class="product_title"><a href="resources/details.html">Motorola 156 MX-VL</a></div>
                        <div class="product_img"><a href="resources/details.html"><img src="resources/images/p2.gif" alt="" border="0" /></a></div>
                        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                    </div>
                    <div class="title_box">Manufacturers</div>
                    <ul class="left_menu">
                        <c:forEach items="${manufacturers}" var="manu">
                        <li class="odd"><a href="./manu/${manu.name}">${manu.name}</a></li>
                        </c:forEach>
                      
                    </ul>
                    <div class="banner_adds"> <a href="#"><img src="resources/images/bann1.jpg" alt="" border="0" /></a> </div>
                </div>
                <!-- end of right content -->
            </div>
            <!-- end of main content -->
            <div class="footer">
                <div class="left_footer"> <img src="resources/images/footer_logo.png" alt="" width="170" height="49"/> </div>
                <div class="center_footer"> Template name. All Rights Reserved 2008<br />
                    <a href="http://csscreme.com"><img src="resources/images/csscreme.jpg" alt="csscreme" border="0" /></a><br />
                    <img src="resources/images/payment.gif" alt="" /> </div>
                <div class="right_footer"> <a href="#">home</a> <a href="#">about</a> <a href="#">sitemap</a> <a href="#">rss</a> <a href="resources/contact.html">contact us</a> </div>
            </div>
        </div>
        <!-- end of main_container -->
    </body>
</html>
