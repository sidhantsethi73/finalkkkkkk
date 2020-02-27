using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd;
    SqlDataReader rdr;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
            con.Open();
        if (!Page.IsPostBack)
        {
            gridata();
        }
        Session["mode5"] = Label23.Text;
        Session["mode6"] = Label24.Text;
        Session["mode7"] = Label25.Text;

    }
    void gridata()
    {
        Label22.Text = Convert.ToString(Session["tam"]);
        Label23.Text = Convert.ToString(Session["mode3"]);
        Label24.Text = Convert.ToString(Session["mode4"]);
     

    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.SelectedValue == "Net Banking")
        {
            MultiView1.ActiveViewIndex = 0;
        }
        else if (Menu1.SelectedValue == "Credit Card")
        {
            MultiView1.ActiveViewIndex = 1;
        }

        else if (Menu1.SelectedValue == "Debit Card")
        {
            MultiView1.ActiveViewIndex = 2;
        }
    }

    protected void  Button1_Click(object sender, EventArgs e)
{
         Session["mode"] = "Net Banking";
        if (DropDownList1.SelectedValue == "HDFC Bank")
            Response.Redirect("https://netbanking.hdfcbank.com/netbanking/");

        else if (DropDownList1.SelectedValue == "Oriental Bank Of Commerce")
            Response.Redirect("https://www.obconline.co.in/BankAwayRetail/(S(fc5gpwfitnoto055coikwiq0))/web/L001/retail/jsp/ebpp/RetShoppingMallSignOn.aspx?RequestId=53663719");

        else if (DropDownList1.SelectedValue == "ICICI Bank")
            Response.Redirect("-https://infinity.icicibank.co.in/BANKAWAY");

        else if (DropDownList1.SelectedValue == "AXIS Bank")
            Response.Redirect("https://www.axisbank.co.in/BankAway/(S(cfmsc12xqctw04vyrfo5v5m0))/web/L001/retail/jsp/user/RetailSignOn.aspx?RequestId=54070734");

        else if (DropDownList1.SelectedValue == "YES Bank")
            Response.Redirect("https://netbanking.yesbank.co.in/netbanking/merchant");

        else if (DropDownList1.SelectedValue == "State Bank Of India")
            Response.Redirect("https://www.onlinesbi.com/merchant/merchantprelogin.htm");

        else if (DropDownList1.SelectedValue == "Punjab National Bank Corp Accnt")
            Response.Redirect("https://internetbanking.netpnb.com/BANKAWAY?Action.ShoppingMall.Login.Init=Y&BankId=024&UserType=02&USER_LANG_ID=001&AppType=corporate");

        else if (DropDownList1.SelectedValue == "Punjab National Bank Retail Accnt")
            Response.Redirect("https://netbanking.netpnb.com/BANKAWAY?Action.ShoppingMall.Login.Init=Y&BankId=024&UserType=01&USER_LANG_ID=001&AppType=corporate");
}
protected void  Button2_Click(object sender, EventArgs e)
{
    Session["mode"] = "Credit Card";
    cmd = new SqlCommand("insert into credit(cno,cname,card_no,exp_date,cvv,name_on_card)values(@cno,@cname,@card_no,@exp_date,@cvv,@name_on_card)", con);
    cmd.Parameters.AddWithValue("@cno", Convert.ToString(Session["mode1"]));
    cmd.Parameters.AddWithValue("@cname", Convert.ToString(Session["mode2"]));
    cmd.Parameters.AddWithValue("@card_no", TextBox1.Text);
    cmd.Parameters.AddWithValue("@exp_date", TextBox2.Text);
    cmd.Parameters.AddWithValue("@cvv", TextBox3.Text);
    cmd.Parameters.AddWithValue("@name_on_card", TextBox4.Text);
    cmd.ExecuteNonQuery();
    Response.Redirect("receipt.aspx");
}
protected void  Button3_Click(object sender, EventArgs e)
{
    Session["mode"] = "Debit Card";
    cmd = new SqlCommand("insert into debit(cno,cname,card_no,exp_date,cvv,name_on_card)values(@cno,@cname,@card_no,@exp_date,@cvv,@name_on_card)", con);
    cmd.Parameters.AddWithValue("@cno", Convert.ToString(Session["mode1"]));
    cmd.Parameters.AddWithValue("@cname", Convert.ToString(Session["mode2"]));

    cmd.Parameters.AddWithValue("@card_no", TextBox5.Text);
    cmd.Parameters.AddWithValue("@exp_date", TextBox6.Text);
    cmd.Parameters.AddWithValue("@cvv", TextBox7.Text);
    cmd.Parameters.AddWithValue("@name_on_card", TextBox8.Text);
    cmd.ExecuteNonQuery();
    Response.Redirect("receipt.aspx");
    
}



  
}