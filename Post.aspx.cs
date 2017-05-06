using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Post : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnpost_Click(String txtcategory)
    {
        if (Page.IsValid)
        {

            Question ques = new Question
            {
                Questions = txtpost.Text,
                Category = txtcategory,
                LId = Convert.ToInt32(Session["LId"])

            };


            db.Questions.InsertOnSubmit(ques);
            db.SubmitChanges();

            txtpost.Text = "";

            Response.Redirect("Posted.aspx");
        }
    }

    protected void btnfood_Click(object sender, EventArgs e)
    {
        btnpost_Click("food");
    }

    protected void btncloths_Click(object sender, EventArgs e)
    {
        btnpost_Click("cloths");
    }

    protected void btntvseries_Click(object sender, EventArgs e)
    {
        btnpost_Click("tvseries");
    }

    protected void btnmovies_Click(object sender, EventArgs e)
    {
        btnpost_Click("movies");
    }

    protected void btnbooks_Click(object sender, EventArgs e)
    {
        btnpost_Click("books");
    }

    protected void btnreligion_Click(object sender, EventArgs e)
    {
        btnpost_Click("religion");
    }

    protected void btnmusic_Click(object sender, EventArgs e)
    {
        btnpost_Click("music");
    }

    protected void btnsports_Click(object sender, EventArgs e)
    {
        btnpost_Click("sports");
    }
}