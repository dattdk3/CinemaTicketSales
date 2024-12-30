using BTL_LTW_cinematic.Class;
using System;
using System.Collections;

namespace BTL_LTW_cinematic.client.cinematic.receipt
{
    public partial class receipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)Session["user"];
            ArrayList app = (ArrayList)Application["users"];
            foreach (User u in app)
            {
                if (user.userName == u.userName && user.passWord == u.passWord)
                {
                    Button2.Text = "xin chào " + user.userName;
                    Button3.Text = "Đăng xuất";
                }
            }
            ssU.Value = user.userName;
            ArrayList movtck = (ArrayList)Application["movieticket"];
            foreach (Movie_Tickests mvt in movtck)
            {
                tbUserName.Value += mvt.bName + ";";
                tbMoviename.Value += mvt.bMovieName + ";";
                tbShowTime.Value += mvt.bShowTime + ";";
                tbDayrelease.Value += mvt.bDayRelease + ";";
                tbRoom.Value += mvt.bRoom + ";";
                tbTicket.Value += mvt.bTicket + ";";
                tbTicketID.Value += mvt.bTicketID + ";";
                tbMoney.Value += mvt.bMoney + ";";
            }
            if (Button2.Text != "Đăng Nhập")
            {
                Button2.Enabled = false;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Button3.Text == "Đăng Ký")
            {
                Response.Redirect("../register/register.aspx");
            }
            else
            {
                Response.Redirect("../login/login.aspx");

            }
        }
    }
}