<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="receipt.aspx.cs" Inherits="BTL_LTW_cinematic.client.cinematic.receipt.receipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="receipt.css">
    <link rel="stylesheet" href="../themify-icons/themify-icons.css">
</head>
    <style>
        #add_movie_table {
          width: 100%; 
          border-collapse: collapse; 
  
        }

        #add_movie_table th,
        #add_movie_table td {
            color:black;
            padding: 8px; 
            border: 1px solid #ddd; 
            width: calc(100% / 10); 
            box-sizing: border-box; 
            text-align:center;
        }
        .button
        {
            background-color: #10172b;
            font-size: 16px;
            margin-left:20px;
            color:white;
        }
        footer
        {
            margin-top: 380px;
        }

    </style>
<body>
    <form runat="server">
<div class="container">
<header>
    <div class="left-header">
      <a href="../homePage/homePage.aspx"><img src="/client/cinematic/assets/img/logo2.png" alt="loggo" class="logo"></a>          
    </div>
    <div class="center-header">
      <button type="button" class="btn buy-ticket" onclick="test1()"><p>Đặt vé ngay</p></button>
    </div>
    <div class="right-header">    
      <div class="search">
        <input type="text" placeholder="tìm kiếm tại đây" class="search-txt">
        <i class="ti-search icon-search"></i>
      </div>
      <div class="login-container">
        <ul class="txt">
          <asp:Button ID="Button2" runat="server" Text="Đăng nhập" CssClass="button"/>
           <asp:Button ID="Button3" runat="server" Text="Đăng Ký" CssClass="button" OnClick="Button3_Click"/>
        </ul>
      </div>
  
    </div>
  </header>

<div class="main-content">
    <div id="upper-content">
        <h1>TRANG HOÁ ĐƠN</h1>
    </div>                                                         
        <div id="middle"> 
            <input  type='hidden' id='ssU' name='ssU' value="" runat="server"/>
            <input  type='hidden' id='tbUserName' name='bUserName' value="" runat="server"/>
            <input  type='hidden' id='tbMoviename' name='tbMoviename' value="" runat="server"/>
            <input  type='hidden' id='tbShowTime' name='bShowTime' value="" runat="server"/>
            <input  type='hidden' id='tbDayrelease' name='tbDayrelease' value="" runat="server"/>
            <input  type='hidden' id='tbRoom' name='tbRoom' value="" runat="server"/>
            <input  type='hidden' id='tbTicket' name='tbTicket' value="" runat="server"/>
            <input  type='hidden' id='tbTicketID' name='tbTicketID' value="" runat="server"/>
            <input  type='hidden' id='tbMoney' name='tbMoney' value="" runat="server"/>
            <div id="right-middle-content">
                <div>
                    <table id="add_movie_table">
                        <thead>
                            <tr>
                                <th>Tên phim</th>
                                <th>Giờ chiếu</th>
                                <th>Ngày chiếu</th>
                                <th>Phòng chiếu</th>
                                <th>Số vé</th>
                                <th>Số ghế</th>
                                <th>Thành tiền</th>
                            </tr>
                        </thead>
                        <tbody>
                       
                        </tbody>
                </table>
            </div>
        </div>                                                               
</div>
    </div>
    </form>
    <script src="/client/cinematic/receipt/receipt.js"></script>
</body>
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
</html>
