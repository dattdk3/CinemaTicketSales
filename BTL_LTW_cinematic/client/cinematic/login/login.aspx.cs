using BTL_LTW_cinematic.Class;
using System;
using System.Collections;

namespace BTL_LTW_cinematic.client.cinematic.login
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ArrayList app = (ArrayList)Application["users"];

            User u = new User();
            string user;
            string password;
            user = Request.Form["login-userName"];
            password = Request.Form["login-passWord"];
            foreach (User user1 in app)
            {
                if (user1.userName == user && user1.passWord == password)
                {
                    u.userName = user1.userName;
                    u.passWord = user1.passWord;
                    u.birth = user1.birth;
                    u.phoneNum = user1.phoneNum;
                    u.fullName = user1.fullName;
                    Session["User"] = u;
                    Response.Redirect("../homePage/homePage.aspx");
                    return;
                }
                else {
                    
                    lblMessage3.Text = "Tài khoản hoặc mật khẩu không đúng!";
                    lblMessage3.Visible = true;
                    ClientScript.RegisterStartupScript(this.GetType(), "showDuplicateUsernameMessage", "document.getElementById('lblDuplicateUsername');", true);
                }

            }

        }
    }
}