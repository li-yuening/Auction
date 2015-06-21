<%@page language="java" import="java.util.ArrayList,edu.uibe.database.*,edu.uibe.model.*" pageEncoding="UTF-8"%>
<%!ArrayList<ItemInfo> list  = new ArrayList<ItemInfo>();%>
<%!UserDao ud = new UserDao();%>
<%list = ud.executeQueryItem();%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>拍卖管理系统</title><!--                       CSS                       -->
        <!-- Reset Stylesheet -->
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen"><!-- Main Stylesheet -->
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"><!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
        <link rel="stylesheet" href="css/invalid.css" type="text/css" media="screen"><!--                       Javascripts                       -->
        <!-- jQuery -->

        <script type="text/javascript" src="scripts/jquery-1.3.2.min.js">
</script><!-- jQuery Configuration -->

        <script type="text/javascript" src="scripts/simpla.jquery.configuration.js">
</script><!-- Facebox jQuery Plugin -->

        <script type="text/javascript" src="scripts/facebox.js">
</script><!-- jQuery WYSIWYG Plugin -->

        <script type="text/javascript" src="scripts/jquery.wysiwyg.js">
</script><!-- jQuery Datepicker Plugin -->

        <script type="text/javascript" src="scripts/jquery.datePicker.js">
</script>
        <script type="text/javascript" src="scripts/jquery.date.js">
</script>
    </head>
    <body>
        <div id="body-wrapper">
            <!-- Wrapper for the radial gradient background -->
            <div id="sidebar">
                <div id="sidebar-wrapper">
                    <!-- Sidebar with logo and menu -->
                    <div style="width: 140px;margin:0 auto 0 auto;">
                    	<img id="logo" src="images/logo.png" alt="Auction System logo" name="logo">
                    </div>
                    <!-- Sidebar Profile links -->
                    <div id="profile-links">
                        <div style="text-align:center">
                            <h3>
                                <font color="#FF00FF">欢迎登录,管理员</font><br>
                            </h3>
                        </div>
                    </div>
                    <div style="text-align:center">
                        <br>
                        <h2>
                            <a href="#" style="font-family: 黑体">主菜单</a>
                        </h2>
                    </div>
                </div>
                <ul id="main-nav">
                    <!-- Accordion Menu -->
                    <li>
                        <a href="#" class="nav-top-item"><!-- Add the class "current" to current menu item -->
                        	<span class="STYLE1">买家信息</span>
                        </a>
                        <ul>
                            <li>
                                <a href="/Auction/BuyerInfo.jsp">查看买家</a>
                            </li>
                            <li>
                                <a href="/Auction/SearchBuyer.jsp">搜索买家</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-top-item"><!-- Add the class "current" to current menu item -->
                        	<span class="STYLE1">卖家信息</span>
                        </a>
                        <ul>
                            <li>
                                <a href="/Auction/SellerInfo.jsp">查看卖家</a>
                            </li>
                            <li>
                                <a href="/Auction/SearchSeller.jsp">搜索卖家</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-top-item current"><!-- Add the class "current" to current menu item -->
                        	<span class="STYLE1">物品信息</span>
                        </a>
                        <ul>
                        	<li>
                                <a class="current" href="#">查看物品</a>
                            </li>
                            <li>
                                <a href="/Auction/SearchItem.jsp">搜索物品</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-top-item"><!-- Add the class "current" to current menu item -->
                        	<span class="STYLE1">物品类别信息</span>
                        </a>
                        <ul>
                            <li>
                                <a href="/Auction/ItemClass.jsp">查看物品类别</a>
                            </li>
                            <li>
                                <a href="/Auction/AddItemClass.jsp">增加物品类别</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-top-item"><!-- Add the class "current" to current menu item -->
                        	<span class="STYLE1">竞拍信息</span>
                        </a>
                        <ul>
                            <li>
                                <a href="/Auction/BidInfo.jsp">查看竞拍信息</a>
                            </li>
                            <li>
                                <a href="/Auction/SearchBid.jsp">搜索竞拍信息</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="nav-top-item"><!-- Add the class "current" to current menu item -->
                        	<span class="STYLE1">竞拍结果</span>
                        </a>
                        <ul>
                            <li>
                                <a href="/Auction/BidResult.jsp">查看竞拍结果</a>
                            </li>
                            <li>
                                <a href="/Auction/SearchBidResult.jsp">搜索竞拍结果</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/Auction/Login.html" class="nav-top-item">
                        	<span class="STYLE1">退出</span>
             			</a>
                    </li>
                </ul><!-- End #main-nav -->
            </div>
        </div><!-- End #sidebar -->
        <div id="main-content">
            <!-- Main Content Section with everything -->
            <noscript><!-- Show a notification if the user has disabled javascript --></noscript> <!-- End .shortcut-buttons-set -->
            <div class="clear"></div><!-- End .clear -->
           	<div>
           		<p>当前位置：拍卖管理系统 &gt; 物品信息管理</p>
           	</div>
            <div class="content-box">
                <div style="text-align:center">
                    <!-- Start Content Box -->
                </div>
                <div class="content-box-header">
                    <div align="center"></div>
                    <h3 align="center">物品信息表</h3>
                    <ul class="content-box-tabs">
                        <!-- href must be unique and match the id of target div -->
                    </ul>
                    <div class="clear"></div>
                </div><!-- End .content-box-header -->
                <div class="content-box-content">
                    <div class="tab-content default-tab" id="tab1">
                        <!-- This is the target div. id must match the href of this div's tab -->
                        <table>
                            <thead>
                                <tr>
                                    <th style="padding-left: 30px;width:14%;">物品编号</th>
                                    <th>物品名称</th>
                                    <th>物品描述</th>
                                    <th>起拍日期</th>
                                    <th>结束日期</th>
                                    <th>起拍价</th>
                                    <th style="width: 8%;">操作</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <td colspan="6">
                                        <!-- End .pagination -->
                                        <div class="clear"></div>
                                    </td>
                                </tr>
                            </tfoot>
                            <tbody>
                                <%for(int i=0;i<list.size();i++){%>
								<form action="servlet/DeleteItem" method="get">
                                <tr>
                                    <td style="padding-left: 30px;width:14%;">
                                    	<%=list.get(i).getItemNumber()%>
                                    </td>
                                    <td>
                                        <%=list.get(i).getItemName()%>
                                    </td>
                                    <td>
                                        <%=list.get(i).getItemDescription()%>
                                    </td>
                                    <td>
                                        <%=list.get(i).getStartBidDate()%>
                                    </td>
                                    <td>
                                        <%=list.get(i).getEndBidDate()%>
                                    </td>
                                    <td>
                                        <%=list.get(i).getStartBidPrice()%>
                                    </td>
                                    <td style="width: 8%;">
                                        <a href="/Auction/ItemDetails.jsp?itemNumber=<%=list.get(i).getItemNumber()%>"><input type="button" value="详情"></a>
                                    </td>
                                </tr>
								</form>
								<%} 
									HttpSession details = request.getSession();
                                    details.setAttribute("details", list);%>
                            </tbody>
                        </table>
                    </div><!-- End #tab1 -->
                    <div class="tab-content" id="tab2">
                    	<fieldset><!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
                    	</fieldset><!-- End .clear -->
                    </div><!-- End #tab2 -->
                </div><!-- End .content-box-content -->
            </div><!-- End .content-box -->
            <!-- End .content-box -->
            <!-- End .content-box -->
            <div class="clear"></div><!-- Start Notifications -->
            <!-- End Notifications -->
            <!-- End #footer -->
        </div><!-- End #main-content -->
        <!-- Download From www.exet.tk-->
    </body>
</html>