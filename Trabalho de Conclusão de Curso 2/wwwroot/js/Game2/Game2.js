var indexOlhos = 0;
var indexSobrancelha = 0;
var indexBoca = 0;
var h = [0, 0]; // neuronios intermediarios (camada 2)
var w = [3, 1]; // pesos camada 2 para 3 verde
var v0 = [6, 3, 5]; // pesos da camada 1 para 2 vermelho
var v1 = [2, 1, 3]; // pesos da camada 1 para 2 azul
var k = 0.1;
$(document).ready(function () {
});


function mudarSobrancelha(listImages) {
    var listImg = JSON.parse(JSON.stringify(listImages));
    if (indexSobrancelha == listImg.length - 1) {
        indexSobrancelha = 0;
    } else {
        indexSobrancelha++;
    }
    document.getElementById('divSobrancelha').innerHTML = '<img src="/Content/Game2/IArley/' + listImg[indexSobrancelha].ImageName + '" class="Sobrancelha" id="Sobrancelha" alt="Alternate Text" />';
    document.getElementById('entradaSobrancelha').innerText = listImg[indexSobrancelha].Hierarchy;
}

function mudarOlhos(listImages) {
    var listImg = JSON.parse(JSON.stringify(listImages));
    if (indexOlhos == listImg.length - 1) {
        indexOlhos = 0;
    } else {
        indexOlhos++;
    }
    document.getElementById('divOlhos').innerHTML = '<img src="/Content/Game2/IArley/' + listImg[indexOlhos].ImageName + '" class="Olhos" id="Olhos" alt="Alternate Text" />';
    document.getElementById('entradaOlhos').innerText = listImg[indexOlhos].Hierarchy;
}

function mudarBoca(listImages) {
    var listImg = JSON.parse(JSON.stringify(listImages));
    if (indexBoca == listImg.length - 1) {
        indexBoca = 0;
    } else {
        indexBoca++;
    }
    document.getElementById('divBoca').innerHTML = '<img src="/Content/Game2/IArley/' + listImg[indexBoca].ImageName + '" class="Boca" id="Boca" alt="Alternate Text" />';
    document.getElementById('entradaBoca').innerText = listImg[indexBoca].Hierarchy;
}

function Treina(targ, train, x, h, w, v0, v1, k) {
    const taxaAprendizado = document.getElementById('aprendizagem').value;
    const deltai = k * (targ - train);
    const deltaj = k * (w[0] + w[1]) * deltai;

    const deltaW = [0, 0];
    // calcula h0, h1
    // h0
    for (let j = 0; j < v0.length; j++)
        h[0] += v0[j] * x[j];
    // h1
    for (let j = 0; j < v1.length; j++)
        h[1] += v1[j] * x[j];

    for (let i = 0; i < deltaW.length; i++) {
        deltaW[i] = deltai * (h[i] * k);
    }

    const deltaV = [0, 0, 0];
    for (let i = 0; i < deltaV.length; i++) {
        deltaV[i] = deltaj * (x[i]);
    }

    for (let i = 0; i < w.length; i++) {
        w[i] = w[i] + taxaAprendizado * deltaW[i];
    }

    for (let i = 0; i < v0.length; i++) {
        v0[i] = v0[i] + taxaAprendizado * deltaV[i];
    }

    for (let i = 0; i < v1.length; i++) {
        v1[i] = v1[i] + taxaAprendizado * deltaV[i];
    }

    // zerando
    for (let i = 0; i < h.length; i++) {
        h[i] = 0;
    }


}

function Aplica(x, h, w, v0, v1, k) {
    let y = 0;
    // h0
    for (let i = 0; i < v0.length; i++)
        h[0] += v0[i] * x[i];

    // h1
    for (let i = 0; i < v1.length; i++)
        h[1] += v1[i] * x[i];

    // y saida
    for (let i = 0; i < w.length; i++)
        y += w[i] * h[i];

    h.forEach(function (element, index) {
        document.getElementById(`ativacao${index + 1}`).innerText = element.toFixed(2).padStart(4, '0');
    });

    // zerando
    for (let i = 0; i < h.length; i++) {
        h[i] = 0;
    }



    document.getElementById(`resultadoFinal`).innerText = (y * k).toFixed(2);
    document.getElementById(`resultadoFinalTexto`).innerText = traduzResultadoNumericoParaTexto(document.getElementById(`resultadoFinal`).innerText);

    return y * k;
}

function PrintRNA(w, v0, v1) {
    w.forEach(function (element, index) {
        document.getElementById(`peso${index + 1}Verde`).innerText = element.toFixed(2).padStart(4, '0');
    });
    v0.forEach(function (element, index) {
        document.getElementById(`peso${index + 1}Vermelho`).innerText = element.toFixed(2).padStart(4, '0');
    });
    v1.forEach(function (element, index) {
        document.getElementById(`peso${index + 1}Azul`).innerText = element.toFixed(2).padStart(4, '0');
    });
}

function Main() {
    //0 0 0 triste
    //3 3 3 neutro
    //7 7 7 feliz
    /*const h = [0, 0]; // neuronios intermediarios (camada 2)
    const w = [3, 1]; // pesos camada 2 para 3 verde
    const v0 = [6, 3, 5]; // pesos da camada 1 para 2 vermelho
    const v1 = [2, 1, 3]; // pesos da camada 1 para 2 azul
    const k = 0.1;*/

    const targx = [3, 3, 3]; // neutro
    console.log(Aplica(targx, h, w, v0, v1, k));
    const trainx = [7, 3, 3];
    console.log(Aplica(trainx, h, w, v0, v1, k));

    PrintRNA(w, v0, v1);

    const targ = Aplica(targx, h, w, v0, v1, k);
    const train = Aplica(trainx, h, w, v0, v1, k);
    Treina(targ, train, trainx, h, w, v0, v1, k);
    PrintRNA(w, v0, v1);
    console.log(Aplica(trainx, h, w, v0, v1, k));
}
function calculaEmocao() {
    const targx = [document.getElementById('entradaSobrancelha').innerText, document.getElementById('entradaOlhos').innerText, document.getElementById('entradaBoca').innerText];
    Aplica(targx, h, w, v0, v1, k);
}
function calculaPesosTreinando(treinos) {
    let listTreinos = JSON.parse(JSON.stringify(treinos));
    let index = 0;

    function processarTreino() {


        if (index < listTreinos.length && index < parseInt(document.getElementById('features').value)) {
            const element = listTreinos[index];
            const targx = traduzEmocaoParaVetor(element.Humor);
            const trainx = [element.Sobrancelha, element.Olhos, element.Boca];
            const targ = Aplica(targx, h, w, v0, v1, k);
            const train = Aplica(trainx, h, w, v0, v1, k);
            Treina(targ, train, trainx, h, w, v0, v1, k);
            PrintRNA(w, v0, v1);

            index++;
            // Chamada recursiva para processar o próximo treino com um atraso de 1000 ms (1 segundo)
            setTimeout(processarTreino, 1000);
        }
    }

    for (var i = 0; i < parseInt(document.getElementById('epocas').value); i++) {
        processarTreino(); // Iniciar o processamento do primeiro treino
    }
}

function traduzEmocaoParaVetor(emocao) {
    if (emocao == "Triste") {
        return [0, 0, 0];
    }
    if (emocao == "Neutro") {
        return [3, 3, 3];
    }
    if (emocao == "Feliz") {
        return [7, 7, 7];
    }
}
function delay(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

function traduzResultadoNumericoParaTexto(resultado) {
    let targetx = [7, 7, 7];
    let max = AplicaRetornoSemEscrever(targetx, h, w, v0, v1, k);
    if (resultado > (max*0.38) && resultado < (max*0.67)) {
    //if (resultado > 5.1 && resultado < 8.5) {
        return "Neutro";
    } else {
        if (resultado > (max * 0.67)) {
            return "Feliz";
        } else {
            return "Triste";
        }
    }
}

function AplicaRetornoSemEscrever(x, h, w, v0, v1, k) {
    let y = 0;
    // h0
    for (let i = 0; i < v0.length; i++)
        h[0] += v0[i] * x[i];

    // h1
    for (let i = 0; i < v1.length; i++)
        h[1] += v1[i] * x[i];

    // y saida
    for (let i = 0; i < w.length; i++)
        y += w[i] * h[i];

    h.forEach(function (element, index) {
        document.getElementById(`ativacao${index + 1}`).innerText = element.toFixed(2).padStart(4, '0');
    });

    // zerando
    for (let i = 0; i < h.length; i++) {
        h[i] = 0;
    }



    return y * k;
}

function mostrarModal(id) {
    var modal = document.getElementById(id);
    modal.style.display = "block";
    setTimeout(function () {
        modal.style.opacity = "1";
    }, 50);
}

function fecharModal(id) {
    var modal = document.getElementById(id);
    modal.style.opacity = "0";

    // Adiciona um atraso antes de esconder o modal para permitir que a transição seja visível
    setTimeout(function () {
        modal.style.display = "none";
    }, 300);
}