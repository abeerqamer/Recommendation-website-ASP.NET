using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    //DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    //protected void btnsearch_Click(object sender, EventArgs e)
    //{
    //    string s = txtsearch.Text;
    //    // string[] sarr;
    //    // sarr = s.Split(' ');
    //    s = s.Replace(" ", "&");
    //    Response.Redirect("Search.aspx?search=" + s);
    //}

    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {
        string s = txtsearch.Text;
        txtsearch.Text = "";
        s = s.Replace(" ", "&");
        Response.Redirect("Search.aspx?search=" + s);
    }


    protected void btnfood_Click1(object sender, EventArgs e)
    {
        Response.Redirect("CategoryQuestion.aspx?Category=food");
    }

    protected void btncloths_Click(object sender, EventArgs e)
    {
        Response.Redirect("CategoryQuestion.aspx?Category=cloths");
    }

    protected void btntvseries_Click(object sender, EventArgs e)
    {
        Response.Redirect("CategoryQuestion.aspx?Category=tvseries");
    }

    protected void btnmovies_Click(object sender, EventArgs e)
    {
        Response.Redirect("CategoryQuestion.aspx?Category=movies");
    }

    protected void btnbooks_Click(object sender, EventArgs e)
    {
        Response.Redirect("CategoryQuestion.aspx?Category=books");
    }

    protected void btnreligion_Click(object sender, EventArgs e)
    {
        Response.Redirect("CategoryQuestion.aspx?Category=religion");
    }

    protected void btnmusic_Click(object sender, EventArgs e)
    {
        Response.Redirect("CategoryQuestion.aspx?Category=music");
    }

    protected void btnsports_Click(object sender, EventArgs e)
    {
        Response.Redirect("CategoryQuestion.aspx?Category=sports");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyPost.aspx");
    }

    protected void btnmyanswer_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyAnswer.aspx");
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }


}