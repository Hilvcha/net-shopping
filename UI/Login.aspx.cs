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

public partial class Login_aa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
            
        //}

        //下载于www.51aspx.com
        
    }
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        string email = Server.HtmlEncode(Request["logname"]);
        string pwd = Server.HtmlEncode(Request["logpass"]);
        Model.user mod = new Model.user();
        mod.email = email;
        mod.pwd = pwd;

        BLL.user bll = new BLL.user();
        SqlDataReader  dr = bll.login(mod);
        //ds.Tables[0].Rows[0]["_user_id"];
        if (true)
        {
            SqlDataReader dr1 = bll.lo(mod);
            if (dr1.Read())
            {
                Session["_user_name"] = dr1["_user_name"].ToString();
                Session["_user_id"]=dr1["_user_id"].ToString();
               
                dr1.Close();
            }
            dr1.Close();
        }
        else
        {
            Session["_user_name"] = "";
        }

        if (true)
        {
            
            if (true)
            {
                
                if (dr.Read())
                {
                    Response.Redirect("index.aspx");


                    
                    Model.user mol = new Model.user();
                    mol.userid = Convert.ToInt32(Session["_user_id"]);
                   
                    BLL.user bllu = new BLL.user();
                    int r = bllu.update(mol);
                    SqlDataReader dr2 = bll.lo(mod);
                    if (dr2.Read())
                    {
                        Session["_user_name"] = dr2["_user_name"].ToString();
                        Session["_user_id"] = dr2["_user_id"].ToString();
                        dr2.Close();
                    }
                    dr2.Close();
                }
                    
                else
                {
                    Common.MessageAlert.Alert(Page, "登入失败！");
                }

            }

        }
    }
    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
}
