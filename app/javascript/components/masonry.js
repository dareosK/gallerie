import Masonry from 'masonry-layout';
import imagesLoaded from 'imagesloaded';

const initMasonry = () => {
  var elem = document.querySelector('.grid');
  var msnry = new Masonry(elem, {
    // options
    itemSelector: '.grid-item',
    columnWidth: 200
  });
    imagesLoaded(grid).on('progress', function () {
    // layout Masonry after each image loads
    msnry.layout();
  });
}



export { initMasonry };