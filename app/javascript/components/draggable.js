// =====draggable.js===== //
const allArtworks = document.querySelectorAll(".artwork img");
const indexArtworks = document.querySelectorAll(".index-artworks img");

let initY;
let initX;
let draggableArtwork;


const startDrag = (event) => {
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

const stopDrag = (event) => {
  event.preventDefault();
  window.removeEventListener("mousemove", drag);
  savePosition(event.clientX, event.clientY, draggableArtwork); // add function
}

const savePosition = ( x, y, draggableArtwork) => {
  console.log(x);
  console.log(y);
  const coordinateForm = draggableArtwork.querySelector(".coordinate-form");
  coordinateForm.querySelector(".coordinate-form-x").value = draggableArtwork.style.left.replace("px", "");
  console.log(coordinateForm.querySelector(".coordinate-form-x"));
  coordinateForm.querySelector(".coordinate-form-y").value = draggableArtwork.style.top.replace("px", "");

  // coordinateForm.submit();
  coordinateForm.querySelector(".coordinate-form-submit").click();
}

const initDraggable = () => {
  if (allArtworks && indexArtworks) {
   allArtworks.forEach((artwork) => {
    artwork.addEventListener("mousedown", startDrag)
    // if (draggableArtwork) {
      artwork.addEventListener("click", stopDrag)
    // };

  })
  indexArtworks.forEach((artwork) => {
    artwork.addEventListener("mousedown", startDrag)
    // if (draggableArtwork) {
    artwork.addEventListener("click", stopDrag)
    // };

  })
  }
}

export { initDraggable }
