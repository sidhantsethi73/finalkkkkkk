using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class adminaddconsumer : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
        autogen();
        TextBox9.Text = System.DateTime.Now.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into adminaddconsumer values(@consumer_no,@consumer_name,@address,@contact_no,@e_mail,@connection_type,@plan_name,@conn_no,@no_of_connection,@date_of_applying)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@consumer_no", TextBox10.Text);
        cmd.Parameters.AddWithValue("@consumer_name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@address", TextBox3.Text);
        cmd.Parameters.AddWithValue("@contact_no", TextBox4.Text);
        cmd.Parameters.AddWithValue("@e_mail", TextBox5.Text);
        cmd.Parameters.AddWithValue("@connection_type", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@plan_name", TextBox7.Text);
        cmd.Parameters.AddWithValue("@conn_no", TextBox11.Text);
        cmd.Parameters.AddWithValue("@no_of_connection", TextBox8.Text);
        cmd.Parameters.AddWithValue("@date_of_applying", TextBox9.Text);
        cmd.ExecuteNonQuery();
        autogen();
        TextBox10.Text = " ";

        TextBox3.Text = " ";
        TextBox4.Text = " ";
        TextBox5.Text = " ";
        TextBox9.Text = " ";
        TextBox7.Text = " ";
        TextBox8.Text = " ";
        con.Close();
    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }
    public void autogen()
    {

        SqlCommand cmd = new SqlCommand("select max(convert(int,substring(consumer_no,2,len(consumer_no)-1))) from adminaddconsumer", con);

        
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
        TextBox10.Text = "C" + i.ToString("00");
        TextBox10.Enabled = true;
    }
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {
        autogen();
    }
}