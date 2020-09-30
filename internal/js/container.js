
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
    if (document.querySelector('.preview').hasChildNodes()) {
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

function addCheckbox(){
    if(document.querySelector('input[name=needRadio]').value === 'yes'){
        let checkbox = '<div class="completed"><Label>Complete</label><br><input type="checkbox" name="completeTask" value="completed"></div>';
        let container = document.querySelector('.preview div h6');
        container.insertAdjacentHTML('afterend', checkbox);
    }
}
/*adding step type to container*/
document.querySelectorAll('input[name=step]').forEach((item) => {
    item.addEventListener('change', addStepType)
});

function addStepType() {
    //if already step type added remove
    if (document.querySelector('.preview div h6') != null) {
        document.querySelector('.preview div').removeChild(document.querySelector('.preview div').childNodes[0]);
    }
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
/*on container 2 type question add input fields*/
document.querySelector('.questiontype').addEventListener('change', cont2InputData);

function cont2InputData() {
    let choice = document.querySelector('.questiontype').value;
    if (choice === "radio" || choice === 'checkbox' || choice === 'dropdown' || choice === 'rankOrder') {
        let numOfChoices = '<label>How many answers do you require?</label><input type="text" class="numOfChoices">';
        document.getElementById('additionalInfo').insertAdjacentHTML('beforeend', numOfChoices);
        document.querySelector('.numOfChoices').addEventListener('keypress', addInputAfterKeypress);
    }
    if (choice === 'linearScale') {
        let numOfChoices = '<label>What is end scale amount?</label><input type="text" class="numOfChoices">';
        document.getElementById('additionalInfo').insertAdjacentHTML('beforeend', numOfChoices);
    }
}
function addInputAfterKeypress(event) {
    if (document.querySelector('.numOfChoices').value.length > 0 && event.keyCode === 13)
        addInputs();
}

function addInputs() {
    let numInputs = document.querySelector('.numOfChoices').value;
    let inputs = '';
    for (let i = 0; i < numInputs; i++) {
        inputs += `<br><label>Choice ${i + 1}</label><input type="text" class="choice${i + 1}"><br>`;
    }
    document.getElementById('additionalInfo').insertAdjacentHTML('beforeend', inputs);
}
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
        let numOfChoices = document.querySelector('.numOfChoices').value;
        for (let i = 0; i < numOfChoices; i++) {
            let div = document.createElement('div');
            let input = document.createElement('input')
            input.setAttribute('type', 'radio');
            input.setAttribute('name', 'question')
            let text = document.querySelector(`.choice${i + 1}`).value;
            input.setAttribute('value', text);
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
        let numOfChoices = document.querySelector('.numOfChoices').value;
        for (let i = 0; i < numOfChoices; i++) {
            let div = document.createElement('div');
            let input = document.createElement('input')
            input.setAttribute('type', 'checkbox');
            let text = document.querySelector(`.choice${i + 1}`).value;
            input.setAttribute('value', text);
            let radlabel = document.createElement('label');
            let text2 = document.createTextNode(text);
            radlabel.appendChild(text2);
            div.appendChild(input);
            div.insertBefore(radlabel, null);
            element.appendChild(div);
        }
    } else if (type === 'dropdown') {
        element = document.createElement('select');
        let numOfChoices = document.querySelector('.numOfChoices').value;
        for (let i = 0; i < numOfChoices; i++) {
            let option = document.createElement('option')
            let text = document.querySelector(`.choice${i + 1}`).value;
            option.setAttribute('value', text);
            let text2 = document.createTextNode(text);
            option.appendChild(text2);
            element.appendChild(option);
        }
    } else if (type === 'linearScale') {
        element = document.createElement('div');
        let numOfChoices = document.querySelector('.numOfChoices').value;
        for (let i = 0; i < numOfChoices; i++) {
            let input = document.createElement('input')
            input.setAttribute('type', 'radio');
            input.setAttribute('name', 'question')
            input.setAttribute('value', (i + 1));
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
        let numOfChoices = document.querySelector('.numOfChoices').value;
        for (let i = 0; i < numOfChoices; i++) {
            let div = document.createElement('div');
            div.setAttribute('class', 'rank')
            let text = document.querySelector(`.choice${i + 1}`).value;
            let text2 = document.createTextNode(text);
            let label = document.createElement('label');
            label.appendChild(text2);
            input.setAttribute('value', text);
            div.appendChild(label);
            let select = document.createElement('select')
            for (let j = 0; j < numOfChoices; j++) {
                let option = document.createElement('option')
                option.appendChild(document.createTextNode(`${j + 1}`));
                option.setAttribute('value', (j + 1));
                select.appendChild(option);
            }
            div.appendChild(select);
            element.appendChild(div);
        }
    }
    let button = '</br><button class="type2Submit">Submit</button>';
    div.appendChild(element);
    div.insertAdjacentHTML('beforeend', button);
    addCheckbox();
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
    addCheckbox();
    document.querySelector('.preview div').classList.add('move');
    document.querySelector('.preview div').appendChild(div);
}


/*container 4 listener*/
document.querySelector('#type4 .previewContainer').addEventListener('click', container4type);

/*build container 4 type*/
function container4type(){
    let name = document.querySelector('#type4name').value;
    let position = document.querySelector('#type4position').value;
    let employer = document.querySelector('#type4employer').value;
    let attributes = document.querySelector('#type4attributes').value;
    let summary = document.querySelector('#type4summary').value;
    let div = document.createElement('div');
    div.setAttribute('class', 'newCont');
    /*create main content*/
    let element = `<div class="type4"><div class="type4photo"><img><a href=# >Zoom Link</a></div><div class="type4details"><h4>${name}, <b>${position} - ${employer}</b></h4><p><b>${attributes}</b></p><p>${summary}</p><textarea class="type4text" rows="4" cols="50"></textarea></div>`;
    div.insertAdjacentHTML('beforeend', element);    
    addCheckbox();
    document.querySelector('.preview div').classList.add('move');
    document.querySelector('.preview div').appendChild(div);
    let image = document.querySelector('.preview .type4photo img');
    console.log(image);
    let file = document.querySelector('#type4photo').files[0];
	image.src = URL.createObjectURL(file);
}

/*add container to entrepreneur*/
document.querySelectorAll('.add').forEach(item => {
    item.addEventListener('click', addContainertoQueue);
});

function addContainertoQueue() {
    let container = document.querySelector('.move');
    let type = document.querySelector('.containertype').value;
    let queue = document.querySelector(`#entrepreneur .${type}`);
    let queueid;
    /*need to add id for queue container items to track*/
    fetch(url + '/internal/queueid')
        .then(response => response.json())
        .then(id => {
            queueid = id;
            let div = document.createElement('div');
            div.setAttribute('class', 'queueFlex');
            div.appendChild(container);
            let p = `<input type="checkbox" name="status" class="queueFlex-check" value="${queueid}"><label>queue</label>`;
            div.insertAdjacentHTML('beforeend', p);
            queue.insertAdjacentElement('beforeEnd', div);
            queue.querySelector('.move').classList.add(`container${type}`);
            queue.querySelector('.move').classList.add(`cont${queueid}`);
            queue.querySelector('.move').classList.remove('move');

            let s = new XMLSerializer();
            let contstring = s.serializeToString(queue.querySelector(`.cont${queueid}`));
            let cont = {
                contid: queueid,
                type: type,
                status: 'queue',
                content: contstring
            };
            /*add container to database queue*/
            fetch(url + '/internal/addContainer', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(cont)
            })
                .then(response => response.json())
                .then(msg => {
                    console.log(msg);

                    /*reset container values*/
                    document.querySelector('.containertype').value = '';
                    document.querySelectorAll('input[name=colorChoice]:checked').forEach(item => {
                        item.checked = false;

                        document.querySelector('input[name=step]:checked').checked = false;
                    });
                    /*reset form values*/
                    if (type === 'type2') {
                        document.getElementById('question').value = '';
                        document.getElementById('link').value = '';
                        document.querySelector('.questiontype').value = '';
                        document.getElementById('additionalInfo').innerHTML = '';
                    }
                    if (type === 'type3') {
                        document.getElementById('type3message').value = '';
                        document.getElementById('type3link').value = '';
                    }
                    let containers = document.querySelectorAll('.todo-item');
                    for (let item of containers) {
                        item.classList.add('hidden');
                    }
                });
        });
}


/*Add containers to current page*/
document.querySelector('.addCurrent').addEventListener('click', addtoCurrentPage);

function addtoCurrentPage() {
    let checked = document.querySelectorAll('input[name=status]:checked');
    let contID = [];
    for (item of checked) {
        contID.push(item.value);
    }
    /*update status of checked items to make them active and return active items*/
    fetch(url + '/internal/statusCurrentPage', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(contID)
    })
        .then(response => response.json())
        .then(containers => {
            let activeCont = containers.filter(cont => {
                return cont.status === 'active'
            });
            activeCont.forEach(cont => {
                let type = document.querySelector(`#curPage .${cont.type}`);
                type.insertAdjacentHTML('beforeend', cont.content);
            })
            let queueCont = containers.filter(cont => {
                return cont.status === 'queue'
            });
            queueCont.forEach(cont => {
                /*reset queue*/
                for (let i = 0; i < 7; i++) {
                    let queue = document.querySelector(`#entrepreneur .type${i+1}`);
                    queue.innerHTML ='';  
                }
                let queue = document.querySelector(`#entrepreneur .${cont.type}`);
                let div = document.createElement('div');
                div.setAttribute('class', 'queueFlex');
                div.insertAdjacentHTML('beforeend', cont.content);
                let p = `<input type="checkbox" name="status" class="queueFlex-check" value="${cont.id}"><label>queue</label>`;
                div.insertAdjacentHTML('beforeend', p);
                queue.insertAdjacentElement('beforeEnd', div);
            })

        })

}







