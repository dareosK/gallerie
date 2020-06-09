// =====resizeable.js===== //
const resizeIcons = document.querySelectorAll(".resize-icon"); // selects the right element(make ->elementss)

let initWidth;
let initX;
let resizeableArtwork;

const start = (event) => {
  event.preventDefault();
  console.log(event.currentTarget);
  resizeableArtwork = event.currentTarget.parentElement.parentElement.querySelector("img");
  initWidth = resizeableArtwork.width;
  initX = event.clientX;
  window.addEventListener("mousemove", resize);
}

const resize =(event) => {
  event.preventDefault();
  resizeableArtwork.style.width = `${initWidth + event.clientX - initX}px`;
  console.log(resizeableArtwork.style.width)
}

const stop = (event) => {
  window.removeEventListener("mousemove", resize);
  // savePosition(event.clientX, event.clientY, draggableArtwork) // add function
}

const initResizeable = () => {
  resizeIcons.forEach((icon) => {
    icon.addEventListener("mousedown", start)
    icon.addEventListener("mouseup", stop)
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

