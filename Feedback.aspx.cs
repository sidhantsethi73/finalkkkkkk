using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into feedback values(@name,@address,@e_mail,@contact_no,@feedback)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@address", TextBox3.Text);
        cmd.Parameters.AddWithValue("@e_mail", TextBox4.Text);
        cmd.Parameters.AddWithValue("@contact_no", TextBox5.Text);
        cmd.Parameters.AddWithValue("@feedback", TextBox6.Text);
        Label1.Visible = true;
        Label1.Text = "Your FEEDBACK is successfully submitted";
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox2.Text = " ";
        TextBox3.Text = " ";
        TextBox4.Text = " ";
        TextBox5.Text = " ";
        TextBox6.Text = " ";
        
    }

}