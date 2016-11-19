using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DropDownList1.Items.= "Test1";

        if (!IsPostBack)
        {
            DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
            //DataList1.Visible = false;
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        // DataList1.Visible = true;
        DataList1.Visible = true;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
       // DataList1.Visible = true;
    }
}