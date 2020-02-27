using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class forgotpwd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "select fnm,email from register where fnm ='" + TextBox1.Text + "' and email = '" + TextBox2.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["email"] = TextBox2.Text;
            Response.Redirect("chngepwd.aspx");
        }
        else
        {
            Response.Write("invalid email or username");
        }
        con.Close();

    }
}