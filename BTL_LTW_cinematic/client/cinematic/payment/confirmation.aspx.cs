using BTL_LTW_cinematic.Class;
using System;
using System.Collections;

namespace BTL_LTW_cinematic.client.cinematic.payment
{
    public partial class confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList app = (ArrayList)Application["users"];
            User user = (User)Session["user"];
            foreach (User u in app)
            {
                if (user.userName == u.userName && user.passWord == u.passWord)
                {
                    Button2.Text = "xin chào " + user.userName;
                    Button3.Text = "Đăng xuất";
                }
            }
            Movie_Tickests mt = (Movie_Tickests)Session["movietck"];
            Movie_Name.InnerHtml = mt.bMovieName.ToString();
            bshowtime.InnerText = mt.bShowTime.ToString() + " " + mt.bDayRelease.ToString();
            broom.InnerText = mt.bRoom.ToString();
            bticket.InnerText = mt.bTicket.ToString();
            bticketid.InnerText = mt.bTicketID.ToString();
            bmoney.InnerText = "Số tiền cần thanh toán: " + mt.bMoney.ToString() + " Đ";
        }

        protected void bttn_submit_Click(object sender, EventArgs e)
        {
            ArrayList movtck = (ArrayList)Application["movieticket"];
            Movie_Tickests mt = (Movie_Tickests)Session["movietck"];
            movtck.Add(mt);
            Response.Redirect("../homePage/homePage.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

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