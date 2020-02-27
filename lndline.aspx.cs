using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class lndline : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
        TextBox4.Text = System.DateTime.Now.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string str = "insert into landline values(@name,@billing_address,@tariff_plan_opted,@date_of_applying,@status,@pincode,@no_of_connection)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@name", TextBox6.Text);
        cmd.Parameters.AddWithValue("@billing_address", TextBox2.Text);
        cmd.Parameters.AddWithValue("@tariff_plan_opted", ddl.SelectedValue);
        cmd.Parameters.AddWithValue("@date_of_applying", TextBox4.Text);
        if (RadioButton1.Checked == true)
        {
            cmd.Parameters.AddWithValue("@status", RadioButton1.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@status", RadioButton2.Text);
        } 
        cmd.Parameters.AddWithValue("@pincode", TextBox5.Text);
        cmd.Parameters.AddWithValue("no_of_connection", ddl2.SelectedValue);
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "connection created";
        Response.Redirect("welcomeconnection.aspx");
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        ddl.SelectedValue = "";
        ddl2.SelectedValue = "";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
} 