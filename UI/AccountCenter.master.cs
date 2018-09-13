using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class AccountCenter : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["_user_id"] == null || Session["_user_id"] == "" || Session["_user_id"].ToString().Trim()=="")
        {
            Common.MessageAlert.AlertLocation(Page, "alert('对不起，您没有登陆！');location.href='Login.aspx'");
            return;
        }

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Session["_user_id"] = null;
        Session.Remove("_user_id");
        Session["_user_name"] = null;
        Session.Remove("_user_name");
        Response.Redirect("index.aspx");
    }
}
