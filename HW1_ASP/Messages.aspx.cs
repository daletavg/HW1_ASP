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

            LoadMessageSecond();

        }

        protected void exit_user_OnClick(object sender, EventArgs e)
        {
           Session.Abandon();
            Response.Redirect("Default.aspx");
        }

        protected void Timer1_OnTick(object sender, EventArgs e)
        {
            LoadMessageSecond();
        }

        private void LoadMessageSecond()
        {
            string newString = "<table class='table'><tr><th>Name</th><th>Message</th><th>Date</th></tr>";
            using (var db = new Guest())
            {
                var allMessages = db.Messages.ToList();
                allMessages.Reverse();
                foreach (var i in allMessages)
                {
                    newString += "<tr>";
                    newString += "<td>"+i.User.Name+"</td>";
                    newString += "<td>" + i.Message1 + "</td>";
                    newString += "<td>" + i.Message_Date + "</td>";
                    newString += "</tr>";
                }
            }

            newString += "</table>";
            addTable.InnerHtml = "";
            addTable.InnerHtml = newString;
        }

        
        protected void send_message_OnClick(object sender, EventArgs e)
        {
            using (var db = new Guest())
            {
                var tmpName = Session["Login"].ToString();
                var tmp = db.Users.First(i =>
                    i.Name == tmpName);

                Message msg = new Message(){Message1 = my_message.Text,
                    User = tmp,
                    Message_Date = DateTime.Now.ToString() };
                db.Messages.Add(msg);
                db.SaveChanges();
            }
        }
    }
}