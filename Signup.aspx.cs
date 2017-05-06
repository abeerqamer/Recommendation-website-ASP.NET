using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signup : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

protected void btnsignup_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            var signUp = (from x in db.Logs
                          where x.Name.Equals(txtname.Text)
                          & x.Password.Equals(txtpwd.Text)
                          select x).FirstOrDefault();
            if (signUp == null)
            {
                Log signup = new Log
                {
                    Name = txtname.Text,
                    Email = txtemail.Text,
                    Password = txtpwd.Text
                };

                db.Logs.InsertOnSubmit(signup);
                db.SubmitChanges();

                txtname.Text = txtemail.Text = txtpwd.Text = "";
                lblmsg.Text = "SignedUp sucessfully!";
                //Response.Write("<div class='alert-success'>SignedUp sucessfully!</div>");
            }
            else
            {
                txtname.Text = txtemail.Text = txtpwd.Text = "";
                lblmsg.Text = "User Already exist!";
                // Response.Write("<div class='alert-success'>User Already exist!</div>");
            }
        }
    }


}


