function mouseover() {
    let id2element = document.querySelector(".inner");
    id2element.style.background="green";
    id2element.style.color="tomato";
    id2element.innerHTML="Thackerey";
}

function mouseout() {
    let id2element = document.querySelector(".mouseout");
    id2element.style.background="yellow";
    id2element.style.color="pink";
    id2element.innerHTML="Fadnvis disapper";
}