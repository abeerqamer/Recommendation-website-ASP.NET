using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyPost : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        DetailsView1.PageIndex = GridView1.SelectedIndex;

        // DetailsView1.DataBind();
    }

    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
    }

    protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        GridView1.DataBind();
    }

    protected void GridView1_Sorted(object sender, EventArgs e)
    {

        DetailsView1.PageIndex = GridView1.SelectedIndex;
        //DetailsView1.DataBind();
        GridView1.DataBind();
    }

}