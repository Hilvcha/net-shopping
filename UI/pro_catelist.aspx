﻿<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="pro_catelist.aspx.cs" Inherits="pro_catelist" Title="无标题页" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" language="javascript">
	function expand(el)
	{
		childObj = document.getElementById( el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			
		}
		return;
	}
		function expand1(el)
	{
		childObj = document.getElementById( el);

		if (childObj.style.display == 'block')
		{
			childObj.style.display = 'none';
		}
		else
		{
			
		}
		return;
	}
</script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 150px;
            vertical-align:top;
        }
           .cctelist
     {
      text-align:center;
      line-height:25px;
      background-color:#eee;
         margin:3px 0 0 0;
    
     	}
     .cctelist a
     {
     	text-decoration:none;
     	color:#333333;
     	display:block;
     	}	
     .cctelist a:hover
     {
     	padding-left:10px;
     	background-color:#bbbcc8;
     	}	
      .select
    {
      margin-left:20px;
      width:225px;
      	
    	}
    .select a:hover
    {
    	 color:#FF3300; 
    	 
    	} 
         .cc
     {}	
      .cc li
     {
     	height:25px;
      text-align:center;
      line-height:25px;
      background-color:#eee;
      margin:3px 0;
     	}
     .cc li a
     {
     	text-decoration:none;
     	color:#333333;
     	display:block;
     	   line-height:25px;
     	}	
     .cc li a:hover
     {
     	padding-left:10px;
     	background-color:#bbbcc8;
     	}			
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style2">
        

                <div  class="x_left" style="float:left">
        	<div class="product">
				<div class="product-listy">
					<h3>our Products</h3>
					<ul class="product-list">
                       
         <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
       <div onmouseout="expand1(<%#Eval("_top_layer_id") %>)"  onmouseover="expand(<%#Eval("_top_layer_id")%>)"  >

        
        <li><a href='newscate.aspx?uid=<%#Eval("_top_layer_id")%>'><%#Eval("_top_layer_name")%></a></li>
      
 
      <div id="<%#Eval("_top_layer_id")%>"  style="margin:0  0 0 10px;  width:85px;  display:none;  "  >

      <ul class="product-list">
      <%# datas(Eval("_top_layer_id").ToString()) %>
      </ul>
      </div>  
     </div>
           </ItemTemplate>
           </asp:Repeater>
                        
					 </ul>
				</div>
</div>

</div> 
          
            
              
            </td>
            <td>
            <div>
            
            <div>
            
                
                <asp:Label ID="l_cateid" runat="server" Visible="False"></asp:Label></div>
            <div>
           
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
                RepeatDirection="Horizontal">
                  <ItemTemplate>
			      <div class="select">
                    <div class="pic"><a href='ProInfo.aspx?uid=<%#Eval("_id")%>' target="_blank"><asp:Image ID="Image3" runat="server" ImageUrl='<%# s_image( Eval("_imageid").ToString() )%>' Height="300px" Width="225px" /></a></div>
                    <div style="text-align:center;" ><asp:Image ID="Image1" runat="server" 
                            ImageUrl="images/1263193208171080439.gif" Visible="False"  /></div>                  
  	                <div style="text-align:center;" > <%#Eval("_catename")%> </div>
                    <div style="text-align:center;" ><a href="#" target="_blank">㊣<%#Eval("_product_name") %></a></div>
                    <div style="text-align:center;" >￥<%#Eval("_local_price","{0:N2}")%>元</div>
                 </div>
                 
                  </ItemTemplate>           
				</asp:DataList>	  
            
            
            </div>
            <div>
                
                </div>
            </div>
               </td>
        </tr>
    </table>
    <div>
        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" 
            FirstPageText="首页" HorizontalAlign="Center" LastPageText="尾页" 
            NextPageText="下一页" onpagechanging="AspNetPager1_PageChanging1" 
            PrevPageText="上一页">
        </webdiyer:AspNetPager>
    </div>
</asp:Content>

