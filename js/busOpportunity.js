/*fetching fake action items and populating to website*/
fetch('https://jsonplaceholder.typicode.com/todos?userId=1')
    .then(response => response.json())
    .then(actionItems => {
        for (let item of actionItems) {
            let li = document.createElement('li');
            let text = document.createTextNode(item.title);
            li.appendChild(text);
            document.querySelector('.actionItems').appendChild(li);
        }
    })

/*Generate details of opportunity*/
fetch('https://jsonplaceholder.typicode.com/comments/1')
    .then(response => response.json())
    .then(detail => {
        let p = document.createElement('p');
        let text = document.createTextNode(detail.body);
        p.appendChild(text);
        document.querySelector('.details').appendChild(p);

    })


    /*Create embeded video on page*/

    <iframe width="560" height="315" src="https://www.youtube.com/embed/5polY4u0sRU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

