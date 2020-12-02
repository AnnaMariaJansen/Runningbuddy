
const unreadCounter = () => {
  const messageDot = document.querySelector(".message-dot")

  let unreadMessagesnumber = document.getElementById("unread").innerText
  parseInt(unreadMessagesnumber, 10)
  console.log(unreadMessagesnumber);

  if (unreadMessagesnumber > 0) {
    messageDot.classList.remove("hidden");
  } else {
    messageDot.classList.add("hidden");
  };
};
// const unreadChat = () => {
//   const messageDot = document.querySelector(".message-dot")

//   let unreadMessagesnumber = document.getElementById("unread").innerText
//   parseInt(unreadMessagesnumber, 10)
//   console.log(unreadMessagesnumber);

//   if (unreadMessagesnumber > 0) {
//     messageDot.classList.remove("hidden");
//   } else {
//     messageDot.classList.add("hidden");
//   };
// }


export { unreadCounter }
