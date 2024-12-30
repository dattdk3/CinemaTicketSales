using BTL_LTW_cinematic.Class;
using System;
using System.Collections;

namespace BTL_LTW_cinematic
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            //application user
            User u = new User("Nguyen Dinh Phi", "088888", "12-3-2003", "phi", "123");
            User i = new User("Thang", "088888", "12-3-2003", "thang", "123");
            User a = new User("admin", "088888", "12-3-2003", "admin", "123");
            User h = new User("Can minh hieu", "088888", "12-3-2003", "hieu", "123");
            ArrayList app = new ArrayList();
            app.Add(u);
            app.Add(i);
            app.Add(a);
            app.Add(h);
            Application["users"] = app;
            //application movies
            Application["movies"] = new ArrayList();
            Movies m1 = new Movies("Kẻ Trộm Mặt Trăng 4", "../assets/img/ke_trom_mat_trang_4.png", "94p", "Khác", "Chris Renaud, Patrick Delage", "Steve Carell, Kristen Wiig, Joey King", "05/07/2024", "Gru phải đối mặt với kẻ thù mới là Maxime Le Mal và Valentina đang lên kế hoạch trả thù anh, buộc gia đình anh phải lẩn trốn đi nơi khác. Bên cạnh việc đấu tranh bảo vệ gia đình, Gru đồng thời còn phải tìm ra điểm chung với thành viên mới nhất trong nhà đó là Gru Jr.", "1", "12.00-14.00");
            Movies m2 = new Movies("Ác Linh Trong Xác Mẹ", "../assets/img/ac_linh_trong_xac_me.jpg", "93p", "Khác", "Hadrah Daeng Ratu", "Shareefa Daanish, Daffa Wardhana, Caitlin Halderman", "12/07/2024", "Sau khi liều mạng thực hiện nghi thức cấm là thiết lập giao ước với quỷ để công việc kinh doanh phát triển, bà mẹ đơn thân sau một lần phạm phải đại kỵ đã gây họa và khiến cả gia đình bị ám bởi một thế lực tâm linh vô đối. Từ đây hàng loạt bi kịch xảy ra khiến tất cả những thành viên trong gia đình gặp phải tai ương và đỉnh điểm là lúc bà mẹ bị quỷ đoạt hồn. Liệu thầy mo có trục xuất được ác linh trong xác mẹ và hóa giải nghiệp chướng?", "1", "14.00-16.00");
            Movies m3 = new Movies("Nhà Chứa Quỷ", "../assets/img/nha_chua_quy.jpg", "83p", "Khác", "Chih-Wen Hsieh", "Esther Huang; Yuu Chen; Yukan Temu", "05/07/2024", "Tầng 4 tại tòa nhà nọ đã bị ngọn lửa nuốt chửng và bỏ hoang từ lâu. Tuy nhiên, những lời đồn về hồn ma váy đỏ cùng những cái chết kinh hoàng tại đây liên tục khiến cư dân sống trong cảnh khiếp sợ tột cùng.", "3", "16.00-18.00");
            Movies m4 = new Movies("Mùa Hè Đẹp Nhất", "../assets/img/mua_he_dep_nhat.jpg", "118p", "Việt Nam", "Vũ Khắc Tuận", "Đỗ Khánh Vân, Trần Nghĩa, Công Dương, Minh Dự, Nguyễn Tụ", "28/06/2024", "Mùa hè năm ấy, chúng ta chẳng có gì trong tay ngoài tuổi trẻ, ước mơ, và…có nhau. Nhưng cũng chính mùa Hè ấy - mùa hè mang theo những điều mà ta chưa kịp hoàn thành… Bạn đã sẵn sàng gặp lại phiên bản của chính mình, trong những ngày Hè đẹp nhất của tuổi trẻ năm ấy và viết tiếp câu chuyện còn dở dang chưa?", "4", "16.00-18.00");
            Movies m5 = new Movies("Bé Ma Của Anh", "../assets/img/be_ma_cua_anh.jpg", "124p", "Khác", "Komgrit Triwimol", "Sutthirak Subvijitra, Maylada Susri, Timethai Plangsilp…", "19/07/2024", "Chưa kịp mừng vì được thừa kế cả căn biệt thự cũ, chàng streamer rỗng túi Joe lại phát hiện ra ngôi nhà đang có tận 3 vong hồn cực kì quậy phá. Nhưng bằng động lực thoát nghèo, Joe đã nhanh trí biến nơi đây thành địa điểm tâm linh thu hút du khách, cũng như “phóng đổ” tim cô ma nữ xinh đẹp Anong. Chuyện tình người duyên ma phiên bản mới hết sức mặn mòi cho mùa hè vừa cười vừa sợ!", "1", "16.00-18.00");
            Movies m6 = new Movies("Cửu Long Thành Trại: Vây Thành", "../assets/img/cuu_long_thanh_trai.jpg", "124p", "Khác", "Trịnh Bảo Thụy", "Cổ Thiên Lạc, Hồng Kim Bảo, Nhậm Hiền Tề, Quách Phú Thành, Lâm Phong, Lưu Tuấn Khiêm, Huỳnh Đức Bân, Ngũ Doãn Long, Hồ Tử Đồng", "14/06/2024", "Lạc Quân nhập cảnh trái phép vào Hồng Kông và được Quyền Phong giúp đỡ để tồn tại ở Cửu Long Thành Trại - khu vực phức tạp có rất nhiều băng đảng xã hội đen. Trong lúc gặp nạn họ vô tình phát hiện ra quy luật ngầm giữa sự hỗn loạn phía sau nó. Đứng trước những thế lực tội ác, họ đứng lên chống lại âm mưu đen tối của kẻ thù để giữ lời thề bảo vệ sự bình yên của nơi này.", "1", "18.00-20.00");
            Movies m7 = new Movies("Gia Tài Của Ngoại", "../assets/img/gia_tai_cua_ngoai.jpg", "127p", "Khác", "Pat Boonnitipat", "Putthipong Assaratanakul, Usha Seamkhum, Tontawan Tantivejakul", "07/06/2024", "Gia Tài Của Ngoại xoay quanh câu chuyện về M (do Billkin Putthipong thủ vai) là một chàng trai thất nghiệp và đang tìm mọi cách để làm giàu. Một ngày nọ, M nhận ra có một cách làm giàu nhanh chóng: chăm sóc người bà đang mắc ung thư giai đoạn cuối để lấy tài sản thừa kế. Vì vậy, M quyết định đến chăm sóc người bà của mình. Tuy nhiên, trong khoảng thời gian sống cùng bà, M đã nhận ra những điều còn giá trị hơn cả tài sản.", "1", "20.00-22.00");
            Movies m8 = new Movies("Thảm Họa Trên Cầu", "../assets/img/tham_hoa_tren_cau.jpg", "115p", "Khác", "KIM Tae Gon", "LEE Sun Kyun, JU Ji Hoon, KIM Hie Won, MOON Sung Geun, YE Su Jeong, KIM Tae Woo, PARK Hee Von, PARK Ju Hyun, KIM Su An", "19/07/2024", "Do điều kiện thời tiết xấu đi đột ngột, tầm nhìn trên cây cầu đến sân bay bị suy giảm nghiêm trọng, khiến người dân bị mắc kẹt và có nguy cơ sập cầu do hàng loạt va chạm dây chuyền và các vụ nổ. Giữa sự hỗn loạn, những chú chó Echo từ thí nghiệm quân sự Dự án Mật, đang được vận chuyển bí mật, thoát ra ngoài và tất cả những người sống sót đều trở thành mục tiêu của các cuộc tấn công không ngừng. Nhiều người bị mắc kẹt trên cầu vì nhiều lý do khác nhau - một quan chức chính phủ từ văn phòng tổng thống (LEE Sun Kyun), người đang tiễn con gái mình (KIM Su An) tại sân bay; tài xế xe đầu kéo (JU Ji Hoon) đang trên đường đến hiện trường vụ va chạm; một cặp vợ chồng già (MOON Sung Geun, YE Su Jeong) đang trở về sau chuyến đi nước ngoài; chị em (PARK Hee Von, PARK Ju Hyun) đã lỡ chuyến bay và Tiến sĩ Yang (Kim Hie Won), nhà nghiên cứu chịu trách nhiệm về Dự án Mật - và một cuộc đấu tranh tuyệt vọng bắt đầu để họ trốn thoát đến nơi an toàn.", "4", "20.00-22.00");
            ArrayList mov = (ArrayList)Application["movies"];
            mov.Add(m1);
            mov.Add(m2);
            mov.Add(m3);
            mov.Add(m4);
            mov.Add(m5);
            mov.Add(m6);
            mov.Add(m7);
            mov.Add(m8);
            //application movie ticket
            Application["movieticket"] = new ArrayList();
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["search"] = "";
            Session["idphim"] = 0;
            Session["user"] = new User();
            Session["movietck"] = new Movie_Tickests();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}