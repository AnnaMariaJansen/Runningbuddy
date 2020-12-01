// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import "mapbox-gl/dist/mapbox-gl.css";

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

import { initChatroomCable } from '../channels/chatroom_channel';

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initAutocomplete } from '../plugins/init_autocomplete';

document.addEventListener('turbolinks:load', () => {
  initAutocomplete();
  initChatroomCable();

  // Call your functions here, e.g:
  // initSelect2();
});

import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
});




let chatCard = document.querySelector(".cardlink");
 //will have to be changes when deployed
chatCard.addEventListener("click", (event) => {
  console.log(chatCard.dataset.chatroom);
  console.log(chatCard.dataset.user);
  fetch("http://localhost:3000/messagereadcheck", {
    method: "PATCH",
    body: JSON.stringify({ chatroom_id: chatCard.dataset.chatroom, user_id: chatCard.dataset.user })
  });
  // read: false => true
  // take all messeges from chatroom
  // mark them as read => call update
  // fetch
});
// => once read status can be updated
const messageDot = document.querySelector(".message-dot");



// check for unread messages

// toggle hidden-dot class on message dot







