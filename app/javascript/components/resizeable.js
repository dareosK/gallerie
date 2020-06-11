// =====resizeable.js===== //
// import { savePosition } from "../draggable";
const resizeIcons = document.querySelectorAll(".resize-icon"); // selects the right element(make ->elementss)

let initWidth;
let initX;
let resizableArtwork;

const startResize = (event) => {
  event.preventDefault();
  console.log(event.currentTarget);
  resizableArtwork = event.currentTarget.parentElement.parentElement.querySelector("img");
  initWidth = resizableArtwork.width;
  initX = event.clientX;
  window.addEventListener("mousemove", resize);
}

const resize = (event) => {
  event.preventDefault();
  resizableArtwork.style.width = `${initWidth + event.clientX - initX}px`;
}

const stopResize = (event) => {
  event.preventDefault();
  window.removeEventListener("mousemove", resize);
  saveWidth();
}

const saveWidth = () => {
  console.log(resizableArtwork);
  const resizableForm = resizableArtwork.parentElement.querySelector(".resizable-form");
  console.log(resizableForm);
  resizableForm.querySelector(".resizable-form-width").value = resizableArtwork.width;
  resizableForm.querySelector(".resizable-form-submit").click();
  // savePosition();
}

const initResizeable = () => {
  resizeIcons.forEach((icon) => {
    icon.addEventListener("mousedown", startResize)
    icon.addEventListener("mouseup", stopResize)
   })
}


export { initResizeable }

// ========================================================================= //

// const resizeIcon = document.querySelector(".resize-icon"); // selects the right element(make ->elementss)

// let initWidth;
// let initX;
// let resizeableArtwork; // assigned an Artwork

// const start = (event) => {
//   // event.preventDefault;
//   resizeableArtwork = event.currentTarget.parentElement.parentElement.querySelector("img");
//   initWidth = resizeableArtwork.width// event.clientX - resizeable.offsetLeft;
//   initX = event.clientX;
//   console.log(initWidth);
//   resizeIcon.addEventListener("mousemove" , resize);
// }

// const resize =(event) => {
//   // instead of drag
//   resizeableArtwork.style.width = `${initWidth + event.clientX - initX}px`; // replace 100
// }

// // const drag = (event) => {
// // // console.log(draggableArtwork);
// // draggableArtwork.style.top = `${event.clientY - initY}px`; // change the top CSS attribute of the draggable = [assign it to (where the mouse clicked) - the]
// // draggableArtwork.style.left = `${event.clientX - initX}px`;
// // }

// const stop = (event) => {
//   resizeableArtwork.removeEventListener("mousemove", resize);
//   // savePosition(event.clientX, event.clientY, draggableArtwork) // add function
// }

// const initResizeable = () => {
//   resizeIcon.addEventListener("mousedown", start)
//  // if the click is the gray box -> stop eventListener / resize image
// }


// export { initResizeable }

