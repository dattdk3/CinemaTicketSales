<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buyticket.aspx.cs" Inherits="BTL_LTW_cinematic.client.cinematic.buyticket.buyticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="buyticket.css">
    <link rel="stylesheet" href="../themify-icons/themify-icons.css">
    <title></title>
    <style>
        .buttontt {
            background-color: rgb(243,234,40);
            height: 100px;
            width: 20%;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 1px solid rgb(243,234,40);
            border-radius: 12px;
            background-color: rgb(243,234,40);
            font-size: 32px;
            color: rgb(102,51,153);
            text-transform: uppercase;
            font-weight: 600;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            cursor: pointer;
        }

        .button
        {
            background-color: #10172b;
            font-size: 16px;
            margin-left:20px;
            color:white;
        }

/*Chọn đồ ăn*/
.food-selection-container {
    width: 100%;
   
}

.food-items {
    display: flex;
    justify-content: center;
    gap: 20px; /* Adjust the gap between items as needed */
}

.food-item {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 150px; /* Adjust the width as needed */
}

    .food-item img {
        width: 100px; /* Adjust the width of the images as needed */
        height: 100px;
    }

.quantity-container {
    display: flex;
    align-items: center;
    gap: 5px; /* Adjust the gap between quantity buttons and number as needed */
}

.quantity-btn {
    width: 30px; /* Adjust the width of the buttons as needed */
    height: 30px; /* Adjust the height of the buttons as needed */
}

.price {
    margin-top: 10px; /* Adjust the margin as needed */
}

.quantity-btn {
    width: 30px; /* Adjust the width of the buttons as needed */
    height: 30px; /* Adjust the height of the buttons as needed */
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    border: none;
    background-color: #ddd; /* Default background color */
    cursor: pointer;
}

.quantity-btn:hover {
    background-color: #ccc; /* Change color on hover */
}

.quantity-btn:active {
    background-color: #bbb; /* Change color on active */
}

.quantity-btn:nth-of-type(2) {
    background-color: #4CAF50; /* Green background for the increase button */
    color: white;
}

.quantity-btn:nth-of-type(2):hover {
    background-color: #45a049; /* Darker green on hover */
}

.quantity-btn:nth-of-type(2):active {
    background-color: #388e3c; /* Even darker green on active */
}
.logo{height:80px;
      width:80px;
}


    </style>
</head>
<body>
    <form runat="server">
    <div class="container">
    <header>
        <div class="left-header">
            <a href="../homePage/homePage.aspx"><img src="/client/cinematic/assets/img/logo2.png" alt="loggo" class="logo"></a>

        </div>
        <div class="center-header">
          
         
        </div>
        <div class="right-header">

            <div class="search">
                <input type="text" placeholder="tìm kiếm tại đây" class="search-txt">
                <i class="ti-search icon-search"></i>
            </div>
            <div class="login-container">
                <ul class="txt">
                    <asp:Button ID="Button2" runat="server" Text="Đăng nhập" CssClass="button"/>
                    <asp:Button ID="Button3" runat="server" Text="Đăng Ký" CssClass="button"/>
                </ul>
            </div>
        </div>
    </header>
    <div class="main-content">
        <div class="movie-infor">
            <div class="left-content">
                <img src="" class="img-movie" runat ="server" id="mPicture" name="mPicture">
            </div>
            <div class="right-content">
                <h1 runat ="server" id="mName" name="mName"></h1>
                <div class="txt-content-up">
                    <div class="txt-container">
                        <i class="ti-alarm-clock"></i>
                        <p class="txt-content" runat ="server" id="mDuration" name="mDuration"></p>
                    </div>
                    <div class="txt-container">
                        <i class="ti-world"></i>
                        <p  class="txt-content" runat ="server" id="mCountry" name="mCountry">Khác</p>
                    </div>
                    <div class="txt-container">
                        <i class="ti-user"></i>
                        <p id="txt_gen" class="txt-content">K: Phim dành cho khán giả từ dưới 13 tuổi với điều kiện
                            xem cùng cha, mẹ hoặc người giám hộ.</p>
                    </div>
                </div>
                <div class="txt-content-down">
                    <h2>Mô tả</h2>
                    <div class="describe-containter">
                        <div class="des-content">
                            <label for="mDirector" >Đạo diễn :</label>
                            <p class="txt-content" runat ="server" id="mDirector" name="mDirector">Adam Wingard</p>
                            <input  type='hidden' id='mRoom' name='mRoom' value="0" runat="server"/>
                        </div>
                        <div class="des-content">
                            <label for="mActor">Diễn viên : </label>
                            <p class="txt-content" runat ="server" id="mActor" name="mActor">Rebecca Hall, Dan Stevens, Rachel House</p>
                        </div>
                        <div class="des-content">
                            <label for="mRelease">Công chiếu: </label>
                            <p class="txt-content" runat ="server" id="mRelease" name="mRelease">29/03/2024</p>
                        </div>
                    </div>

                    <div class="movie-content">
                        <h2>Nội dung phim</h2>
                        <p runat ="server" id="mContent" name="mContent">Kong và Godzilla - hai sinh vật vĩ đại huyền thoại, hai kẻ thủ truyền kiếp sẽ cùng bắt
                            tay thực thi một sứ mệnh chung mang tính sống còn để bảo vệ nhân loại, và trận chiến gắn
                            kết chúng với loài người mãi mãi sẽ bắt đầu.</p>
                    </div>

                </div>
            </div>
        </div>


        <div class="showtime-container">
            <center>
                <h3>Lịch chiếu</h3>
            </center>
            <div class="timeline-container">
                <input  type="hidden" id="lich" name="lich" value="10" runat="server"/>
                <input  type='hidden' id='totalmoney' name='totalmoney' value= runat="server"/>
                <input  type='hidden' id='totaltck' name='totaltck' value= runat="server"/>
                <input  type='hidden' id='ghe' name='ghe' value="" runat="server"/>
                <p class="time-list" id="mShowtime" name="mShowtime" runat="server"></p>
            </div>
            
            <center>
                <h3>Chọn ghế</h3>
            </center>
            <div class="select-seat-container">
                <div class="screen-container">
                    <img src="/client/cinematic/assets/img/img-screen.png" alt="screen" width="600px">
                    <p>màn hình</p>
                </div>
                        <div class="list-seat">
            <div class="seat-container">
                <ul>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="A01" id="A01" onclick="setprice(this.id)">
                        <p>A01</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="A02" id="A02" onclick="setprice(this.id)">
                        <p>A02</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="A03" id="A03" onclick="setprice(this.id)">
                        <p>A03
                        <p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="A04" id="A04" onclick="setprice(this.id)">
                        <p>A04</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="A05" id="A05" onclick="setprice(this.id)">
                        <p>A05</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="A06" id="A07" onclick="setprice(this.id)">
                        <p>A06</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="A07" id="A08" onclick="setprice(this.id)">
                        <p>A07</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="A08" id="A09" onclick="setprice(this.id)">
                        <p>A08</p>
                    </li>
                </ul>
            </div>
            <div class="seat-container">
                <ul>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="B01" id="B01" onclick="setprice(this.id)">
                        <p>B01</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="B02" id="B02" onclick="setprice(this.id)">
                        <p>B02</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="B03" id="B03" onclick="setprice(this.id)">
                        <p>B03
                        <p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="B04" id="B04" onclick="setprice(this.id)">
                        <p>B04</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="B05" id="B05" onclick="setprice(this.id)">
                        <p>B05</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="B06" id="B06" onclick="setprice(this.id)">
                        <p>B06</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="B07" id="B07" onclick="setprice(this.id)">
                        <p>B07</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="B08" id="B08" onclick="setprice(this.id)">
                        <p>B08</p>
                    </li>
                </ul>
            </div>
            <div class="seat-container">
                <ul>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="C01" id="C01" onclick="setprice(this.id)">
                        <p>C01</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="C02" id="C02" onclick="setprice(this.id)">
                        <p>C02</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="C03" id="C03" onclick="setprice(this.id)">
                        <p>C03
                        <p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="C04" id="C04" onclick="setprice(this.id)">
                        <p>C04</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="C05" id="C05" onclick="setprice(this.id)">
                        <p>C05</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="C06" id="C06" onclick="setprice(this.id)">
                        <p>C06</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="C07" id="C07" onclick="setprice(this.id)">
                        <p>C07</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="C08" id="C08" onclick="setprice(this.id)">
                        <p>C08</p>
                    </li>
                </ul>
            </div>
            <div class="seat-container">
                <ul>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="D01" id="D01" onclick="setprice(this.id)">
                        <p>D01</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="D02" id="D02" onclick="setprice(this.id)">
                        <p>D02</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="D03" id="D03" onclick="setprice(this.id)">
                        <p>D03
                        <p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="D04" id="D04" onclick="setprice(this.id)">
                        <p>D04</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="D05" id="D05" onclick="setprice(this.id)">
                        <p>D05</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="D06" id="D06" onclick="setprice(this.id)">
                        <p>D06</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="D07" id="D07" onclick="setprice(this.id)">
                        <p>D07</p>
                    </li>
                    <li><img src="../assets/img/svgexport-17.svg" alt="seat" class="seat" data-seat="D08" id="D08" onclick="setprice(this.id)">
                        <p>D08</p>
                    </li>
                </ul>
            </div>
        </div>

        <div class="type-seat">
            <div class="tseat-container"><img src="../assets/img/svgexport-17.svg" alt="seat">
                <p>ghế thường</p>
            </div>
            <div class="tseat-container"><img src="../assets/img/svgexport-18.svg" alt="seat">
                <p>ghế chọn</p>
            </div>
            <div class="tseat-container"><img src="../assets/img/svgexport-19.svg" alt="seat">
                <p>ghế đã đặt</p>
            </div>
        </div>
    </div>
            
  <div class="food-selection-container">
    <center>
        <h3>Chọn đồ ăn</h3>
    </center>
      <div></div>
    <div class="food-items">
        <div class="food-item">
            <img src="../assets/img/OL1.png" alt="food" class="food" id="food1">
            <p>Popcorn</p>
            <div class="quantity-container">
                <button type="button" class="quantity-btn" onclick="updateFoodQuantity('food1', -1)">-</button>
                <span id="food1-quantity" class="quantity">0</span>
                <button type="button" class="quantity-btn" onclick="updateFoodQuantity('food1', 1)">+</button>
            </div>
            <span id="food1-price" class="price">0</span> VND
        </div>
        <div class="food-item">
            <img src="../assets/img/OL2.png" alt="food" class="food" id="food2">
            <p>Cola</p>
            <div class="quantity-container">
                <button type="button" class="quantity-btn" onclick="updateFoodQuantity('food2', -1)">-</button>
                <span id="food2-quantity" class="quantity">0</span>
                <button type="button" class="quantity-btn" onclick="updateFoodQuantity('food2', 1)">+</button>
            </div>
            <span id="food2-price" class="price">0</span> VND
        </div>
        <div class="food-item">
            <img src="../assets/img/OL3.png" alt="food" class="food" id="food3">
            <p>Nachos</p>
            <div class="quantity-container">
                <button type="button" class="quantity-btn" onclick="updateFoodQuantity('food3', -1)">-</button>
                <span id="food3-quantity" class="quantity">0</span>
                <button type="button" class="quantity-btn" onclick="updateFoodQuantity('food3', 1)">+</button>
            </div>
            <span id="food3-price" class="price">0</span> VND
        </div>
    </div>
</div>

    
    <div class="cash-container">
        <div class="money-total-container">
            <label for="money-total">tạm tính: </label>
            <p id="money_total" runat="server"></p>
        </div>
        <asp:Button ID="cash_item" runat="server" Text="Thanh toán" CssClass="buttontt" OnClick="cash_item_Click1"/>
    </div>
</div>

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
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Disable the payment button by default
            const paymentButton = document.getElementById('cash_item');
            paymentButton.disabled = true;
            paymentButton.classList.add('disabled');

            var seats = document.querySelectorAll('.seat');

            seats.forEach(function (seat) {
                seat.addEventListener('click', function () {
                    var seatCode = this.getAttribute('data-seat');
                    toggleSeatColor(this, seatCode);
                    updatePaymentButtonState();
                });
            });

            function toggleSeatColor(seatElement, seatCode) {
                var currentSrc = seatElement.getAttribute('src');
                var yellowSeatSrc = '../assets/img/svgexport-18.svg';
                var whiteSeatSrc = '../assets/img/svgexport-17.svg';
                var newSrc = currentSrc === whiteSeatSrc ? yellowSeatSrc : whiteSeatSrc;
                seatElement.setAttribute('src', newSrc);
            }

   

            function updatePaymentButtonState() {
                const moneyTotal = document.getElementById('money_total').innerHTML;
                if (moneyTotal && moneyTotal !== "0") {
                    paymentButton.disabled = false;
                    paymentButton.classList.remove('disabled');
                } else {
                    paymentButton.disabled = true;
                    paymentButton.classList.add('disabled');
                }
            }
        });

        /*ngắt  */
        let totalPrice = 0;
        document.addEventListener("DOMContentLoaded", function () {
            var seats = document.querySelectorAll('.seat');

            seats.forEach(function (seat) {
                seat.addEventListener('click', function () {
                    var seatCode = this.getAttribute('data-seat');
                    toggleSeatColor(this, seatCode);
                });
            });

           
        });

       
     function formatNumber(number) {
            return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
        }
        let ghe = "";
        let total = 0;
        function setprice(selectid) {
            const seat = document.getElementById(selectid)
            const isSelected = seat.classList.contains("selected");


            if (isSelected) {
                totalPrice -= 100000;
                seat.classList.remove("selected");
                ghe = ghe.replace(selectid + ",", "");
                total = total - 1;
            } else {

                totalPrice += 100000;
                seat.classList.add("selected");
                ghe += selectid + ",";
                total = total + 1;
            }
            let strtotal = "";
            strtotal = total.toString();
            let strtotalmoney = "";
            strtotalmoney = totalPrice.toString();
            strtotalmoney = strtotalmoney.replace(/\B(?=(\d{3})+(?!\d))/g, ".");
            document.getElementById("money_total").innerHTML = strtotalmoney;
            document.getElementById("totalmoney").value = strtotalmoney;
            //console.log(document.getElementById("totalmoney").value);
            document.getElementById("ghe").value = ghe;
            console.log(document.getElementById("ghe").value);
            document.getElementById("totaltck").value = strtotal;
            console.log(document.getElementById("totaltck").value);
            updatePaymentButtonState();
        }

        let foodPrices = {
            'food1': 50000,
            'food2': 75000,
            'food3': 100000
        };

        function updateFoodQuantity(foodId, change) {
            const quantitySpan = document.getElementById(`${foodId}-quantity`);
            const priceSpan = document.getElementById(`${foodId}-price`);
            let quantity = parseInt(quantitySpan.textContent);

            if (quantity + change >= 0) {
                quantity += change;
                quantitySpan.textContent = quantity;
                priceSpan.textContent = quantity * foodPrices[foodId];
                updateTotalPrice();
            }
        }

        function updateTotalPrice() {
            let totalFoodPrice = 0;

            for (const foodId in foodPrices) {
                const quantity = parseInt(document.getElementById(`${foodId}-quantity`).textContent);
                totalFoodPrice += quantity * foodPrices[foodId];
            }

            const formattedTotalPrice = formatNumber(totalPrice + totalFoodPrice);
            document.getElementById("money_total").innerHTML = formattedTotalPrice;
            document.getElementById("totalmoney").value = formattedTotalPrice;
        }

        function formatNumber(number) {
            return number.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
        }

    </script>
</body>
</html>
