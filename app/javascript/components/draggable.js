// =====draggable.js ===== //
const allArtworks = document.querySelectorAll(".artwork img");
const indexArtworks = document.querySelectorAll(".index-artworks img");

let initY;
let initX;
let draggableArtwork;

// 2.
const startDrag = (event) => {
  // pick which of the allArtworks you want to drag
  draggableArtwork = event.currentTarget.parentElement;
  // set their initial X and Y attributes
  initX = event.clientX - draggableArtwork.offsetLeft;
  initY = event.clientY - draggableArtwork.offsetTop;
  window.addEventListener("mousemove" , drag); // when the mousemoves call drag (3.)
}

// 3.
const drag = (event) => {
  // The position of the artworks on the panel are defined
  // with an inline css style on the div that contains them. Change the inline css style
  // to change the position!
  event.preventDefault(); // tested this and makes the drag function smoother. Not sure what default behaviour it stopped though.
  draggableArtwork.style.top = `${event.clientY - initY}px`;
  draggableArtwork.style.left = `${event.clientX - initX}px`;
};

// 4.
const stopDrag = (event) => {
  event.preventDefault();
  // also makes the functionality smoother. Also not sure why.
  window.removeEventListener("mousemove", drag);
  savePosition(event.clientX, event.clientY, draggableArtwork);
  // Once the dragging is done, call savePosition() in order to save
  // the position inside the DB.
};

// 5.
const savePosition = ( x, y, draggableArtwork) => {
  // select the Hidden Form (find it in the show.html.erb) through which it reassigns values in the DB.
  const coordinateForm = draggableArtwork.querySelector(".coordinate-form");
  // change the X and Y
  coordinateForm.querySelector(".coordinate-form-x").value = draggableArtwork.style.left.replace("px", "");
  coordinateForm.querySelector(".coordinate-form-y").value = draggableArtwork.style.top.replace("px", "");
  // then click submit, and change the values in the DB.
  coordinateForm.querySelector(".coordinate-form-submit").click();
};

// 1.
const initDraggable = () => {
  if (allArtworks) { // we only want this to fire if there are allArtworks
   allArtworks.forEach((artwork) => {
    artwork.addEventListener("mousedown", startDrag) // start dragging (2.) when you mousedown
    // if (draggableArtwork) {
      artwork.addEventListener("click", stopDrag) // stop dragging (4.) when you click
    // };

  })

  //  Make functionality  -> drag and drop the index artworks on the panel
  // indexArtworks.forEach((artwork) => {
  //   artwork.addEventListener("mousedown", startDrag)
  //   // if (draggableArtwork) {
  //   artwork.addEventListener("click", stopDrag)
  //   // };

  // })
  }
};

export { initDraggable }
