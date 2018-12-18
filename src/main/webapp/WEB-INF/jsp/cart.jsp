<%@include file="top.jsp" %>
<div class="center_content">
    <div class="center_title_bar">Your cart!   <a style="float: right; padding-right: 10px;" href="confirm"><b>Confirm your order!</b></a></div>
    
    <c:forEach items="${products}" var="product">
        <div class="prod_box_big">
            <div class="top_prod_box_big"></div>
            <div class="center_prod_box_big">
                
                <div class="product_img_big"> <a href="javascript:popImage('resources/images/${product.photo}','Some Title')" title="header=[Zoom] body=[&nbsp;] fade=[on]"><img src="resources/images/${product.photo}" alt="" border="0" /></a>

                </div>
                <div class="details_big_box">
                    <div class="product_title_big">${product.name}</div>
                    <div class="specifications"> Disponibilitate: <span class="blue">In stoc</span><br />
                        Garantie: <span class="blue">24 luni</span><br />
                        Tip transport: <span class="blue">Mic</span><br />
                        Pretul include <span class="blue">TVA</span><br />
                    </div>
                    <div class="prod_price_big"> <span class="price">${product.price}$</span></div>
                    <br>
                    <form method="post" action="remove">
                        <input type="hidden" name="id" value="${product.id}"/>
                        <input type="submit" value="Remove from cart"/>
                    </form>
                </div>
            </div>
            <div class="bottom_prod_box_big"></div>
        </div>
    </c:forEach>
    
    
</div>
<!-- end of center content -->
<%@include file="bottom.jsp" %>