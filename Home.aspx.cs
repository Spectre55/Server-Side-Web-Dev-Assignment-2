using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DropDownList2.Enabled = false;
       //DataList1.Visible = false;
        //hey.Visible = false;

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Enabled = true;

    }


    /*protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        DropDownList2.Enabled = true;
    }*/

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //DataList1.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataList1.Visible = true;
    }


}