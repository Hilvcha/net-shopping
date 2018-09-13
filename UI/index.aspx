<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" Title="秋哈首页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <div class="slider">
    <div id="ipresenter">
			<div id="intro" class="step" data-x="0" data-y="0" data-thumbnail="images/thumbnails/1.jpg">
				<img src="images/details.png" />
				<h2>CHECK OUR LATEST FASHION</h2>
			</div>

			<div id="capture" class="step" data-x="1100" data-y="1200" data-scale="1.8" data-rotate="180" data-thumbnail="images/thumbnails/2.jpg">
				<img src="images/details.png" />
				<h2>CHECK OUR LATEST FASHION</h2>
			</div>

			<div id="view" class="step" data-x="-300" data-y="600" data-scale="0.2" data-rotate="270" data-thumbnail="images/thumbnails/3.jpg">
				<img src="images/details.png" />
				<h2>CHECK OUR LATEST FASHION</h2>
			</div>
		</div>
	</div>
    </asp:Content>

<%--商品列表--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content">
		<div class="sales">
			<div class="container">
				<div class="sales-head text-center">
					<h3>CHECK OUT OUR UNIQUE APPROACH TO <span>FASHION</span></h3>
				</div>
				<div class="sales-grids">
					<div class="col-md-4 sales-grid-a">
						<div class="discount">
							<h4>Sale %60</h4>
						</div>
						<div class="s-img">
							<img src="images/s1.png" alt="" />
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-4 sales-grid-b">
						<div class="discount">
							<h4>Free Shipping</h4>
						</div>
						<div class="s-img">
							<img src="images/s2.png" alt="" />
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-4 sales-grid-c">
						<div class="discount">
							<h4>24/7 Support</h4>
						</div>
						<div class="s-img">
							<img src="images/s3.png" alt="" />
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>





		<!-- products-section-starts -->
	  <div class="products-section">
	    <div class="container">
		<div class="product-section-head-text">
		    <h3>FEATURED <span>PRODUCTS</span></h3>
		</div>
		<div class="bottom-grids collections">
				<div class="bottom-grids-left">
					<div class="f-products">
							<!----sreen-gallery-cursual---->
						<div class="sreen-gallery-cursual">
							 <!-- requried-jsfiles-for owl -->
							<link href="css/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
							        <script>
							            $(document).ready(function () {
							                $("#owl-demo").owlCarousel({
							                    items: 3,
							                    lazyLoad: true,
							                    autoPlay: true,
							                    navigation: true,
							                    navigationText: false,
							                    pagination: false,
							                });
							            });
									   </script>
							 <!-- //requried-jsfiles-for owl -->
							 <!-- start content_slider -->


                            <div id="owl-demo" class="owl-carousel text-center">

                            <asp:Repeater ID="Repeater2" runat="server" >
                                <ItemTemplate>
                                    <div class="item">
					                	<div onclick="location.href='ProInfo.aspx?uid=<%#Eval("_id") %>';" class="product-grid">
											<div class="product-pic">
												<img src="<%# bd(Eval("_imageid").ToString())%>" title="<%# Eval("_product_name")%>" />
											</div>
											<div class="product-pic-info">
												<h4><a href='ProInfo.aspx?uid=<%#Eval("_id") %>'<%#Eval("_product_name")%></a></h4>
												<div class="product-pic-info-price-cart">
													<div class="product-pic-info-price">
														<span>RMB <%#Eval("_local_price ","{0:N2}")%></span>
													</div>
													<div class="product-pic-info-cart">
														<a class="p-btn" href='ProInfo.aspx?uid=<%#Eval("_id") %>'>Add to Cart</a>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
					                </div>
                                 </ItemTemplate>
                            </asp:Repeater>
						<!--//sreen-gallery-cursual---->
					</div>
				</div>

				<div class="d-products product-section-head-text">
			     	<h3>RECENT FROM OUR <span> STORE</span></h3>
							<!----sreen-gallery-cursual---->
						<div class="sreen-gallery-cursual">
							 <!-- requried-jsfiles-for owl -->
							<link href="css/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
							        <script>
							            $(document).ready(function () {
							                $("#owl-demo1").owlCarousel({
							                    items: 3,
							                    lazyLoad: true,
							                    autoPlay: true,
							                    navigation: true,
							                    navigationText: false,
							                    pagination: false,
							                });
							            });
									   </script>
							 <!-- //requried-jsfiles-for owl -->
							 <!-- start content_slider -->
						       <div id="owl-demo1" class="owl-carousel text-center">
					               
                             <asp:Repeater ID="Repeater3" runat="server">
                                <ItemTemplate>
                                    <div class="item">
					                	<div onclick="location.href='ProInfo.aspx?uid=<%#Eval("_id") %>';" class="product-grid">
											<div class="product-pic">
												<img src="<%# bd(Eval("_imageid").ToString())%>" title="<%# Eval("_product_name")%>" />
											</div>
											<div class="product-pic-info">
												<h4><a href='ProInfo.aspx?uid=<%#Eval("_id") %>'<%#Eval("_product_name")%></a></h4>
												<div class="product-pic-info-price-cart">
													<div class="product-pic-info-price">
														<span>RMB <%#Eval("_local_price ","{0:N2}")%></span>
													</div>
													<div class="product-pic-info-cart">
														<a class="p-btn" href='ProInfo.aspx?uid=<%#Eval("_id") %>'>Add to Cart</a>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
					                </div>
                                 </ItemTemplate>
                            </asp:Repeater>
				              </div>
						<!--//sreen-gallery-cursual---->
							
					</div>
				</div>
				<div class="product-section-head-text">
                    	<div class="product-section-head-text">
		    <h3>HOT <span>PRODUCTS</span></h3>
		</div>
							<!----sreen-gallery-cursual---->
						<div class="sreen-gallery-cursual">
							 <!-- requried-jsfiles-for owl -->
							<link href="css/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
							        <script>
							            $(document).ready(function () {
							                $("#owl-demo2").owlCarousel({
							                    items: 3,
							                    lazyLoad: true,
							                    autoPlay: true,
							                    navigation: true,
							                    navigationText: false,
							                    pagination: false,
							                });
							            });
									   </script>
							 <!-- //requried-jsfiles-for owl -->
							 <!-- start content_slider -->
                            <asp:Repeater ID="Repeater4" runat="server">   
                                <ItemTemplate>
                                     <div id="owl-demo2" class="owl-carousel text-center">
					                <div class="item">
					                	<div onclick="location.href='ProInfo.aspx?uid=<%#Eval("_id") %>';" class="product-grid">
											<div class="product-pic">
												<img src="<%# bd(Eval("_imageid").ToString())%>" title="<%# Eval("_product_name")%>" />
											</div>
											<div class="product-pic-info">
												<h4><a href='ProInfo.aspx?uid=<%#Eval("_id") %>'<%#Eval("_product_name")%></a></h4>
												<div class="product-pic-info-price-cart">
													<div class="product-pic-info-price">
														<span>RMB <%#Eval("_local_price ","{0:N2}")%></span>
													</div>
													<div class="product-pic-info-cart">
														<a class="p-btn" href='ProInfo.aspx?uid=<%#Eval("_id") %>'>Add to Cart</a>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
					                </div>
				              </div>
                                    </ItemTemplate>       
                            </asp:Repeater>
						<!--//sreen-gallery-cursual---->
							
					</div>
				</div>
				</div>
	</div>
	</div>
	</div>
	</div>
	<!-- products-section-ends -->
	<!-- brands-section-starts -->
	<div class="brands-section">
		<div class="container">
			<div class="brands-section-head">
				<h3>OUR MAJOR <span>BRANDS</span></h3>
			</div>
			<ul class="sponsors">
				<li><img src="images/b1.png" alt="" /></li>
				<li><img src="images/b2.png" alt="" /></li>
				<li><img src="images/b3.png" alt="" /></li>
				<li><img src="images/b4.png" alt="" /></li>
				<li><img src="images/b5.png" alt="" /></li>
				<li><img src="images/b6.png" alt="" /></li>
			</ul>
		</div>
	</div>
	<!-- brands-section-ends -->
  </div>
   <!-- content-section-ends -->	





    <div class="in_t_l" >
              <div class="in_t_l_s">
                <asp:TextBox ID="search" runat="server" CssClass="in_t_l_sa" Height="16px" 
                    Width="40px"></asp:TextBox>

         </div>
                <div  style="visibility:hidden;"> 
        
  
        <asp:Repeater ID="Repeater1" runat="server">
            
            <ItemTemplate>
   <div onmouseout="expand1(<%#Eval("_top_layer_id") %>)"  onmouseover="expand(<%#Eval("_top_layer_id")%>)"  >

        <div style="width:90px" class="cctelist"  >
        <a  href="#"> <%#Eval("_top_layer_name") %></a></div>
 
      <div id="<%#Eval("_top_layer_id")%>"  style="margin:0  0 0 10px;  width:85px;  display:none;  " >
      <ul class="cc">
      <%# datas(Eval("_top_layer_id").ToString()) %>
      </ul>
         </div>  
      </div> 
           </ItemTemplate>
           </asp:Repeater>
           
           
            </div> 
          
            
            </div> 
    
   
</asp:Content>

