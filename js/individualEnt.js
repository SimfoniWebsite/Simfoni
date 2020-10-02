const url = 'http://localhost:3000';


fetch(url + `/entrepreneur/3`)
    .then(response => response.json())
    .then(page => {
        let headertext = page.name;
        let h = document.createElement('h1');
        h.appendChild(document.createTextNode(headertext));
        document.querySelector('header').appendChild(h);
        page.content.forEach(item => {
            let containertype = document.querySelector(`.${item.type}`);
            containertype.insertAdjacentHTML('beforeend', item.content);
        })


        /*submit type 2 answers*/
        document.querySelectorAll('.type2Submit').forEach(item => {
            item.addEventListener('click', submitType2Answer)
        });


        function submitType2Answer(button) {
            let answer = {
                contid: 0,
                question: '',
                answer: '',
            };
            answer.contid = button.value;
            answer.question = document.querySelector(`.cont${answer.contid} .newCont label`).textContent;

            let type = document.querySelector(`.cont${answer.contid} .newCont`).title;
            console.log(type);
            if (type === 'input_text') {
                answer.answer = document.querySelector(`.cont${answer.contid} .newCont input[type=text]`).value;
            } else if (type === 'textarea') {
                answer.answer = document.querySelector(`.cont${answer.contid} .newCont textarea`).value;
            } else if (type === 'radio') {
                answer.answer = document.querySelector(`.cont${answer.contid} .newCont input[type=radio]:checked`).value;
            } else if (type === 'checkbox') {
                let checkbox = document.querySelectorAll(`.cont${answer.contid} .newCont input[type=checkbox]:checked`);
                checkbox.forEach(item => {
                    answer.answer += item.value +', ';
                })
                answer.answer = answer.answer.substring(0, answer.answer.length - 2);;
            } else if (type === 'dropdown') {
                console.log(document.querySelector(`.cont${answer.contid} .newCont select`).value);
                answer.answer = document.querySelector(`.cont${answer.contid} .newCont select`).value;
            } else if (type === 'linearScale') {
                answer.answer = document.querySelector(`.cont${answer.contid} .newCont input[type=radio]:checked`).value;
            } else if (type === 'fileUpload') {

            } else if (type === 'rankOrder') {
                let answers = document.querySelectorAll(`.cont${answer.contid} .newCont .rank`);
                console.log(answers);
                answers.forEach(item => {
                    let children = item.children;
                    console.log(children);
                    for(let i =0; i<children.length; i+=2){
                        answer.answer += children[i].innerText +": ";
                        answer.answer += children[i+1].value + ", ";
                    }
                })
                
            }
            console.log(answer);

        }





        if (document.addEventListener) {
            document.addEventListener("click", handleClick, false);
        }
        else if (document.attachEvent) {
            document.attachEvent("onclick", handleClick);
        }

        function handleClick(event) {
            event = event || window.event;
            event.target = event.target || event.srcElement;

            var element = event.target;

            // Climb up the document tree from the target of the event
            while (element) {
                if (element.nodeName === "BUTTON" && /type2Submit/.test(element.className)) {
                    // The user clicked on a <button> or clicked on an element inside a <button>
                    // with a class name called "foo"
                    submitType2Answer(element);
                    break;
                }

                element = element.parentNode;
            }
        }

    })