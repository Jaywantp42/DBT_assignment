function mouseover() {
    let innerele = document.querySelector("div").children[0];

    innerele.style.background="green";
    innerele.style.color="yellow";
    innerele.innerHTML="Subway";
}

function mouseout() {
    let innerele = document.querySelector("div").children[0];

    innerele.style.background="red";
    innerele.style.color="white";
    innerele.innerHTML="KFC";
}