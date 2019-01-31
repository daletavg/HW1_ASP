using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace HW1_ASP
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"]!=null)
            {
                Response.Redirect(String.Format("Messages.aspx"));
            }
            string request = Request.QueryString["trueReg"];
            if (request != null)
            {
                HtmlGenericControl myDiv = new HtmlGenericControl("div");
                myDiv.Attributes.Add("class", "alert alert-success");
                myDiv.Attributes.Add("role", "alert");
                myDiv.InnerText = "Registration succesful";
                alerts.Controls.Add(myDiv);
            }

        }
        protected void LoginOn(object sender, EventArgs e)
        {
            password.Attributes["class"] = "";
            password.Attributes["class"] = "form-control";
            using (var user = new Guest())
            {
                //GetHeshMd5 hash = new GetHeshMd5();
                //user tmp = new user() { name = enter_login.Text, pwd = hash.GetHesh(password.Text) };
                //user.users.Add(tmp);
                //user.SaveChangesAsync();
                User tmp = user.Users.First(i => i.Name == enter_login.Text);

                if (GetHeshMd5.CheckHeshMD5(new GetHeshMd5().GetHesh(password.Text),tmp.Pwd))
                {
                    Session["Login"] = enter_login.Text;
                    Session["pwd"] = tmp.Pwd;
                    Response.Redirect(String.Format("Messages.aspx"));
                }
                else
                {
                    HtmlGenericControl myDiv = new HtmlGenericControl("div");
                    myDiv.Attributes.Add("class", "alert alert-danger");
                    myDiv.Attributes.Add("role", "alert");
                    myDiv.InnerText = "Wrong password!";
                    alerts.Controls.Clear();
                    alerts.Controls.Add(myDiv);
                    password.Attributes["class"] = "";
                    password.Attributes["class"] = "form-control is-invalid";
                }


            }
        }
    }
}