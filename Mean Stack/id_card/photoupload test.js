function submitphoto(){
    let image = document.querySelector('#file').files[0].name;

    let refimage = document.querySelector('#reference');
    //refimage.style.visibility = "visible";
    refimage.children[0].src = image;
    let parent = document.querySelector('#parent');
    parent.insertBefore(refimage,parent.firstChild);
    document.querySelector('#file').files[0]= "";
}
