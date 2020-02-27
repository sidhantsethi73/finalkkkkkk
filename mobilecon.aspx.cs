using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class mobilecon : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into mobile values(@c_name,@conn_type,@address,@id_proof,@email)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@c_name", TextBox1.Text);
        if (RadioButton1.Checked == true)
        {
            cmd.Parameters.AddWithValue("@conn_type", RadioButton1.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@conn_type", RadioButton2.Text);
        }
        cmd.Parameters.AddWithValue("@address", TextBox4.Text);

        string fnm;
        FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.FileName);
        fnm = ("/~images/") + FileUpload1.FileName;
        if (FileUpload1.HasFile)
        {
            cmd.Parameters.AddWithValue("@id_proof",fnm);
        }
        else
        {
            Response.Write("file not found");
        }
        cmd.Parameters.AddWithValue("@email", TextBox3.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = " ";
        TextBox4.Text = " ";
        TextBox3.Text = " ";
        Response.Redirect("welcomeconnection.aspx");
        
}
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("prepaid.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("postpaid.aspx");
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}