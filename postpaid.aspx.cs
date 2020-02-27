using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class postpaid : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("mobilecon.aspx");
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "select activation_chrges,security_deposit,fixed_mnthly_chrges,free_local_calls,free_std_calls,local_call_chrges,national_call_chrges,international_call_chrges,total from Postpaid where plan_name='" + DropDownList1.SelectedValue + "'";
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
          
            TextBox3.Text = dt.Rows[0]["activation_chrges"].ToString();
            TextBox4.Text = dt.Rows[0]["security_deposit"].ToString();
            TextBox5.Text = dt.Rows[0]["fixed_mnthly_chrges"].ToString();
            TextBox6.Text = dt.Rows[0]["free_local_calls"].ToString();
            TextBox7.Text = dt.Rows[0]["free_std_calls"].ToString();
            TextBox11.Text = dt.Rows[0]["local_call_chrges"].ToString();
            TextBox12.Text = dt.Rows[0]["national_call_chrges"].ToString();
            TextBox13.Text = dt.Rows[0]["international_call_chrges"].ToString();
            TextBox14.Text = dt.Rows[0]["total"].ToString();
        }
        else
        {
            Response.Write("record not found");
        }
      
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}