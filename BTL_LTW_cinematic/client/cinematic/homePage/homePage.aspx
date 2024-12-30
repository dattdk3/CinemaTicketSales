<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs"
    Inherits="BTL_LTW_cinematic.client.cinematic.homePage.homePage" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
        <link rel="stylesheet" href="../themify-icons/themify-icons.css">
        <link rel="stylesheet" href="../homePage/homePage.css"
        <link rel="stylesheet" href="../../../fontawesome-free-6.5.2-web/fontawesome-free-6.5.2-web/css/all.min.css"

    </head>

    <body>
        <form id="form1" runat="server">
            <input type='hidden' id='idmovie' name='idmovie' value="0" runat="server" />
            <input type="hidden" id="u_name" name="userName" value="a" runat="server" />

            <div class="container">
                <header>
                    <div class="left-header">

                        <a href="../homePage/homePage.aspx"><img src="/client/cinematic/assets/img/logo2.png"
                                alt="loggo" class="logo"></a>

                    </div>
                    <div class="center-header">
                        <asp:Button ID="datVeNgay_themPhim" CssClass="btn buy-ticket" runat="server" Text=""
                            Visible="false" OnClick="datVeNgay_themPhim_Click" />
                    </div>

                    <div class="center-header">
                        <asp:Button ID="inBaoCao" CssClass="btn buy-ticket" runat="server" Text=""

                            Visible="false" OnClick="inBaoCao_Click" />
                    </div>
                    <div class="right-header">

                        <div class="search">
                            <input type="text" placeholder="Tìm kiếm tại đây"  class="search-txt" id="search_txt" name="search_txt" runat="server">
                            <asp:Button ID="Button4" runat="server" Text="Tìm kiếm" CssClass="button1"  OnClick="Button4_Click"/>
                            <i class="ti-search icon-search" runat="server"></i>
                        </div>
                        <div class="login-container">
                            <ul class="txt" runat="server">
                                <asp:Button ID="Button2" runat="server" Text="Đăng nhập" CssClass="button1"
                                    OnClick="Button2_Click" />

                                <asp:Button ID="Button7" runat="server" Text="Đăng Ký" CssClass="button1"
                                    OnClick="Button3_Click" />

                                 <!-- Icon và dropdown menu -->
                                <div class="dropdown" id="dropdown" runat="server">
                                    <button class="dropbtn">
                                        <i class="fa-solid fa-user"></i>
                                    </button>
                                    <div class="dropdown-content" runat="server">
                                        <asp:Button ID="Button5" runat="server" Text="Đổi mật khẩu" CssClass="button_login"
                                            OnClick="Button5_Click" />   
                                        <asp:Button ID="Button3" runat="server" Text="Đăng xuất" CssClass="button_login"
                                            OnClick="Button3_Click" />                                
                                    </div>
                                </div>

                            </ul>
                        </div>

                    </div>
                </header>
                <div class="main-content">
                    <center>
                        <h1>PHIM ĐANG CHIẾU</h1>
                    </center>

                    <div class="img-container">
                        <div class="img-content">
                            <a href=""><img src="/client/cinematic/assets/img/ke_trom_mat_trang_4.png" alt="ba-thim-bao-thu"
                                    class="img"></a>
                            <div class="img-footer">
                                <a href="#phim">Kẻ trộm mặt trăng 4</a>
                                <button class="buy-ticket" id="1" onclick="datve(this.id)">
                                    <p>Đặt vé</p>
                                </button>
                            </div>
                        </div>
                        <div class="img-content">
                            <a href=""><img src="/client/cinematic/assets/img/ac_linh_trong_xac_me.jpg" alt="biet-doi-san-ma"
                                    class="img"></a>
                            <div class="img-footer">
                                <a href="/buy-ticket/buyticket.html">Ác linh trong xác mẹ</a>
                                <button class="buy-ticket" id="2" onclick="datve(this.id)">
                                    <p>Đặt vé</p>
                                </button>
                            </div>
                        </div>
                        <div class="img-content">
                            <a href=""><img src="/client/cinematic/assets/img/nha_chua_quy.jpg"
                                    alt="gap-lai-chi-bau-tet" class="img"></a>
                            <div class="img-footer">
                                <a href="/client/cinematic/buy-ticket/buyticket.html">Nhà chứa quỷ</a>
                                <button class="buy-ticket" id="3" onclick="datve(this.id)">
                                    <p>Đặt vé</p>
                                </button>
                            </div>
                        </div>
                        <div class="img-content">
                            <a href=""><img src="/client/cinematic/assets/img/mua_he_dep_nhat.jpg"
                                    alt="godzilla-vs-kong" class="img"></a>
                            <div class="img-footer">
                                <a href="">Mùa hè đẹp nhất</a>
                                <button class="buy-ticket" id="4" onclick="datve(this.id)">
                                    <p>Đặt vé</p>
                                </button>
                            </div>
                        </div>
                    </div>
                    <center>
                        <h1>PHIM SẮP CHIẾU</h1>
                    </center>
                    <div class="img-container">
                        <div class="img-content">
                            <a href=""><img src="/client/cinematic/assets/img/be_ma_cua_anh.jpg" alt="inside-out-2"
                                    class="img"></a>
                            <div class="img-footer">
                                <a href="">Bé ma của anh</a>
                                <button class="buy-ticket" id="5" onclick="datve(this.id)">
                                    <p>Đặt vé</p>
                                </button>
                            </div>
                        </div>
                        <div class="img-content">
                            <a href=""><img src="/client/cinematic/assets/img/cuu_long_thanh_trai.jpg"
                                    alt="meo-beo-sieu-quay" class="img"></a>
                            <div class="img-footer">
                                <a href="">Cửu long thành trại</a>
                                <button class="buy-ticket" id="6" onclick="datve(this.id)">
                                    <p>Đặt vé</p>
                                </button>
                            </div>
                        </div>
                        <div class="img-content">
                            <a href=""><img src="/client/cinematic/assets/img/gia_tai_cua_ngoai.jpg" alt="mai" class="img"></a>
                            <div class="img-footer">
                                <a href="">Gia tài của ngoại</a>
                                <button class="buy-ticket" id="7" onclick="datve(this.id)">
                                    <p>Đặt vé</p>
                                </button>
                            </div>
                        </div>
                        <div class="img-content">
                            <a href=""><img src="/client/cinematic/assets/img/tham_hoa_tren_cau.jpg"
                                    alt="" class="img"></a>
                            <div class="img-footer">
                                <a href="">Thảm họa trên cầu</a>
                                <button class="buy-ticket" id="8" onclick="datve(this.id)">
                                    <p>Đặt vé</p>
                                </button>
                            </div>
                        </div>
                    </div>
                    <center>
                        <asp:Button ID="Button1" runat="server" Text="Xem thêm" CssClass="xem_them"
                            OnClick="Button1_Click" />
                    </center>
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
                            <button class="prev">&#10094;</button>
                            <button class="next">&#10095;</button>
                        </div>

                </div>
                </center>
                <footer>
                    <center>
                        <h2>BHD CINEMA</h2>
                    </center>
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
                        <center>
                            <p>We work with clients form all over. Get in touch with us!</p>
                        </center>
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
        <script src="/client/cinematic/homePage/homepage.js"></script>
    </body>

    </html>
