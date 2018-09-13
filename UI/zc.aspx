<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="zc.aspx.cs"
    Inherits="zc" Title="无标题页" %>

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
        <div class="x_right">
            <div class="x_left_t">
                <img src="images/22_03.jpg" alt="" />
                <p>
                    1．输入Email作为帐号——输入密码——昵称——手机等联系方式后，就可以完成注册了。</p>
                <p>
                    2．如果在注册时候忘记填写，也可以在用户信息管理完善自己的个人资料，为了您购物的方便，请尽量填写完 整的注册信息。</p>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/22_07.jpg" 
                    onclick="ImageButton1_Click" />
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
</asp:Content>
