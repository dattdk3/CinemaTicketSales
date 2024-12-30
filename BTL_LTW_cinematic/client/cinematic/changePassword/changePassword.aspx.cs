using BTL_LTW_cinematic.Class;
using System;
using System.Collections;
using System.Web.UI;

namespace BTL_LTW_cinematic.client.cinematic.changePassword
{
    public partial class changePassword : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Không cần thêm logic vào đây nếu không cần thiết
        }

        protected void submit_onclick(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                lblMessage.Text = "Bạn chưa đăng nhập";
                lblMessage.Visible = true;
                return;
            }

            User currentUser = (User)Session["User"];
            string pwOld = Request.Form["pwOld1"];
            string pwNew1 = Request.Form["pwNew1"];
            string pwNew2 = Request.Form["pwNew2"];

            if (currentUser.passWord != pwOld)
            {
                lblMessage.Text = "Mật khẩu cũ không đúng";
                lblMessage.Visible = true;
                return;
            }

            if (pwNew1 != pwNew2)
            {
                lblMessage.Text = "mật khẩu mới không khớp";
                lblMessage.Visible = true;
                return;
            }

            currentUser.passWord = pwNew1;

            ArrayList app = (ArrayList)Application["users"];
            for (int i = 0; i < app.Count; i++)
            {
                User user = (User)app[i];
                if (user.userName == currentUser.userName)
                {
                    app[i] = currentUser;
                    break;
                }
            }

            Application["users"] = app;
            lblMessage.Text = "Thay đổi mật khẩu thành công !";
            lblMessage.Visible = true;



        }
    }

}
