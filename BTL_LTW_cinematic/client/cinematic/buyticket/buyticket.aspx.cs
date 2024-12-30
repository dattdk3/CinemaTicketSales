using BTL_LTW_cinematic.Class;
using System;
using System.Collections;

namespace BTL_LTW_cinematic.client.cinematic.buyticket
{
    public partial class buyticket : System.Web.UI.Page
    {
        public string img;
        protected void Page_Load(object sender, EventArgs e)
        {
            //ClientScript.RegisterStartupScript(GetType(), "hwa", "lichchieu();", true);
            int i = 1;
            ArrayList mov = (ArrayList)Application["movies"];
            int idm = (int)Session["idphim"];
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
            foreach (Movies m in mov)
            {
                if (i == idm)
                {
                    mName.InnerHtml = m.movieName;
                    mPicture.Src = m.moviePicture;
                    mDuration.InnerHtml = m.movieDuration;
                    mCountry.InnerHtml = m.movieCountry;
                    mDirector.InnerHtml = m.movieDirector;
                    mActor.InnerHtml = m.movieActor;
                    mRelease.InnerHtml = m.movieRelease;
                    mContent.InnerHtml = m.movieContent;
                    mShowtime.InnerText = m.movieShowTime;
                    mRoom.Value = m.movieRoom;
                }
                i++;
            }
        }

        protected void cash_item_Click1(object sender, EventArgs e)
        {
            User user = (User)Session["user"];
            if (user.userName == null)
            {
                Response.Redirect("../homePage/homePage.aspx");
            }
            else
            {
                Movie_Tickests mvt = new Movie_Tickests();
                mvt.bName = user.userName.ToString();
                mvt.bMovieName = mName.InnerText.ToString();
                mvt.bShowTime = mShowtime.InnerText.ToString();
                mvt.bDayRelease = mRelease.InnerText.ToString();
                mvt.bRoom = mRoom.Value.ToString();
                mvt.bTicket = totaltck.Value.ToString();
                mvt.bTicketID = ghe.Value.ToString();
                mvt.bMoney = totalmoney.Value.ToString();
                Session["movietck"] = mvt;
                Response.Write(money_total.InnerHtml);
                Response.Redirect("../payment/buyer_info.aspx");
            }
        }
    }
}