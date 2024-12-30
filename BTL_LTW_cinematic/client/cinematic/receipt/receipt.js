let ssu = document.getElementById("ssU").value;
let uname = document.getElementById("tbUserName").value;
let mname = document.getElementById("tbMoviename").value;
let showtime = document.getElementById("tbShowTime").value;
let dayrelease = document.getElementById("tbDayrelease").value;
let room = document.getElementById("tbRoom").value;
let ticket = document.getElementById("tbTicket").value;
let ticketid = document.getElementById("tbTicketID").value;
let money = document.getElementById("tbMoney").value;

let uname1 = uname.split(';');
let mname1 = mname.split(';');
let showtime1 = showtime.split(';');
let dayrelease1 = dayrelease.split(';');
let room1 = room.split(';');
let ticket1 = ticket.split(';');
let ticketid1 = ticketid.split(';');
let money1 = money.split(';');

for (let i = 0; i < uname1.length - 1; i++) {
    if (ssu == uname1[i]) {
        var tbodyRef = document.getElementById('add_movie_table');

        // Insert a row at the end of table
        var newRow = tbodyRef.insertRow();

        // Insert a cell at the end of the row
        var newCell1 = newRow.insertCell();
        var newCell2 = newRow.insertCell();
        var newCell3 = newRow.insertCell();
        var newCell4 = newRow.insertCell();
        var newCell5 = newRow.insertCell();
        var newCell6 = newRow.insertCell();
        var newCell7 = newRow.insertCell();

        newCell1.innerHTML = mname1[i];
        newCell2.innerHTML = showtime1[i];
        newCell3.innerHTML = dayrelease1[i];
        newCell4.innerHTML = room1[i];
        newCell5.innerHTML = ticket1[i];
        newCell6.innerHTML = ticketid1[i];
        newCell7.innerHTML = money1[i];
    }
}

function test1() {
    
    window.location.href = "../homePage/homePage.aspx";

}