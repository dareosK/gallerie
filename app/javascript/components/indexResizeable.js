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
