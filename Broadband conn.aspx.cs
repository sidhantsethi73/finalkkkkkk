using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Broadband : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("planname.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string str = "insert into broadbandplan values(@connection_address,@connection_pincode,@billing_address,@billing_pincode,@contact_nmber,@select_plan)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@connection_address", TextBox10.Text);
        cmd.Parameters.AddWithValue("@connection_pincode", TextBox11.Text);
        cmd.Parameters.AddWithValue("@billing_address", TextBox12.Text);
        cmd.Parameters.AddWithValue("@billing_pincode", TextBox13.Text);
        cmd.Parameters.AddWithValue("@contact_nmber", TextBox14.Text);
        cmd.Parameters.AddWithValue("@select_plan", DropDownList1.SelectedValue);
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}