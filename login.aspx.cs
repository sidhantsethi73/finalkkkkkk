using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select fnm,lnm,pwd from register where fnm ='" +TextBox1.Text+"' and pwd = '"+TextBox2.Text+"'";
       SqlDataAdapter adp=new SqlDataAdapter(str,con);
       DataTable dt=new DataTable();
        adp.Fill(dt);
        if(dt.Rows.Count>0)
        {
       Response.Redirect("welcomelogin.aspx");
       Session["fnm"] = TextBox1.Text;
        }
        else
        {
            Response.Write("invalid username or password");
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgotpwd.aspx");

    }
}