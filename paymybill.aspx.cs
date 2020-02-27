using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class paymybill : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        string str="select number from bill where number='"+TextBox4.Text+"'";
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["number"] = dt.Rows[0]["number"].ToString();
           Response.Redirect("landlinebill.aspx");
        }
        else
        {
            Response.Write ("Number not found");
           
        }
    }

       
    
    protected void Button6_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        string str = "select number from bill where number='" + TextBox3.Text + "'";
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["number"] = dt.Rows[0]["number"].ToString();
            Response.Redirect("Broadbandbill.aspx");
        }
        else
        {
            Response.Write("Number not found");

        }
        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
         SqlCommand cmd = new SqlCommand();
        string str="select number from bill where number='"+TextBox2.Text+"'";
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["number"] = dt.Rows[0]["number"].ToString();
           Response.Redirect("postpaidbill.aspx");
        }
        else
        {
            Response.Write ("Number not found");
           
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
