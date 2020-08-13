function mouseover() {
    var mouseoverelement = document.querySelector('#test');
    mouseoverelement.style.background = 'lightpink';
    mouseoverelement.style.color = 'chocolate';
    mouseoverelement.innerHTML='Jai Shree Ram';
}

function mouseout()
{
    var mouseoutelement = document.querySelector('#test');
    mouseoutelement.style.background = 'tomato';
    mouseoutelement.style.color = 'white';
    mouseoutelement.innerHTML= ' Ab Mandir Banega';
}