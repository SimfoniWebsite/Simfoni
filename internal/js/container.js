
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
/*adding color choices to container*/
document.querySelector('.colorChoice').addEventListener('change', addColorChoice);

function addColorChoice() {
    if(document.querySelector('.preview').hasChildNodes()){
        document.querySelector('.preview').removeChild(document.querySelector('.preview').childNodes[0]);
    }
    let colors = document.getElementsByName('colorChoice');
    let colorChoice = [];
    for (let item of colors) {
        if (item.checked) {
            colorChoice.push(item.id);
        }
    }
    if (colorChoice.length === 1) {
        let div = document.createElement('div');
        div.setAttribute('class', colorChoice[0]);
        document.querySelector('.preview').appendChild(div);
    }
}
/*adding step type to container*/
document.querySelectorAll('input[name=step]').forEach((item) => {
    item.addEventListener('change', addStepType)
});

function addStepType() {
    let step = document.querySelector('input[name=step]:checked').value;
    let h6 = document.createElement('h6');
    h6.setAttribute('class', 'stepH6');
    h6.appendChild(document.createTextNode(jsUcfirst(step)));
    document.querySelector('.preview div').appendChild(h6);
}
/*create capital first letter*/
function jsUcfirst(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}
/*Container 2 function*/

document.querySelector('#type2 .previewContainer').addEventListener('click', container2type);


/*container 2 creation*/
function container2type() {
    let type = document.querySelector('.questiontype').value;
    let question = document.createTextNode(document.getElementById('question').value);
    let div = document.createElement('div');
    div.setAttribute('class', 'newCont');
    let label = document.createElement('label');
    label.appendChild(question);
    label.appendChild(document.createElement('br'));
    div.appendChild(label);
    let element = '';
    let link = document.getElementById('link').value;
    /*if provide link attached to container*/
    if (link != '') {
        let a = document.createElement('a');
        a.appendChild(document.createTextNode(link));
        a.setAttribute('href', link);
        a.appendChild(document.createElement('br'));
        label.appendChild(a);
    }
    /*create element based on selected type*/
    if (type === 'input_text') {
        element = document.createElement('input');
        element.setAttribute('type', 'text');
    } else if (type === 'textarea') {
        element = document.createElement('textarea');
    } else if (type === 'radio') {
        element = document.createElement('div');
        element.setAttribute('class', 'multiAnswer');
        let numOfChoices = prompt('How many answers do you require?');
        for (let i = 0; i < numOfChoices; i++) {
            let div = document.createElement('div');
            let input = document.createElement('input')
            input.setAttribute('type', 'radio');
            input.setAttribute('name', 'question')
            let text = prompt(`Enter ${i + 1} choice`);
            let radlabel = document.createElement('label');
            let text2 = document.createTextNode(text);
            radlabel.appendChild(text2);
            div.appendChild(input);
            div.insertBefore(radlabel, null);
            element.appendChild(div);
        }
    } else if (type === 'checkbox') {
        element = document.createElement('div');
        element.setAttribute('class', 'multiAnswer');
        let numOfChoices = prompt('How many answers do you require?');
        for (let i = 0; i < numOfChoices; i++) {
            let div = document.createElement('div');
            let input = document.createElement('input')
            input.setAttribute('type', 'checkbox');
            let text = prompt(`Enter ${i + 1} choice`);
            let radlabel = document.createElement('label');
            let text2 = document.createTextNode(text);
            radlabel.appendChild(text2);
            div.appendChild(input);
            div.insertBefore(radlabel, null);
            element.appendChild(div);
        }
    } else if (type === 'dropdown') {
        element = document.createElement('select');
        let numOfChoices = prompt('How many answers do you require?');
        for (let i = 0; i < numOfChoices; i++) {
            let option = document.createElement('option')
            let text = prompt(`Enter ${i + 1} choice`);
            let text2 = document.createTextNode(text);
            option.appendChild(text2);
            element.appendChild(option);
        }
    } else if (type === 'linearScale') {
        element = document.createElement('div');
        let numOfChoices = prompt('What is end scale amount?');
        for (let i = 0; i < numOfChoices; i++) {
            let input = document.createElement('input')
            input.setAttribute('type', 'radio');
            input.setAttribute('name', 'question')
            element.appendChild(input);
            let text = i + 1;
            let radlabel = document.createElement('label');
            let text2 = document.createTextNode(text);
            radlabel.appendChild(text2);
            element.appendChild(radlabel);
        }
    } else if (type === 'fileUpload') {
        element = document.createElement('input');
        element.setAttribute('type', 'file');
    } else if (type === 'rankOrder') {
        element = document.createElement('div');
        element.setAttribute('class', 'multiAnswer');
        let numOfChoices = prompt('How many answers do you require?');
        for (let i = 0; i < numOfChoices; i++) {
            let div = document.createElement('div');
            div.setAttribute('class', 'rank')
            let text = prompt(`Enter ${i + 1} choice`);
            let text2 = document.createTextNode(text);
            let label = document.createElement('label');
            label.appendChild(text2);
            div.appendChild(label);
            let select = document.createElement('select')
            for (let j = 0; j < numOfChoices; j++) {
                let option = document.createElement('option')
                option.appendChild(document.createTextNode(`${j + 1}`));
                select.appendChild(option);
            }
            div.appendChild(select);
            element.appendChild(div);
        }
    }
    div.appendChild(element);
    document.querySelector('.preview div').classList.add('move');
    document.querySelector('.preview div').appendChild(div);
}

/*container 3 listener*/
document.querySelector('#type3 .previewContainer').addEventListener('click', container3type);

function container3type() {
    /*get message from input*/
    let message = document.createTextNode(document.getElementById('type3message').value);
    let div = document.createElement('div');
    div.setAttribute('class', 'newCont');
    let h4 = document.createElement('h4');
    h4.appendChild(message);
    h4.appendChild(document.createElement('br'));
    div.appendChild(h4);
    let element = '';
    let link = document.getElementById('type3link').value;
    /*if provide link attached to container*/
    if (link != '') {
        let a = document.createElement('a');
        a.appendChild(document.createTextNode(link));
        a.setAttribute('href', link);
        a.appendChild(document.createElement('br'));
        h4.appendChild(a);
    }
    element = document.createElement('textarea');
    div.appendChild(element);
    document.querySelector('.preview div').classList.add('move');
    document.querySelector('.preview div').appendChild(div);
}

/*add container to entrepreneur*/
document.querySelectorAll('.add').forEach(item => {
    item.addEventListener('click', addContainertoQueue);
});

function addContainertoQueue() {
    let container = document.querySelector('.move');
    let type = document.querySelector('.containertype').value;
    let queue = document.querySelector(`#entrepreneur .${type}`);
    /*move container to queue*/
    queue.insertAdjacentElement('beforeEnd', container);
    queue.querySelector('.move').classList.add(`container${type}`)
    queue.querySelector('.move').classList.remove('move');
    /*reset container values*/
    document.querySelector('.containertype').value = '';
    document.querySelectorAll('input[name=colorChoice]:checked').forEach(item => {
        item.checked = false;
    });
    document.querySelector('input[name=step]:checked').checked = false;
    /*if container is first in queue for container type move to current page*/
    if (document.querySelectorAll(`#curPage .${type} .newCont`).length === 0) {
        let firstqueue = document.querySelectorAll(`#entrepreneur .${type} div`)[0];
        let curpage = document.querySelector(`#curPage .${type}`);
        curpage.insertAdjacentElement('beforeEnd', firstqueue);
    }
    /*reset form values*/
    if (type === 'type2') {
        document.getElementById('question').value = '';
        document.getElementById('link').value = '';
        document.querySelector('.questiontype').value = '';
    }
    if (type === 'type3') {
        document.getElementById('type3message').value = '';
        document.getElementById('type3link').value='';
    }
    let containers = document.querySelectorAll('.todo-item');
    for (let item of containers) {
        item.classList.add('hidden');
    }
}

/*submit data to database*/
document.querySelector('.submit').addEventListener('click', submitData);

function submitData() {

    /*convert dom elements to text*/
    let s = new XMLSerializer();
    /*retrieve entrepreneur id*/
    let entrepreneur = document.querySelector('.entrepreneur').value;
    let containers = {
        id: '',
        type1: [],
        type2: [],
        type3: [],
        type4: [],
        type5: [],
        type6: [],
        type7: []
    };
    /*convert each container to string and add to object*/
    for (let i = 1; i <= 7; i++) {
        let currentPagetype = document.querySelectorAll(`#curPage .type${i} .containertype${i}`);
        let queue = document.querySelectorAll(`#entrepreneur .type${i} .containertype${i}`);

        let type = 'type' + i;
        if (currentPagetype.length === 0) {
            continue;
        }
        if (queue.length === 0) {
            continue;
        }
        currentPagetype.forEach(item => {
            let string;
            string = s.serializeToString(item);
            containers[type].push(string);
        });
        queue.forEach(item => {
            let string;
            string = s.serializeToString(item);
            containers[type].push(string);
        });
    }
    containers.id = entrepreneur;
    constiners.name = 
    console.log(containers);
    
    fetch(url + `/internal/${containers.id}`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(containers),
    })
        .then(response => response.json());
}
/*
fetch(url + `/container/${type}`)
    .then(response => response.json())
    .then(container => {
      let s = new XMLSerializer();
    let doc = s.serializeToString(queue);
    console.log(doc);
    let domparser = new DOMParser();
    let doc2 = domparser.parseFromString(doc, 'text/html');
    console.log(doc2);
*/