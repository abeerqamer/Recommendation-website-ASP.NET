using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signin : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsignin_Click1(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            var signin = (from x in db.Logs
                          where x.Name.Equals(txtname.Text)
                          & x.Password.Equals(txtpwd.Text)
                          select x).FirstOrDefault();

            if (signin != null)
            {
                //Response.Write("<div class='alert-success'>Signed In!</div>");
                lblmsg.Text = "Signed In!";
                Session["UserName"] = txtname.Text;
                Session["LId"] = signin.LID;
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblmsg.Text = "User Not Exists!";
               // Response.Write("<div class='alert-danger'>Error!</div>");
            }
        }
    }
}