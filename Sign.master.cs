using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sign : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int visit = Convert.ToInt32(Application["Visit"]);
        visit += 1;
        Application["Visit"] = visit;
        labelvisit.Text = visit.ToString();
        if (Session["UserName"] != null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            
        }
        
       
    }

    protected void post_question_Click(object sender, EventArgs e)
    {
        Response.Redirect("Post.aspx");
    }

    protected void signin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signin.aspx");
    }

    protected void signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }

   }
