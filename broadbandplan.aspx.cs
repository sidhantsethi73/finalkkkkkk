using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class planname : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Broadband plan.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        string str = "select monthly_charges,download_upload_speed,security_deposit,tele_fix_mnthly_chrges,free_calls,total from plansofbroadband where plan_name='" + DropDownList1.SelectedValue + "'";
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            TextBox2.Text = dt.Rows[0]["monthly_charges"].ToString();
            TextBox4.Text = dt.Rows[0]["download_upload_speed"].ToString();
            TextBox6.Text = dt.Rows[0]["security_deposit"].ToString();
            TextBox7.Text = dt.Rows[0]["tele_fix_mnthly_chrges"].ToString();
            TextBox8.Text = dt.Rows[0]["free_calls"].ToString();
            TextBox9.Text = dt.Rows[0]["total"].ToString();
        }
        else
        {
            Response.Write("record not found");
        }
    }
}