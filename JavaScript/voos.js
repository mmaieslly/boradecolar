/*DEFININDO FUNÇÕES*/
function sumir(elemento){
    elemento.style.display = "none";
}
function aparecer(elemento){
    elemento.style.display = "block";
}



/*ESCONDER DATA DE VOLTA EM VOO SÓ DE IDA*/
let idaVolta = document.getElementById("switch-shadow");
let volta = document.getElementById("volta");
let espaco = document.getElementById("espaco");

idaVolta.addEventListener("change", (e)=>{
    if (idaVolta.checked == false){
        sumir(volta);
        aparecer(espaco);
    } else {
        sumir(espaco);
        aparecer(volta);
    }
})

/*DATA INICIAL NUNCA POSTERIOR A DATA FINAL*/
let dataIda = document.getElementById("dataIda");

dataIda.addEventListener("change", (e)=>{
    console.log(dataIda.value);
    document.getElementById("dataVolta").min = dataIda.value
})

/*ORIGEM E DESTINO NAO PODEM SER IGUAIS*/
let origem = document.getElementById("origem");
let destino = document.getElementById("destino");

destino.addEventListener("keyup", (e)=>{
    console.log(origem.value)
    if(origem.value == destino.value){
        alert("Origem e Destino não podem ser iguais!")
    }else if(origem.value == ""){
        alert("O local de Origem está vazio, insira primeiro a origem e depois o destino!")
    }
})



/*PAGINA DE RESULTADOS*/
let pesquisarVoo = document.getElementById("pesquisar_voo")
let resultadoVoo = document.getElementById("resultado_voo")
let btnProcurar = document.getElementById("procurar")
let quantpessoas = document.getElementById("quantpessoas")
let sOrigem = document.getElementById("SOrigem");
let sDestino = document.getElementById("SDestino");
let sIda = document.getElementById("SIda");
let sVolta = document.getElementById("SVolta");
let sPassageiros = document.getElementById("SPassageiros");

btnProcurar.addEventListener("click", (e)=>{
    if (origem.value === "" || destino.value === "" || quantpessoas.value === ""){
        alert("Algum item não foi preenchido corretamente, confira novamente!")
    }else{
        sumir(pesquisarVoo);
        aparecer(resultadoVoo); 
        sOrigem.innerText = origem.value;
        sDestino.innerText = destino.value;
        sIda.innerText = dataIda.value;
        sVolta.innerText = volta.value;
        sPassageiros.innerText = quantpessoas.value
    }
})

/*PAGINA DE PESQUISA*/
let btnVoltar = document.getElementById("btn")

btnVoltar.addEventListener("click", (e)=>{
    sumir(resultadoVoo);
    aparecer(pesquisarVoo); 
    
})


/*PAGINA EM DESENVOLVIMENTO*/
function iniciaModal(modalID){
    const modal = document.getElementById(modalID);
    modal.classList.add('mostrar');
}

iniciaModal('modal-alert')