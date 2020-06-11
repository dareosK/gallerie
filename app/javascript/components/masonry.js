import Masonry from 'masonry-layout';
import imagesLoaded from 'imagesloaded';

const initMasonry = () => {
  var elem = document.querySelector('.masonry-grid');
  if (elem) {
    var msnry = new Masonry(elem, {
      // options
      itemSelector: '.masonry-grid-item',
      /* gutter: 10 */
    });
    imagesLoaded(elem).on('progress', function () {
      // layout Masonry after each image loads
      msnry.layout();
    });
  }

}



export { initMasonry };