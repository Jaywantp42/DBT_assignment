function submit_emp_info() {

    //for insert name
    let empname = document.querySelector('#Name').value;
    let newElement = document.querySelector('#empnm');
    newElement.style.visibility = "visible";
    newElement.children[0].innerHTML=empname;
    let nameid = document.querySelector('#nameid');
    nameid.insertBefore(newElement,nameid.firstChild);
    document.querySelector('#Name').value = "";

    //for insert empid
    let empID = document.querySelector('#ID').value;
    let newElementID = document.querySelector('#empid');
    newElementID.style.visibility = "visible";
    newElementID.children[0].innerHTML = empID;
    let empidid = document.querySelector('#empidid');
    empidid.insertBefore(newElementID,empidid.firstChild);
    document.querySelector('#ID').value = "";

    //insert emp  designation
    let empwork = document.querySelector('#work').value;
    let newElementwork = document.querySelector('#empwork');
    newElementwork.style.visibility = "visible";
    newElementwork.children[0].innerHTML=empwork;
    let empworkmain = document.querySelector('#empworkmain');
    empworkmain.insertBefore(newElementwork,empworkmain.firstChild);
    document.querySelector('#work').value = "";

    //insert emp bloodgroup
    let empblood = document.querySelector('#Bldgrp').value;
    let newElementblood = document.querySelector('#bloodgp');
    newElementblood.style.visibility = "visible";
    newElementblood.children[0].innerHTML=empblood;
    let empbldgp = document.querySelector('#empbldgp');
    empbldgp.insertBefore(newElementblood,empbldgp.firstChild);
    document.querySelector('#Bldgrp').value = "";

    //insert empphn
    let empphnno = document.querySelector('#Phnno').value;
    let newElementphno = document.querySelector('#phno');
    newElementphno.style.visibility = "visible";
    newElementphno.children[0].innerHTML=empphnno;
    let empphno = document.querySelector('#empphno');
    empphno.insertBefore(newElementphno,empphno.firstChild);
    document.querySelector('#Phnno').value = "";

    //insert photo
    let image = document.querySelector('#file').files[0].name;

    let refimage = document.querySelector('#reference');
    //refimage.style.visibility = "visible";
    refimage.children[0].src = image;
    let parent = document.querySelector('#parent');
    parent.insertBefore(refimage,parent.firstChild);
    document.querySelector('#file').files[0]= "";
}