using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Posted : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void answer_more_Click(object sender, EventArgs e)
    {
        Response.Redirect("Post.aspx");
    }

    protected void change_cateogry_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}