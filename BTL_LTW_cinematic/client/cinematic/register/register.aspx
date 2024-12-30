<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="BTL_LTW_cinematic.client.cinematic.register.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/client/cinematic/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="register.css">
    <style>
        .buy-ticket 
        {
            margin: 20px;
            height: 40px;
            width: 40%; /* Điều chỉnh lại width của button */
            border: 1px solid black;
            background-color: rgb(243,234,40);
            border-radius: 15px;
            cursor: pointer;
            text-align: center; /* Căn giữa nội dung trong button */
}       }
    </style>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server"  method="post">
            <div class="container">
        <header>
            <div class="left-header">
                <a href="../homePage/homePage.aspx"><img src="/client/cinematic/assets/img/logo2.png" alt="loggo" class="logo"></a>

            </div>
            <div class="right-header">
                <div class="login-container">
                    <ul class="txt">
                        <a href="../login/login.aspx" class="link">Đăng nhập</a>
                        <a href="register.aspx" class="link">Đăng kí</a>
                    </ul>
                </div>

            </div>
        </header>
        <div class="main-content">
            <div class="actions">
                <div class="tab-control">
                    <div class="tab-login">
                        <center>
                            <h2 id="txt-tab-login">Đăng Ký</h2>
                        </center>
                    </div>
                </div>

                
                    <label for="login-fullName">Họ và tên</label>
                    <div class="login-label">
                        <input type="text" id="register-fullName" name="register-fullName" placeholder="Nhập họ và tên" class="input" required>
                    </div>
                    <label for="login-birth">ngày sinh</label>
                    <div class="login-label">
                        <input type="date" id="register-birth" name="register-birth" class="input" required>
                    </div>
                    <label for="login-phoneNumber">số điện thoại</label>
                    <div class="login-label">
                        <input type="text" id="register-phoneNumber" name="register-phoneNumber" placeholder="Nhập số điện thoại" class="input" required>
                    </div>
                    <label for="login-userName">Tài khoản</label>
                    <div class="login-label">
                        <input type="text" id="register-userName" name="register-userName" placeholder="Nhập tài khoản" class="input" required>
                       
                    </div>
                       <center>
                            <asp:Label ID="lblMessage1" runat="server" ForeColor="Red" Visible="false"></asp:Label>                            
                            <!-- Thêm label dưới đây để hiển thị thông báo -->
                            <label id="lblDuplicateUsername" style="color: red; display: none;"></label>
                       </center>
                         

                    <label for="login-passWord">Mật khẩu</label>
                    <div class="login-label">
                        <input type="password" id="register-passWord" name="register-passWord" placeholder="Nhập mật khẩu" class="input" required>
                    </div>
                    <label for="login-passWord">Nhập lại mật khẩu</label>
                    <div class="login-label">
                        <input type="password" id="register-passWord2" name="register-passWord2" placeholder="Nhập lại mật khẩu" class="input" required>
                    </div>
                    <center>
                        <asp:Label ID="lblMessage2" runat="server" ForeColor="Red" Visible="false"></asp:Label>                            
                        <!-- Thêm label dưới đây để hiển thị thông báo -->
                        <label id="lblDuplicatePassword" style="color: red; display: none;"></label>
                    </center>
                    <center><asp:Button ID="Button1" runat="server" Text="ĐĂNG KÝ" CssClass="buy-ticket" OnClick="Button1_Click" /></center>

                    
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
<script src="./login.js"></script>
    </form>
</body>
</html>
