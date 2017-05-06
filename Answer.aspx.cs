using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Answer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["RefUrl"] = Request.UrlReferrer.ToString();
        }
    }

    protected void btnpostans_Click(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        Answer123 ans = new Answer123
        {
            Answer = txtans.Text,
            QId = Convert.ToInt32(Request.QueryString["QId"]),
            LId = Convert.ToInt32(Session["LId"]),
            ATime = DateTime.Now
        };

        db.Answer123s.InsertOnSubmit(ans);
        db.SubmitChanges();

        object refUrl = ViewState["RefUrl"];
        if (refUrl != null)
            Response.Redirect((string)refUrl);

    }
}