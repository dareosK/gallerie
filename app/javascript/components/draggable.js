// =====draggable.js===== //
const allArtworks = document.querySelectorAll(".artwork img");

let initY;
let initX;
let draggableArtwork;

const start = (event) => {
  draggableArtwork = event.currentTarget.parentElement;
  initX = event.clientX - draggableArtwork.offsetLeft;
  initY = event.clientY - draggableArtwork.offsetTop;
  window.addEventListener("mousemove" , drag);
}

const drag = (event) => {
event.preventDefault;
draggableArtwork.style.top = `${event.clientY - initY}px`;
draggableArtwork.style.left = `${event.clientX - initX}px`;
}

const stop = (event) => {
  event.preventDefault();
  window.removeEventListener("mousemove", drag);
  // savePosition(event.clientX, event.clientY, draggableArtwork) // add function
}

// const savePosition = ( x, y , draggableArtwork) => {
//   // console.log(draggableArtwork);
//   const coordinateForm = draggableArtwork.querySelector(".coordinate-form");
//   // console.log(coordinateForm.querySelector(".coordinate-form-x");
//   coordinateForm.querySelector(".coordinate-form-x").value = x -10;
//   coordinateForm.querySelector(".coordinate-form-y").value = y - 350 + window.scrollY;
//   // coordinateForm.submit();
//   coordinateForm.querySelector(".coordinate-form-submit").click();


const initDraggable = () => {
   allArtworks.forEach((artwork) => {
    artwork.addEventListener("mousedown", start)
    artwork.addEventListener("mouseup", stop)
  })
}

export { initDraggable }



// =============================================================================== //

// DELETE THIS CODE WHEN FUNCTIONALITY ABOVE IS FINALISED AND READY FOR PRODUCTION //

// =============================================================================== //

// const artwork = document.querySelector(".artwork img") // selects the artwork

// let initY;
// let initX;
// let draggableArtwork; // defines variable to be assigned to whatever you click on

// const start = (event) => {
//   event.preventDefault;
//   // console.log(event.path[1].clientWidth)
//   draggableArtwork = event.currentTarget.parentElement; // selects the event's cuurentTarget
//   initX = event.clientX - draggableArtwork.offsetLeft;
//   initY = event.clientY - draggableArtwork.offsetTop;
//   // console.log(initX , initY)
//   artwork.addEventListener("mousemove" , drag);
// }

// const drag = (event) => {
// // console.log(draggableArtwork);
// draggableArtwork.style.top = `${event.clientY - initY}px`; // change the top CSS attribute of the draggable = [assign it to (where the mouse clicked) - the]
// draggableArtwork.style.left = `${event.clientX - initX}px`;
// }

// const stop = (event) => {
//   artwork.removeEventListener("mousemove", drag);
//   // savePosition(event.clientX, event.clientY, draggableArtwork) // add function
// }

// // const savePosition = ( x, y , draggableArtwork) => {
// //   // console.log(draggableArtwork);
// //   const coordinateForm = draggableArtwork.querySelector(".coordinate-form");
// //   // console.log(coordinateForm.querySelector(".coordinate-form-x");
// //   coordinateForm.querySelector(".coordinate-form-x").value = x -10;
// //   coordinateForm.querySelector(".coordinate-form-y").value = y - 350 + window.scrollY;
// //   // coordinateForm.submit();
// //   coordinateForm.querySelector(".coordinate-form-submit").click();


// const initDraggable = () => {
//   // select the element you want to drag (mouseDown)
//   artwork.addEventListener("mousedown", start)
//   // fetch elements' X and Y position (mouseMove)
//   artwork.addEventListener("mouseup", stop)
//   // reassign them to the panel's relative X, Y position (mouseUp)
// }

// export { initDraggable }
