using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class chngepwd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
        TextBox3.Text = Session["email"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "update register set pwd=@pwd,cpwd=@cpwd where email='"+ TextBox3.Text +"'";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@pwd",TextBox1.Text);
        cmd.Parameters.AddWithValue("@cpwd", TextBox2.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("data updated");
    }
}