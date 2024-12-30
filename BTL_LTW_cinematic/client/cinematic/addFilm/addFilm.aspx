<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addFilm.aspx.cs" Inherits="BTL_LTW_cinematic.client.cinematic.addFilm.addFilm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../themify-icons/themify-icons.css">
    <link rel="stylesheet" href="./addFilm.css">
    <style>
        .option-showTime{
            color:black;
        }
        footer{
            margin-top:100px;
        }
        .logo{height:80px;
      width:80px;
}
    </style>
    <title>Thêm phim</title>
</head>
<body onload="fillMovie()">
    <div class="container">
        <header>
            <div class="left-header">
                <a href="../homePage/homePage.aspx"><img src="/client/cinematic/assets/img/logo2.png" alt="loggo" class="logo"></a>

            </div>
            <div class="center-header">
                <button class="btn buy-ticket">
                    <p>Đặt vé ngay</p>
                </button>
            </div>
            <div class="right-header">

                <div class="search">
                    <input type="text" placeholder="tìm kiếm tại đây" class="search-txt">
                    <i class="ti-search icon-search"></i>
                </div>
                <div class="login-container">
                </div>
            </div>
        </header>
        <div class="main-content">
            <div class="add-movie" style="overflow-x: auto;">
                <h1 id="heading" runat="server">Thêm phim</h1>
                <form action="addFilm.aspx" method="post" enctype="multipart/form-data" runat="server" onsubmit="return checkAll()">
                    <input type ="hidden" id="check_state" value="" runat="server"/>
                    <input type ="hidden" id="m_name" value="" runat="server"/>
                    <input type ="hidden" id="m_picture" value="" runat="server"/>
                    <input type ="hidden" id="m_duration" value="" runat="server"/>
                    <input type ="hidden" id="m_country" value="" runat="server"/>
                    <input type ="hidden" id="m_director" value="" runat="server"/>
                    <input type ="hidden" id="m_actor" value="" runat="server"/>
                    <input type ="hidden" id="m_releaseDate" value="" runat="server"/>
                    <input type ="hidden" id="m_content" value="" runat="server"/>
                    <input type ="hidden" id="m_room" value="" runat="server"/>
                    <input type ="hidden" id="m_showTime" value="" runat="server"/>
                    <table id="add-movie-table">
                        <thead>
                            <tr>
                                <th>Tên phim</th>
                                <th>Ảnh bìa</th>
                                <th>Thời lượng</th>
                                <th>Quốc gia</th>
                                <th>Đạo diễn</th>
                                <th>Diễn viên</th>
                                <th>Ngày công chiếu</th>
                                <th>Nội dung phim</th>
                                <th>Phòng chiếu</th>
                                <th>Thời gian chiếu</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <input type="text" name="addFilm-movieName" class="table-input" placeholder="Tên phim" id="movie-name" required>
                                </td>
                                <td>
                                    <input type="file"   name="addFilm-moviePicture" class="table-input" >
                                </td>
                                <td>
                                    <input type="number" name="addFilm-movieDuration" class="table-input" id="duration" required>
                                </td>
                                <td>
                                    <input type="text" name="addFilm-movieCountry" class="table-input" id="country" required>
                                </td>
                                <td>
                                    <textarea name="addFilm-movieDirector" class="table-input" id="director" required></textarea>
                                </td>
                                <td>
                                    <textarea name="addFilm-movieActor" id="actors" class="table-input" required></textarea>
                                </td>
                                <td>
                                    <input type="date" name="addFilm-movieRelease" class="table-input" id="releaseDate" required>
                                </td>
                                <td>
                                    <textarea name="addFilm-movieContent" id="movie-content" class="table-input" required></textarea>
                                </td>
                                <td>
                                    <select name="addFilm-movieRoom" id="room" class="table-input" required>
                                        <option class="option-room" value="1">phòng 1</option>
                                        <option class="option-room" value="2">phòng 2</option>
                                        <option class="option-room" value="3">phòng 3</option>
                                        <option class="option-room" value="4">phòng 4</option>

                                    </select>
                                </td>
                                <td>
                                    <select name="selectShowtime" id="showTime" class="table-input">
                                        <option class="option-showTime" value ="12.00-14.00">12.00-14.00</option>
                                        <option class="option-showTime" value ="14.00-16.00">14.00-16.00</option>
                                        <option class="option-showTime" value ="16.00-18.00">16.00-18.00</option>
                                        <option class="option-showTime" value ="18.00-20.00">18.00-20.00</option>
                                        <option class="option-showTime" value ="20.00-22.00">20.00-22.00</option>
                                    </select>
                                    <!--<textarea type="text" name="addFilm-movieShowTime" disabled  value="" id="txt-showTime" class="table-input"></textarea>-->
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <!--<div class="addTime">
                        <label for="showTime">chọn khung giờ chiếu</label>
                        <input type="time" class="add-showTime" id="showTime">
                        <button value="add" type="button" class="add-showTime" id="btn-addTime" onclick="addShowTime()">+</button>
                    </div>-->

                    <div class="btnAdd-container">

                        <button type="submit" id="btnAdd" value="submit" runat="server">Thêm phim</button>
                        <asp:Button ID="Btndelete" runat="server" Text="Xóa phim" OnClick="Btndelete_Click"/>

                    </div>
                    </form>
            </div>
                        
                 
        </div>
        <footer>
        <center><h2>BHD CINEMA</h2></center>
        <div class="list-icon">
          <div class="icon-container">
            <div class="icon">
              <i class="item-icon ti-facebook"></i>
            </div>
            <p>Facebook</p>
          </div>
          <div class="icon-container">
            <div class="icon">
              <i class="item-icon ti-instagram"></i>
            </div>
            <p>Instagram</p>
          </div>
          <div class="icon-container">
            <div class="icon">
              <i class="item-icon ti-youtube"></i>
            </div>
            <p>Youtube</p>
          </div>
          <div class="icon-container">
            <div class="icon">
              <i class="item-icon ti-twitter"></i>
            </div>
            <p>Twitter</p>
          </div>
          <div class="icon-container">
            <div class="icon">
              <i class="item-icon ti-google"></i>
            </div>
            <p>Google</p>
          </div>
          <div class="icon-container">
            <div class="icon">
              <i class="item-icon ti-linkedin"></i>
            </div>
            <p>Linkedin</p>
          </div>
          <div class="icon-container">
            <div class="icon">
              <i class="item-icon ti-pinterest"></i>
            </div>
            <p>Pinterest</p>
          </div>
        </div>
        <div class="text">
          <center><p>We work with clients form all over. Get in touch with us!</p></center>
          <div class="text-contact">
            <div class="email-contact">
              <i class="ic-contact ti-email"></i>
              <p>SE.G20@gmail.com</p>
            </div>
            <div class="phone-contact">
              <i class="ti-mobile"></i>
              <p class="phone-number">0888.8888.888</p>
            </div>
        </div>
          </div>
      </footer>
    </div>
</body>
<script src="addFilm.js"></script>
</html>
