
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changePassword.aspx.cs" Inherits="BTL_LTW_cinematic.client.cinematic.changePassword.changePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../themify-icons/themify-icons.css">
<link rel="stylesheet" href="./changePassword.css">
    <title>ChangePassWord</title>
    <style>
        #submit {
    color: #10172b;
    background-color: rgb(243,234,40);
    border-radius: 8px;
    width: 30%;
    height: 40px;
    margin-top: 10px;
    margin-bottom: 10px;
    cursor:pointer;
}
        footer
        {
            margin-top: 90px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
    <header>
        <div class="left-header">
            <a href="../homePage/homePage.aspx"><img src="/client/cinematic/assets/img/logo2.png" alt="loggo" class="logo"></a>
        </div>
        
    </header>
    <div class="main-content">
        <div class="actions">
            <div class="tab-control">
                <div class="tab-login">
                    <center>
                        <h2 id="txt-tab-login">ĐỔI MẬT KHẨU</h2>
                    </center>
                </div>
            </div>

            <form id="login" method="post" action="login.aspx">
                <label for="login-userName">Mật khẩu cũ</label>
                <div class="login-label">
                    <input type="password" class="input" id="pwOld1" name="pwOld1" placeholder="Nhập mật khẩu cũ"  required>
                </div>
                <label for="login-passWord">Mật khẩu mới</label>
                <div class="login-label">
                    <input type="password" class="input" id="pwNew1" name="pwNew1" placeholder="Nhập mật khẩu mới" required>
                </div>
                <label for="login-passWord">Nhập lại mật khẩu mới</label>
                <div class="login-label">
                    <input type="password" class="input" id="pwNew2" name="pwNew2" placeholder="Nhập lại mật khẩu mới" required>
                </div>
                <center><asp:Button ID="submit" runat="server" Text="Đổi mật khẩu" OnClick="submit_onclick" /></center>
                <center><asp:Label ID="lblMessage" runat="server" Visible="false" ForeColor="Red"></asp:Label></center>
                
        </div>
        </form>

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
    </form>
     <script>
        var submitButton = document.getElementById('submit');
        
        submitButton.onclick = function (e) {
            var pwOld = document.getElementById('pwOld1').value;
            var pwNew1 = document.getElementById('pwNew1').value;
            var pwNew2 = document.getElementById('pwNew2').value;

            if (pwOld.trim() === "" || pwNew1.trim() === "" || pwNew2.trim() === "") {
                e.preventDefault();
                alert("Vui lòng nhập đầy đủ thông tin.");
            }
        };
    </script>
</body>
</html>
