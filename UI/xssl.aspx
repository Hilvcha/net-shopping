<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="xssl.aspx.cs" Inherits="xssl" Title="新手上路" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/xstlye.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="x_all">
        <div class="x_left">
            <div class="x_left_t2">
                <div class="product">
				<div class="product-listy">
					<h3>our News</h3>
					<ul class="product-list">
                        <li><a href="xssl.aspx">新手上路 </a> </li>
              <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <ul>
                            <li><a href='show.aspx?id=<%#Eval("_cateid")%>'>
                                <%#Eval("_catename")%></a> </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
                        <li><a href="newlist.aspx">友情链接 </a> </li>
                        <li><a href="zc.aspx">个人注册及信息管理</a></li>
					 </ul>
				</div>
</div>
            </div>
        </div>
      
            <img src="images/123.jpg" alt="" />
       
        <div class="clear">
        </div>
    </div>
</asp:Content>
