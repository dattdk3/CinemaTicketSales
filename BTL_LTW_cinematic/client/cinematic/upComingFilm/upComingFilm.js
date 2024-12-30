
/*let div1 = document.createElement('div');
let img = document.createElement('img');
img.href = '/client/cinematic/assets/img/biet-doi-san-ma.jpg';
div1.appendChild(img);

let containerdiv = document.querySelector('.img-container');
containerdiv.appendChild(div1);*/

var name = document.getElementById("HiddenName").value;
var pic = document.getElementById("HiddenPic").value;
let user = document.getElementById("u_name");
var pica = pic.split(';');
var namea = name.split(';');
console.log(pica);
console.log(pica.length);
console.log(namea);
console.log(namea.length);
console.log(pica[1]);
console.log(namea[1]);

for (let i = 0; i < namea.length - 1; i++) {
    //div img-content
    let divcontent = document.createElement('div');
    divcontent.classList.add('img-content');
    //image img
    let image = document.createElement('img');
    image.src = pica[i];
    image.classList.add('img');
    //div img-footer
    let divfooter = document.createElement('div');
    divfooter.classList.add('img-footer');
    //p tenphim
    let tenphim = document.createElement('p');
    tenphim.innerHTML = namea[i];
    //btn datve
    let datve = document.createElement('button');
    datve.classList.add('buy-ticket');
    datve.id = i + 1;
    if (user.value == "admin") {
        datve.textContent = "Sửa phim";
        datve.onclick = function () { document.getElementById("idmovie").value = i + 1; };
    }
    else {
        datve.textContent = "Đặt vé";
        datve.onclick = function () { document.getElementById("idmovie").value = i + 1; };
    }
    datve.style.color = 'black';



    let containerdiv = document.querySelector('.img-container');
    containerdiv.appendChild(divcontent);
    divcontent.appendChild(image);
    divcontent.appendChild(divfooter);
    divfooter.appendChild(tenphim);
    divfooter.appendChild(datve);
}
function datve(clicked_id) {
    //<%Session["idphim"] = "'+clicked_id+'";%>
    alert(clicked_id);
    document.getElementById("idmovie").value = clicked_id
    //alert(clicked_id);
}
function test() {
    window.location.href = "../homePage/homePage.aspx";

}