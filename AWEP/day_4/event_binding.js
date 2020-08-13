let counter = 1;

function increment_val() {
    let varcounter = document.querySelector('#counterid');
    counter = counter + 1;
    varcounter.innerHTML = counter;
}

function decrement_val() {
    let varcounter=document.querySelector('#counterid');
    counter = counter -1;
    varcounter.innerHTML = counter;
}