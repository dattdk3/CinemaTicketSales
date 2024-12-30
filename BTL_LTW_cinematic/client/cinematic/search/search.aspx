<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="BTL_LTW_cinematic.client.cinematic.search.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="../themify-icons/themify-icons.css"/>
    <link rel="stylesheet" href="../search/search.css" />
</head>

<body>
      <form id="form1" runat="server">
      <input  type='hidden' id='idmovie' name='idmovie' value="0" runat="server"/>
           <input type="hidden" id="u_name" name="userName" value="a" runat="server" />
      <div class="container">
<header>
  <div class="left-header">
    
    <a href="../homePage/homePage.aspx"><img src="/client/cinematic/assets/img/logo2.png" alt="loggo" class="logo"></a>
    
  </div>
  <div class="center-header">
    <button type="button" class="btn buy-ticket"  onclick="homePage.aspx" a href="../homePage/homePage.aspx"><p>Trang Chủ</p></button>
  </div>
  <div class="right-header">

    <div class="search">
      <input type="text" placeholder="Tìm kiếm tại đây" class="search-txt">
      <i class="ti-search icon-search"></i>
    </div>
    <div class="login-container">
      <ul class="txt">
          <asp:Button ID="Button2" runat="server" Text="Đăng nhập" CssClass="button" OnClick="Button2_Click" />
          
          <asp:Button ID="Button3" runat="server" Text="Đăng Ký" CssClass="button" OnClick="Button3_Click" />
        
      </ul>
    </div>

  </div>
</header>
<div class="main-content">
    
  <center><h1>PHIM TÌM KIẾM</h1></center>
  <div class="img-container">
      <input  type='hidden' id='HiddenName' name='HiddenName' value="0" runat="server"/>
      <input  type='hidden' id='HiddenPic' name='HiddenPic' value="0" runat="server"/>
      <input  type='hidden' id='Hiddensearch' name='Hiddensearch' value="" runat="server"/>
      <input  type='hidden' id='Hidden1' name='idmovie' value="0" runat="server"/>
  
 </div>
    </div>
          <center>
                                       <div class="slider-container">
                            <div class="slider">
                                <div class="slide"><img src="/client/cinematic/assets/img/poster3.jpg"
                                        alt="Image 1"></div>
                                <div class="slide"><img src="/client/cinematic/assets/img/poster2.jpg"
                                        alt="Image 2"></div>
                                <div class="slide"><img src="/client/cinematic/assets/img/poster1.jpg"
                                        alt="Image 3"></div>
                            </div>
  <button class="prev" onclick="prevSlide()">&#10094;</button>
  <button class="next" onclick="nextSlide()">&#10095;</button>
</div>
          </center>
   
  
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
      
  </form>
    <script src="/client/cinematic/search/search.js"></script>
</body>
</html>
