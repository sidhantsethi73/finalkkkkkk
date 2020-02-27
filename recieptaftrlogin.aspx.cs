using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class recieptaftrlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();  
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
        autogen();
        Label49.Text = System.DateTime.Now.ToShortDateString();
        
        Label46.Text = Convert.ToString(Session["mode1"]);
        Label47.Text = Convert.ToString(Session["mode2"]);
        Label48.Text = Convert.ToString(Session["mode5"]);
        Label51.Text = Session["mode"].ToString();
    }
    public void autogen()
    {

        SqlCommand cmd = new SqlCommand("select max( convert(int,substring(rno,2,len(rno)-1))) from receipt", con);
        int i = 0;
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        if (dr.Read() == true)
        {
            if (dr[0].Equals(DBNull.Value) == true)
            {
                i = 1;
            }
            else
            {
                i = Convert.ToInt32(dr[0]) + 1;
            }
        }
        dr.Close();
        TextBox1.Text = "R" + i.ToString("00");
        TextBox1.Enabled = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into receipt values(@rno,@cno,@cname,@t_amount,@date,@pay_mode)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@rno", TextBox1.Text);
        cmd.Parameters.AddWithValue("@cno", Label46.Text);
        cmd.Parameters.AddWithValue("@cname", Label47.Text);
        cmd.Parameters.AddWithValue("@t_amount", Label48.Text);
        cmd.Parameters.AddWithValue("@date", Label49.Text);
        cmd.Parameters.AddWithValue("@pay_mode", Label51.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("home.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        autogen();
    }
}