const url = 'http://localhost:3000';
/*
let dragged; // Keeps track of what's being dragged - we'll use this later! 

function onDragStart(event) {
  let target = event.target;
  dragged = target;
  event.dataTransfer.setData('text', target.id);
  event.dataTransfer.dropEffect = 'move';
  // Make it half transparent when it's being dragged
  event.target.style.opacity = .3;
}

function onDragEnd(event) {
  if (event.target) {
    // Reset the transparency
    event.target.style.opacity = ''; // Reset opacity when dragging ends 
    dragged = null;
  }
}

// Adding event listeners
const todos = document.querySelector('#todo');
todos.addEventListener('dragstart', onDragStart);
todos.addEventListener('dragend', onDragEnd);

function onDragOver(event) {
  // Prevent default to allow drop
  event.preventDefault();
}

function onDragLeave(event) {
  event.target.style.background = '';
}

function onDragEnter(event) {
  const target = event.target;
  if (target) {
    event.preventDefault();
    // Set the dropEffect to move
    event.dataTransfer.dropEffect = 'move'
    target.style.background = '#1f904e';
  }
}

function onDrop(event) {
  const target = event.target;
  if (target) {
    target.style.backgroundColor = '';
    event.preventDefault();
    // Get the id of the target and add the moved element to the target's DOM
    dragged.parentNode.removeChild(dragged);
    dragged.style.opacity = '';
    target.appendChild(dragged);
  }
}

const dropZone = document.querySelector('.drop-zone');
dropZone.addEventListener('drop', onDrop);
dropZone.addEventListener('dragenter', onDragEnter);
dropZone.addEventListener('dragleave', onDragLeave);
dropZone.addEventListener('dragover', onDragOver);
*/

/*populate entrepreneur list*/
fetch('https://jsonplaceholder.typicode.com/users')
  .then(response => response.json())
  .then(users => {
    for (u of users) {
      let select = document.querySelector('.entrepreneur');
      let option = document.createElement('option');
      let text = document.createTextNode(`${u.name}`);
      option.appendChild(text);
      option.setAttribute('value', `${u.id}`);
      select.appendChild(option);
    }
  })




