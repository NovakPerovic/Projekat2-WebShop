<%@include file="top.jsp" %>
<div class="center_content">
    <div class="center_title_bar">Confirm!</div>
    <div class="center_content">
        <div class="prod_box_big">
            Confirm order!</br></br></br>
            <form method="post" action="confirm">

                Your name:<br/>
                <input type="text" name="name"/></br></br>

                Your lastname:<br/>
                <input type="text" name="lastname"/></br></br>


                Your addres:<br/>
                <input type="text" name="address"/></br></br>

                <input type="submit" value="Confirm"/></br>
            </form>


        </div>
    </div>
</div>

</div>
<!-- end of center content -->
<%@include file="bottom.jsp" %>
