using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AllQuestion : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        DataList1.SelectedIndex = e.Item.ItemIndex;
        int qid = Convert.ToInt32(e.CommandArgument);

        if (e.CommandName == "Answer")
        {
            Response.Redirect("Answer.aspx?QId=" + qid);
        }

        if (e.CommandName == "ViewAnswer")
        {
            Response.Redirect("ViewAnswer.aspx?QId=" + qid);
        }

        if (e.CommandName == "UpVote")
        {

            var vote = (from x in db.UpVotes
                        where x.QId.Equals(qid) && x.VId == Convert.ToInt32(Session["VId"])
                        select x);
            if (vote.Count() > 0)
            {
                vote.FirstOrDefault().UpVote1 = 1;

            }
            else
            {
                UpVote up = new UpVote
                {
                    VId = Convert.ToInt32(Session["VId"]),
                    QId = qid,
                    UpVote1 = 1
                };
                db.UpVotes.InsertOnSubmit(up);
            }
            db.SubmitChanges();
            DataList1.DataBind();
        }

        if (e.CommandName == "DownVote")
        {

            var vote = (from x in db.UpVotes
                        where x.QId.Equals(qid) && x.VId == Convert.ToInt32(Session["VId"])
                        select x).FirstOrDefault();
            if (vote.UpVote1 == 1)
            {
                vote.UpVote1 = 0;
            }
            else
            {
                vote.UpVote1 = 0;

            }
            db.SubmitChanges();
            DataList1.DataBind();

        }

    }
}