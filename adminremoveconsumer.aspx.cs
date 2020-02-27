using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class adminremoveconsumer : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "delete * from adminaddconsumer where consumer_no=@consumer_no";
        SqlCommand cmd = new SqlCommand(str, con);
        
    }
}