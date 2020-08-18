// =====resizeable.js===== //
// import { savePosition } from "../draggable";
const resizeIcons = document.querySelectorAll(".resize-icon");
// selects all grey resize icons on the images (-> turn into vector later)

let initWidth; // so you can manipulate the final width of the artwork (see below)
let initX; // same for the final X position on the Panel
let resizableArtwork;

// 2.
const startResize = (event) => {
  event.preventDefault(); // prevents default JS behaviours, so that we can create ours.
  resizableArtwork = event.currentTarget.parentElement.parentElement.querySelector("img");
  // the artwork is wrapped in many divs, that's why all the parentElements.
  initWidth = resizableArtwork.width; // assign the width.
  initX = event.clientX; // assign the initial X position on the Panel.
  window.addEventListener("mousemove", resize); // once you move the mouse, call resize (.3)
}

// 3.
const resize = (event) => {
  event.preventDefault(); // prevents default JS behaviours.
  resizableArtwork.style.width = `${initWidth + event.clientX - initX}px`;
  // changes the final width of the Artwork.
}

// 4.
const stopResize = (event) => {
  event.preventDefault();
  window.removeEventListener("mousemove", resize);
  saveWidth();
}

// 5. uses a Hidden Form (check show.html.erb) to save the final width to the DB
const saveWidth = () => {
  const resizableForm = resizableArtwork.parentElement.querySelector(".resizable-form");
  resizableForm.querySelector(".resizable-form-width").value = resizableArtwork.width;
  resizableForm.querySelector(".resizable-form-submit").click();
}

// 1.
const initResizeable = () => {
  if (resizeIcons) { // we only want this to fire if there are any resizeIcons. Otherwise, we will get console errors.
    resizeIcons.forEach((icon) => {
      icon.addEventListener("mousedown", startResize) // start resizing when mousedown (2.)
      icon.addEventListener("mouseup", stopResize) // stop resizing when mouseup (.4)
     })
  }
}


export { initResizeable }
