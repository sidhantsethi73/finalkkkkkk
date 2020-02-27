using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class bill : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
        TextBox10.Text = System.DateTime.Now.ToShortDateString();
        autogen();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into bill values(@bill_no,@consumer_no,@cons_name,@address,@contact_no,@connection,@number,@fixed_monthly_chrges,@usage_charges,@service_tax,@late_fee_chrges,@total_chrges,@bill_date,@due_date)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@bill_no", TextBox1.Text);
        cmd.Parameters.AddWithValue("@consumer_no", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@cons_name", TextBox3.Text);
        cmd.Parameters.AddWithValue("@address", TextBox4.Text);
        cmd.Parameters.AddWithValue("@contact_no", TextBox4.Text);
        cmd.Parameters.AddWithValue("@connection", TextBox13.Text);
        cmd.Parameters.AddWithValue("@number", TextBox16.Text);
        cmd.Parameters.AddWithValue("@fixed_monthly_chrges", TextBox5.Text);
        cmd.Parameters.AddWithValue("@usage_charges", TextBox14.Text);
        cmd.Parameters.AddWithValue("@service_tax", TextBox6.Text);
        cmd.Parameters.AddWithValue("@late_fee_chrges", TextBox7.Text);
        cmd.Parameters.AddWithValue("@total_chrges", TextBox8.Text);
        cmd.Parameters.AddWithValue("@bill_date", TextBox10.Text);
        cmd.Parameters.AddWithValue("@due_date", TextBox9.Text);
        cmd.ExecuteNonQuery();
        autogen();
        TextBox1.Text = " ";
        TextBox3.Text = " ";
        TextBox4.Text = " ";
        TextBox5.Text = " ";
        TextBox9.Text = " ";
        TextBox7.Text = " ";
        TextBox8.Text = " ";
        TextBox10.Text = " ";
        TextBox14.Text = " ";
    }
    public void autogen()
    {

        SqlCommand cmd = new SqlCommand("select max(convert(int,substring(bill_no,2,len(bill_no)-1))) from bill", con);
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
        TextBox1.Text = "B" + i.ToString("00");
        TextBox1.Enabled = true;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        autogen();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "select consumer_name,address,contact_no,plan_name,connection_type,conn_no from adminaddconsumer where consumer_no='" + DropDownList1.SelectedValue + "'";
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            
            TextBox3.Text = dt.Rows[0]["consumer_name"].ToString();
            TextBox4.Text = dt.Rows[0]["address"].ToString();
            TextBox5.Text = dt.Rows[0]["plan_name"].ToString();
            TextBox13.Text = dt.Rows[0]["connection_type"].ToString();
            TextBox11.Text = dt.Rows[0]["contact_no"].ToString();
            TextBox16.Text = dt.Rows[0]["conn_no"].ToString();
        }
        else
        {
            Response.Write("record not found");
        }
    }

    public void billread()
    {
        double prev, pres,un,tn,mn,mm,lc;
        if (TextBox5.Text == " " && TextBox14.Text == " " && TextBox7.Text == " ")
        {
            un = 0;
        }
        else
        {
            prev = Convert.ToInt32(TextBox5.Text);
            pres = Convert.ToInt32(TextBox14.Text);

            un = prev+pres;
            tn = (un*14)/100;
            TextBox6.Text = Convert.ToString(tn);
            mn = pres + prev + tn;
            TextBox8.Text = Convert.ToString(mn);
            lc = Convert.ToInt32(TextBox7.Text);
            mm = mn + lc;
            TextBox15.Text = Convert.ToString(mm);


        }
    }
       
    protected void Button2_Click(object sender, EventArgs e)
    {
        billread();
        
        
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox14_TextChanged(object sender, EventArgs e)
    {

    }
}