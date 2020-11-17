var content = document.querySelector('.navbar');
var sidebarBody = document.querySelector('#hamburger-sidebar-body');
var button = document.querySelector('#hamburger-button');
var overlay = document.querySelector('#hamburger-overlay');
var closed = document.querySelector('#hamburger-button-closed');
var activatedClass = 'hamburger-activated';
var hamburger = document.querySelector('#hamburger');



button.addEventListener('click', function(e) {
  e.preventDefault();

  this.parentNode.classList.add(activatedClass);
});

button.addEventListener('keydown', function(e) {
  if (this.parentNode.classList.contains(activatedClass)) 
  {
    if (e.repeat === false && e.which === 27)
      this.parentNode.classList.remove(activatedClass);
  }
});

closed.addEventListener('click', function(e) {
  e.preventDefault();

  hamburger.classList.remove(activatedClass);
});