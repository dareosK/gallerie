// =====resizeable.js===== //

const resizeIcons = document.querySelectorAll(".resize-icon");
// selects all grey resize icons on the images (-> turn into vector later)

let initWidth; // so you can manipulate the final width of the Artwork (see below)
let initX; // same for the final X position on the Panel
let resizableArtwork;

// 2.
const startResize = (event) => {
  event.preventDefault(); // prevents default behaviours
  resizableArtwork = event.currentTarget.parentElement.parentElement.querySelector("img");
  // The artwork is wrapped in many divs, that's why all the parentElements.
  // Assign the width to the width of the artwork.
  initWidth = resizableArtwork.width;
  // Assign the initial X position of the Artwork on the Panel.
  initX = event.clientX;
  window.addEventListener("mousemove", resize); // once you move the mouse, call resize (.3)
}

// 3.
const resize = (event) => {
  event.preventDefault();
  // change the final width of the Artwork.
  resizableArtwork.style.width = `${initWidth + event.clientX - initX}px`;
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
