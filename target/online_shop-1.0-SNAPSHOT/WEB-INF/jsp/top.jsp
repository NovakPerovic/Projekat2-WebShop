<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <base href="/online_shop/"/>
        <title>Electronix Store</title>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <link rel="stylesheet" type="text/css" href="resources/style.css" />
        <!--[if IE 6]>
        <link rel="stylesheet" type="text/css" href="iecss.css" />
        <![endif]-->
        <script type="text/javascript" src="resources/js/boxOver.js"></script>
    </head>
    <body>
        <div id="main_container">
            <div class="top_bar">
                <div class="top_search">
                    <div class="search_text"><a href="#">Advanced Search</a></div>
                    <input type="text" class="search_input" name="search" />
                    <input type="image" src="resources/images/search.gif" class="search_bt"/>
                </div>
                <div class="languages">
                    <div class="lang_text">Languages:</div>
                    <a href="#" class="lang"><img src="resources/images/en.gif" alt="" border="0" /></a> <a href="#" class="lang"><img src="images/de.gif" alt="" border="0" /></a> </div>
            </div>
            <div id="header">
                <div id="logo"> <a href="#"><img src="resources/images/logo.png" alt="" border="0" width="237" height="140" /></a> </div>
                <div class="oferte_content">
                    <div class="top_divider"><img src="resources/images/header_divider.png" alt="" width="1" height="164" /></div>
                    <div class="oferta">
                        <div class="oferta_content"> <img src="resources/images/laptop.png" width="94" height="92" alt="" border="0" class="oferta_img" />
                            <div class="oferta_details">
                                <div class="oferta_title">Samsung GX 2004 LM</div>
                                <div class="oferta_text"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco </div>
                                <a href="resources/details.html" class="details">details</a> </div>
                        </div>
                        <div class="oferta_pagination"> <span class="current">1</span> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> </div>
                    </div>
                    <div class="top_divider"><img src="resources/images/header_divider.png" alt="" width="1" height="164" /></div>
                </div>
                <!-- end of oferte_content-->
            </div>
            <div id="main_content">
                <div id="menu_tab">
                    <div class="left_menu_corner"></div>
                    <ul class="menu">
                        <li><a href="#" class="nav1"> Home</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav2">Products</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav3">Specials</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav4">My account</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav4">Sign Up</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav5">Shipping</a></li>
                        <li class="divider"></li>
                        <li><a href="resources/contact.html" class="nav6">Contact Us</a></li>
                        <li class="divider"></li>
                        <li class="currencies">Currencies
                            <select>
                                <option>US Dollar</option>
                                <option>Euro</option>
                            </select>
                        </li>
                    </ul>
                    <div class="right_menu_corner"></div>
                </div>
                <!-- end of menu tab -->
                <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
                <div class="left_content">
                    <div class="title_box">Categories</div>
                    <ul class="left_menu">

                        <c:forEach items="${categories}" var="category">
                            <li class="even"><a href="./${category.id}">${category.name}</a></li>
                            </c:forEach>
                    </ul>
                    <div class="title_box">Special Products</div>
                    <div class="border_box">
                        <div class="product_title"><a href="resources/details.html">Motorola 156 MX-VL</a></div>
                        <div class="product_img"><a href=resources/"details.html"><img src="resources/images/laptop.png" alt="" border="0" /></a></div>
                        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                    </div>
                    <div class="title_box">Newsletter</div>
                    <div class="border_box">
                        <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
                        <a href="#" class="join">join</a> </div>
                    <div class="banner_adds"> <a href="#"><img src="images/bann2.jpg" alt="" border="0" /></a> </div>
                </div>
                <!-- end of left content -->
                