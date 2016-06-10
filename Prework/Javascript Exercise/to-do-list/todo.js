
window.onload = function() {

// the following code adds event listeners to the buttons
// you'll learn more about this later
// for this exercise, you are going to write the functions for
// what happens when the user clicks on the buttons.
  var saveButton = document.getElementById('save-button');
  saveButton.addEventListener('click', addToDoItem, false);

  var doneButton = document.getElementById('done-button');
  doneButton.addEventListener('click', markAsDone, false);


  function addToDoItem() {
    // add your code here
    // this should create a new list item in the to-do list
    // and set the text as the input from the todo-input field
var list = document.createElement('li');
var listloc = document.querySelector('.todo-list-items')
listloc.appendChild(list);
var content = document.querySelector('#todo-input');
textcontent = content.value;
list.textContent = textcontent;
  }

  function markAsDone() {
    doneButton.classList.add('liked');
    doneButton.innerHTML = "Liked!";
    document.querySelector('h1').style.color = "red";

    var newloc = document.querySelector('.done');
    var listloc = document.querySelector('.todo-list-items');
    newlist = listloc.querySelector('li')
    newlist.classList.add('done');
    newloc.parentNode.insertBefore(newlist,newloc);
  }
  
}
