using BTL_LTW_cinematic.Class;
using System;
using System.Collections;

namespace BTL_LTW_cinematic.client.cinematic.register
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool checkPass = true;
            bool checkUser = true;

            ArrayList app = (ArrayList)Application["users"];
            string fname = Request.Form["register-fullName"];
            string birth = Request.Form["register-birth"];
            string sdt = Request.Form["register-phoneNumber"];
            string uname = Request.Form["register-userName"];
            string pssword = Request.Form["register-passWord"];
            string pssword2 = Request.Form["register-passWord2"];

            foreach (User user in app)
            {
                if (user.userName == uname)
                {
                    checkUser = false;
                    break;
                }
            }

            if (!checkUser)
            {
                lblMessage1.Text = "Tên người dùng đã tồn tại";
                lblMessage1.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "showDuplicateUsernameMessage", "document.getElementById('lblDuplicateUsername');", true);
            }


            foreach (User user in app)
            {
                if (pssword != pssword2)
                {
                    checkPass = false;
                    break;
                }
            }

            if (!checkPass)
            {
                lblMessage2.Text = "Bạn phải nhập mật khẩu trùng nhau";
                lblMessage2.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "showDuplicateUsernameMessage", "document.getElementById('lblDuplicateUsername');", true);
            }

            if (checkUser && checkPass)
            {
                User u = new User(fname, sdt, birth, uname, pssword);
                app.Add(u);
                Application["users"] = app;
                Response.Redirect("../login/login.aspx");
            }

        }
    }
}