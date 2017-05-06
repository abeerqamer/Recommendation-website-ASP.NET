using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int visit = Convert.ToInt32(Application["Visit"]);
        visit += 1;
        Application["Visit"] = visit;
        labelvisit.Text = visit.ToString();
        if (Session["UserName"] != null)
        {
            // string name = Request.QueryString["Name"].ToString();
            user.Text = Session["UserName"].ToString();
        }
        else
        {
            Response.Redirect("Signin.aspx");
        }

        if (!IsPostBack)
        {
            if (Session["Theme"] != null)
                lnkStyleSheet.Href = Session["Theme"].ToString().Trim();
            else
                lnkStyleSheet.Href = ddlStyles.SelectedValue.Trim();
            if (Session["SelectedIndex"] != null)
            {
                ddlStyles.SelectedIndex = Convert.ToInt32(Session["SelectedIndex"].ToString());
            }

        }


    }

    protected void post_question_Click(object sender, EventArgs e)
    {
        Response.Redirect("Post.aspx");
    }



    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Signin.aspx");
    }

    protected void ddlStyles_SelectedIndexChanged(object sender, EventArgs e)
    {
        lnkStyleSheet.Href = ddlStyles.SelectedValue.Trim(); // assigning style to link href in aspx page
        Session["Theme"] = ddlStyles.SelectedValue.Trim(); // storing selected value in session to maintain across the tabs
        Session["SelectedIndex"] = ddlStyles.SelectedIndex; // storing dropdown selected value in session  to maintain across the tabs
    }
}
