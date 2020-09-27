/*url address*/ /*same as entrepreneur.js*/
const url = 'http://localhost:3000';

/*fetching venture catalog info from database*/
fetch(url + '/venture')
    .then(response => response.json())
    .then(detail => {
        /*create div element*/
        let div = document.createElement('div');
        div.setAttribute('class', 'grid-item');
        /*create image element*/
        let img = document.createElement('img');
        img.setAttribute('src', `data:image/jpeg;base64, ${_arrayBufferToBase64(detail.recordset[0].Photo.data)}`);
        img.setAttribute('class', 'img1');
        /*create button element*/
        let button = document.createElement('button');
        let text = document.createTextNode(detail.recordset[0].Name);
        button.appendChild(text);
        button.setAttribute('class', 'cliktb');
        div.appendChild(img);
        div.appendChild(button);
        /*add item to html container*/
        document.querySelector('.img-catalog').appendChild(div);
    })

/*convert datatype to base 64 string for pictures*/
function _arrayBufferToBase64(buffer) {
    var binary = '';
    var bytes = new Uint8Array(buffer);
    var len = bytes.byteLength;
    for (var i = 0; i < len; i++) {
        binary += String.fromCharCode(bytes[i]);
    }
    return window.btoa(binary);
}