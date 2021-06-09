// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// External imports
import "bootstrap"
window.$ = $;

import { initChatroomCable } from '../channels/chatroom_channel';

document.addEventListener('turbolinks:load', () => {
  initChatroomCable();

  const toggleBtn = document.querySelector('.hamburger');
  const menu = document.querySelector('.navigation__menu');
  let aria = false
  toggleBtn.addEventListener("click", ( ) => {
    toggleBtn.classList.toggle('is-active');
    toggleBtn.setAttribute('aria-expanded', !aria);
    aria = !aria
    menu.classList.toggle('is-active');
  });
});


