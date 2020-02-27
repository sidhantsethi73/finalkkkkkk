using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admimlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select name,password from admin where name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("Welcomeadmin.aspx");
        }
        else
        {
            Label1.Text = "Invalid UserName and Password";
            Label1.Visible = true;
        }
        con.Close();
    }
}