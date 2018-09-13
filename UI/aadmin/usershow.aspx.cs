using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class usershow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pp();
    }
    public void pp()
    {
        int i=Convert.ToInt32(Request.QueryString["id"]);
        Model.user mo = new Model.user();
        mo.userid = i;
        BLL.adminuser bll = new BLL.adminuser();
        SqlDataReader dr = bll.drus(mo);
        if (dr.Read())
        {
            TextBox1.Text = dr["_user_id"].ToString();
            TextBox2.Text = dr["_user_name"].ToString();
            TextBox3.Text = dr["_pwd"].ToString();
            TextBox4.Text = dr["_email"].ToString();
            TextBox5.Text = dr["_qq"].ToString();
            TextBox6.Text = dr["_msn"].ToString();
            TextBox7.Text = dr["_regist_time"].ToString(); 
            TextBox8.Text = dr["_safe_question"].ToString();
            TextBox9.Text = dr["_safe_pwd"].ToString();
            dr.Close();
        }
    }
}
