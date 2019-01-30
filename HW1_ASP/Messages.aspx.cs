using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace HW1_ASP
{
    public partial class Messages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Login"] != null)
            {
                name_usr.InnerText = Session["Login"].ToString();
            }

            LoadMessages();

        }

        protected void exit_user_OnClick(object sender, EventArgs e)
        {
           Session.Abandon();
        }

        protected void Timer1_OnTick(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void LoadMessages()
        {
            using (var db = new Guest())
            {
                var allMessages = db.Messages.ToList();
                foreach (var i in allMessages)
                {
                    TableRow tmpRow = new TableRow();

                    HtmlGenericControl myP = new HtmlGenericControl("p");
                    myP.InnerText = i.User.Name;
                    TableCell tmpCell = new TableCell();
                    tmpCell.Controls.Add(myP);
                    tmpRow.Controls.Add(tmpCell);

                    myP = new HtmlGenericControl("p");
                    myP.InnerText = i.Message1;
                    tmpCell = new TableCell();
                    tmpCell.Controls.Add(myP);
                    tmpRow.Controls.Add(tmpCell);

                    myP = new HtmlGenericControl("p");
                    myP.InnerText = i.Message_Date.ToString();
                    tmpCell = new TableCell();
                    tmpCell.Controls.Add(myP);
                    tmpRow.Controls.Add(tmpCell);

                    Table1.Controls.Add(tmpRow);
                }
            }
        }
    }
}