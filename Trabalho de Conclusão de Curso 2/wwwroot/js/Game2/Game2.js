var indexOlhos = 0;
var indexSobrancelha = 0;
var indexBoca = 0;
$(document).ready(function () {
});


function mudarSobrancelha(listImages) {
    var listImg = JSON.parse(JSON.stringify(listImages));
    if (indexSobrancelha == listImg.length - 1) {
        indexSobrancelha = 0;
    } else {
        indexSobrancelha++;
    }
    document.getElementById('divSobrancelha').innerHTML = '<img src="/Content/Game1/IArley/' + listImg[indexSobrancelha].ImageName + '" class="Sobrancelha" id="Sobrancelha" alt="Alternate Text" />';
}

function mudarOlhos(listImages) {
    var listImg = JSON.parse(JSON.stringify(listImages));
    if (indexOlhos == listImg.length-1) {
        indexOlhos = 0;
    } else {
        indexOlhos++;
    }
    document.getElementById('divOlhos').innerHTML = '<img src="/Content/Game1/IArley/' + listImg[indexOlhos].ImageName+'" class="Olhos" id="Olhos" alt="Alternate Text" />';
}

function mudarBoca(listImages) {
    var listImg = JSON.parse(JSON.stringify(listImages));
    if (indexBoca == listImg.length - 1) {
        indexBoca = 0;
    } else {
        indexBoca++;
    }
    document.getElementById('divBoca').innerHTML = '<img src="/Content/Game1/IArley/' + listImg[indexBoca].ImageName + '" class="Boca" id="Boca" alt="Alternate Text" />';
}