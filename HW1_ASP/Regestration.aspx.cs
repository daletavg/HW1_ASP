using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace HW1_ASP
{
    public partial class Regestration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Registrate(object sender, EventArgs e)
        {
            using (var user = new Guest())
            {
                if (user.Users.Any(o => o.Name == login.Text))
                {
                    HtmlGenericControl myDiv = new HtmlGenericControl("div");
                    myDiv.Attributes.Add("class", "alert alert-danger");
                    myDiv.Attributes.Add("role", "alert");
                    myDiv.InnerText = "This user already existed!";
                    alerts.Controls.Add(myDiv);
                    
                }
                else
                {
                    Registration(user);
                    Response.Redirect(String.Format("Default.aspx?trueReg={0}", true));
                }
            }

        }

        void Registration(Guest user)
        {
            
                GetHeshMd5 hash = new GetHeshMd5();
                User tmp = new User() { Name = login.Text, Pwd = hash.GetHesh(pass_one.Text) };
                user.Users.Add(tmp);
                user.SaveChanges();


                
            
        }
    }
}