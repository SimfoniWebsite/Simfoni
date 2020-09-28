const url = 'http://localhost:3000';


fetch(url + `/entrepreneur/3`)
.then(response => response.json())
.then(page =>{
    let headertext = page[0].id;
    let h = document.createElement('h1');
    h.appendChild(document.createTextNode(headertext));
    document.querySelector('header').appendChild(h);
    for (let i = 1; i <= 7; i++) {
        let type = 'type' + i;
        page[0][type].forEach(item=>{
            //let doc = domparser.parseFromString(item, 'text/html');
            console.log(item);
            let containertype = document.querySelector(`.${type}`);
            containertype.insertAdjacentHTML('beforeend', item);
        })
    }
})


        

   
