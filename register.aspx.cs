using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
   SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         string str = "insert into register values(@fnm,@lnm,@address,@contact,@city,@pin,@email,@pwd,@cpwd,@img)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@fnm", fnm.Text);
        cmd.Parameters.AddWithValue("@lnm", lstname.Text);
        cmd.Parameters.AddWithValue("@address", address.Text);
        cmd.Parameters.AddWithValue("@contact", contact.Text);
        cmd.Parameters.AddWithValue("@city", city.Text);
        cmd.Parameters.AddWithValue("@pin", pin.Text);
        cmd.Parameters.AddWithValue("@email", mail.Text);
        cmd.Parameters.AddWithValue("@pwd", TextBox1.Text);
        cmd.Parameters.AddWithValue("@cpwd", TextBox2.Text);
      //  string fname;
        FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.FileName); 
        Image1.ImageUrl  = ("~/images/") + FileUpload1.FileName;
        if (FileUpload1.HasFile)
        {
            cmd.Parameters.AddWithValue("@img", Image1.ImageUrl);
        }
        else
        {
            Response.Write("file not found");
        }
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Data Saved");
        fnm.Text = " ";
        lstname.Text = " ";
        address.Text = " ";
        contact.Text = " ";
        city.Text = " ";
        pin.Text = " ";
        mail.Text = " ";
        TextBox1.Text = " ";
        TextBox2.Text = " ";
      
        }

   }