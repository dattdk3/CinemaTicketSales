using BTL_LTW_cinematic.Class;
using System;
using System.Collections;
using System.IO;
using System.Web;

namespace BTL_LTW_cinematic.client.cinematic.addFilm
{
    public partial class addFilm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            String check = "kook";
            int j = 1;
            ArrayList mov = (ArrayList)Application["movies"];
            int idphim = (int)Session["idphim"];
            Btndelete.Visible = false;


            if (Request.UrlReferrer.ToString() == "https://localhost:44313/client/cinematic/upComingFilm/upComingFilm.aspx")
            {
                heading.InnerHtml = "Sửa phim";
                btnAdd.InnerHtml = "Sửa phim";
                Btndelete.Visible = true;
                //Response.Write(Request.UrlReferrer.ToString());
                foreach (Movies m in mov)
                {
                    if (j == idphim)
                    {
                        m_name.Value = m.movieName;

                        m_duration.Value = m.movieDuration;
                        m_country.Value = m.movieCountry;
                        m_director.Value = m.movieDirector;
                        m_actor.Value = m.movieActor;
                        m_releaseDate.Value = m.movieRelease;
                        m_content.Value = m.movieContent;
                        m_room.Value = m.movieRoom;
                        m_showTime.Value = m.movieShowTime;
                    }
                    j++;
                }
                //kt
                /*Response.Write(m_name.Value);
                Response.Write(m_content.Value);*/
                check = "ok";

            }

            if (IsPostBack)
            {

                String mName = Request.Form["addFilm-movieName"];
                HttpPostedFile mPicture = Request.Files["addFilm-moviePicture"];
                String mDuration = Request.Form["addFilm-movieDuration"].ToString();
                String mCountry = Request.Form["addFilm-movieCountry"];
                String mDirector = Request.Form["addFilm-movieDirector"];
                String mActor = Request.Form["addFilm-movieActor"];
                String mRelease = Request.Form["addFilm-movieRelease"];
                String mContent = Request.Form["addFilm-movieContent"];
                String mRoom = Request.Form["addFilm-movieRoom"];
                String mShowTime = Request.Form["selectShowtime"];

                String nfile = mPicture.FileName;
                String extension = Path.GetExtension(nfile);
                string filePath = Server.MapPath("/client/cinematic/assets/img/" + nfile);

                String img_file = "/client/cinematic/assets/img/";
                if (File.Exists(filePath))
                {
                    String newFileName = Path.GetFileNameWithoutExtension(nfile);
                    int i = 1;
                    while (File.Exists(filePath))
                    {

                        newFileName = $"{newFileName}-{i}{extension}";
                        filePath = Server.MapPath("/client/cinematic/assets/img/" + newFileName);
                        i++;
                    }
                    mPicture.SaveAs(filePath);
                    img_file = img_file + newFileName;
                }
                else
                {

                    mPicture.SaveAs(filePath);
                    img_file = img_file + nfile;

                }
                //bat dau xu ly
                if (check_state.Value != "ok")
                {
                    //check == false thi moi add
                    Movies movies = new Movies(mName, img_file, mDuration, mCountry, mDirector, mActor, mRelease, mContent, mRoom, mShowTime);
                    mov.Add(movies);
                }
                else
                {
                    //check ==  ok thi sua lai

                    foreach (Movies m in mov)
                    {
                        if (j == idphim)
                        {
                            m.movieName = mName;

                            m.moviePicture = img_file;
                            m.movieDuration = mDuration;
                            m.movieCountry = mCountry;
                            m.movieDirector = mDirector;
                            m.movieActor = mActor;
                            m.movieRelease = mRelease;
                            m.movieContent = mContent;
                            m.movieRoom = mRoom;
                            m.movieShowTime = mShowTime;


                        }
                        j++;
                    }
                    Application["movies"] = mov;

                    /*Response.Redirect("../upComingFilm/upComingFilm.aspx");*/

                }

            }
            check_state.Value = check.ToString();
        }

        protected void Btndelete_Click(object sender, EventArgs e)
        {
            int j = 1;
            int delete = 0;
            ArrayList mov = (ArrayList)Application["movies"];
            int idphim = (int)Session["idphim"];
            foreach (Movies m in mov)
            {
                if (j == idphim)
                {
                    delete = j - 1;
                }
                j++;
            }
            mov.RemoveAt(delete);
            Application["movies"] = mov;
        }
    }
}