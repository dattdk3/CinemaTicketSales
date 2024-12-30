
//add time kieu cu
/*const showTime = document.getElementById("btn-addTime");//thoi gian chieu o add thoi gian
const table_showTime = document.getElementById("txt-showTime");//thoi gian chieu o table*/
const duration = document.getElementById("duration");
const releaseDate = document.getElementById("releaseDate");
const country = document.getElementById("country");
const director = document.getElementById("director");
const actor = document.getElementById("actors");
const content = document.getElementById("movie-content");
const mname = document.getElementById("movie-name");
const showTime = document.getElementById("showTime");
const room = document.getElementById("room");
//
const submit = document.getElementById("btnAdd");
//
const m_name = document.getElementById("m_name").value;
const m_picture = document.getElementById("picture");
const m_duration = document.getElementById("m_duration").value;
const m_country = document.getElementById("m_country").value;
const m_director = document.getElementById("m_director").value;
const m_actor = document.getElementById("m_actor").value;
const m_releaseDate = document.getElementById("m_releaseDate").value;
const m_content = document.getElementById("m_content").value;
const m_room = document.getElementById("m_room").value;
const m_showTime = document.getElementById("m_showTime").value;
const check = document.getElementById("check_state");




let fillMovie = () => {

    if (check_state.value == "ok") {
        mname.value = m_name;
        duration.value = parseInt(m_duration);
        country.value = m_country;
        director.value = m_director;
        actor.value = m_actor;
        releaseDate.value = m_releaseDate;
        content.value = m_content;
        for (let j = 0; j < room.options.length; j++) {
            if (room.options[j].value == m_room) {

                room.selectedIndex = j;
            }
        }
        for (let k = 0; k < showTime.options.length; k++) {
            if (showTime.options[k].value == m_showTime) {
                showTime.selectedIndex = k;
            }
        }       
    }
}





// let checkTime = () => {
//     arr = table_showTime.value.split(";");
//     if (showTime.value.trim() == "") {
//         alert("chua chon thoi gian");
//         return;
//     }
//     for (let j = 0; j < arr.length; j++) {
//         if (arr[j] == showTime.value) {
//             alert("da co thoi gian chieu nay");
//             return;
//         }
//     }

// }
/*check thoi luong phim */
let checkDuration = () => {
    if (duration.value <= 0) {

        return false;
    }
    else {
        return true;
    }
}

/*Ham check text trung nhau*/
let checkText = (t) => {

    let arr_text = [];
    let check = 0;
    arr_text = t.value.trim().split(";");
    for (let i = 0; i < arr_text.length - 1; i++) {
        for (let j = i + 1; j < arr_text.length; j++) {
            if (arr_text[i] == arr_text[j]) {
                check++;
                console.log("not ok");
                return false;
            }
        }
    }
    if (check == 0) {
        console.log("ok");
        return true;
    }
}
/*check ngay chieu ko dc nho hon hoac bang ngay hien tai */
let checkReleaseDate = () => {
    var d = new Date();
    if (releaseDate.value <= d.toISOString().substring(0, 10)) {

        return false;
    }
    else {

        return true;
    }
}
/**ham check all */
let checkAll = () => {
    if (!checkText(country)) {
        alert("Quốc gia của bạn bị trùng");
        return false;
    }
    else if (!checkText(actor)) {
        alert("Diễn viên của bạn bị trùng");
        return false;
    }
    else if (!checkText(director)) {
        alert("Đạo diễn của bạn bị trùng");
        return false;
    }
    else if (!checkDuration()) {
        console.log("klo ok");
        alert("thời gian không hợp lệ");
        return false;
    }
    else if (!checkReleaseDate()) {
        console.log("ad ok");
        alert("Ngày chiếu không hợp lệ");
        return false;
    }
    else {
        return true;
    }

}



/*ham them thoi gian chieu neu thoi gian chieu*/
/*let addShowTime = () => {
    let i = 0;
    let arr = table_showTime.value.split(";");
    if (showTime.value.trim() == "") {
        alert("chưa chọn thời gian");
        return;
    }
    *//*check xem da co thoi gian nay chua  *//*
    for (let j = 0; j < arr.length; j++) {
        if (arr[j] == showTime.value) {
            alert("đã có thời gian chiếu này");
            return;
        }
    }
    *//*check tu thoi gian chieu thu 2 se them dau ";" vao *//*
    if (i >= 1) {
        table_showTime.value = table_showTime.value + ";" + showTime.value;
        i++;
    }
    else {
        table_showTime.value = table_showTime.value + showTime.value;
        i++;
    }
    console.log(table_showTime.value);
}*/
