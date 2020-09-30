const url = 'http://localhost:3000';


fetch(url + `/entrepreneur/3`)
    .then(response => response.json())
    .then(page => {
        console.log(page);
        let headertext = page.name;
        let h = document.createElement('h1');
        h.appendChild(document.createTextNode(headertext));
        document.querySelector('header').appendChild(h);
        page.content.forEach(item => {
            console.log(item);
            let containertype = document.querySelector(`.${item.type}`);
            containertype.insertAdjacentHTML('beforeend', item.content);
        })

    })





