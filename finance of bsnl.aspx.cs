﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class finance_of_bsnl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("hrd.ASPX");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("gallery.aspx");
    }
}