using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class landlinebill : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
        Label1.Text = Session["number"].ToString();
        string str = "select * from bill where number='" +Label1.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            TextBox1.Text = dt.Rows[0]["number"].ToString();
            TextBox2.Text = dt.Rows[0]["cons_name"].ToString();
            TextBox3.Text = dt.Rows[0]["address"].ToString();
            TextBox4.Text = dt.Rows[0]["contact_no"].ToString();
            TextBox5.Text = dt.Rows[0]["fixed_monthly_chrges"].ToString();
            TextBox6.Text = dt.Rows[0]["service_tax"].ToString();
           
            TextBox8.Text = dt.Rows[0]["bill_date"].ToString();
            TextBox9.Text = dt.Rows[0]["due_date"].ToString();
            TextBox10.Text = dt.Rows[0]["total_chrges"].ToString();

            
        }
        Session["mode1"] = TextBox1.Text;
        Session["mode2"] = TextBox2.Text;
        Session["mode3"] = TextBox10.Text;
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("payment.aspx");
    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }
}