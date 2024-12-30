var name = document.getElementById("HiddenName").value;
var pic = document.getElementById("HiddenPic").value;
var sea = document.getElementById("Hiddensearch").value;
var pica = pic.split(';');
var namea = name.split(';');
console.log(sea);

for (let i = 0; i < namea.length - 1; i++)
{
    if (sea == namea[i])
    {
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
        datve.textContent = "Đặt vé";
        datve.onclick = function () { document.getElementById("idmovie").value = i + 1; };
        datve.style.color = 'black';



        let containerdiv = document.querySelector('.img-container');
        containerdiv.appendChild(divcontent);
        divcontent.appendChild(image);
        divcontent.appendChild(divfooter);
        divfooter.appendChild(tenphim);
        divfooter.appendChild(datve);
    }  
}
function datve(clicked_id) {
    //<%Session["idphim"] = "'+clicked_id+'";%>
    alert(clicked_id);
    document.getElementById("idmovie").value = clicked_id
    //alert(clicked_id);
}