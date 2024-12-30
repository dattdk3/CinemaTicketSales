using BTL_LTW_cinematic.Class;
using System;
using System.Collections;

namespace BTL_LTW_cinematic.client.cinematic.search
{
    public partial class search : System.Web.UI.Page
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
            string tenphim = (string)Session["search"];
            Response.Write(tenphim);
            Hiddensearch.Value = tenphim;
            string namem = "";
            string pic = "";
            ArrayList mov = (ArrayList)Application["movies"];
            foreach (Movies m in mov)
            {
                namem += m.movieName + ";";
                pic += m.moviePicture + ";";
            }
            HiddenName.Value = namem;
            HiddenPic.Value = pic;
            int idphim = (int)Session["idphim"];
            idphim = int.Parse(idmovie.Value);
            Session["idphim"] = idphim;
            if (IsPostBack)
            {
                if (idphim != 0 && user.userName != "admin")
                {
                    Response.Redirect("../buyticket/buyticket.aspx");
                }
                else
                {
                    Response.Redirect("../addFilm/addFilm.aspx");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Button2.Text == "Đăng nhập")
            {
                Response.Redirect("../login/login.aspx");
            }
            else
            {
                Response.Redirect("../receipt/receipt.aspx");
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