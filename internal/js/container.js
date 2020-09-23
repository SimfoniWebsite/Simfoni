
/*event listener to container select*/
document.querySelector('.containertype').addEventListener('change', addcontainer)

function addcontainer() {
    let type = document.querySelector('.containertype').value;
    let containers = document.querySelectorAll('.todo-item');
    for (let item of containers) {
        item.classList.add('hidden');
    }
    document.getElementById(`${type}`).classList.remove('hidden');
}

/*Container 2 function*/
document.querySelector('.questiontype').addEventListener('change', container2type);

function container2type() {
    let type = document.querySelector('.questiontype').value;
    let question = document.createTextNode(document.getElementById('question').value);
    let label = document.createElement('label');
    label.appendChild(question);
    label.appendChild(document.createElement('br'));
    let element = '';
    let link = document.getElementById('link').value;
    if (link != '') {
        let a = document.createElement('a');
        a.appendChild(document.createTextNode(link));
        a.setAttribute('href', link);
        a.appendChild(document.createElement('br'));
        label.appendChild(a);
    }
    if (type === 'input_text') {
        element = document.createElement('input');
        element.setAttribute('type', 'text');
    } else if (type === 'textarea') {
        element = document.createElement('textarea');
    } else if (type === 'radio') {

    }
    label.appendChild(element);
    document.querySelector('.preview').appendChild(label);
}
/*
fetch(url + `/container/${type}`)
    .then(response => response.json())
    .then(container => {
        */