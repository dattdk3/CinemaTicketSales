function checkvalid() {
    if (!document.getElementById("check_Dieu_Khoan").checked || !document.getElementById("check_age_buyer").checked) {
        alert("Xin hãy đồng ý với điều khoản");
    }
}

function home() {

    window.location.href = "../homePage/homePage.aspx";

}