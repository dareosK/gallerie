import $ from 'jquery';
import Flickity from 'flickity';
require('flickity-imagesloaded');

const initFlickity = () => {
  var elem = document.querySelector('.flick-carousel');
  if (elem) {
    var flkty = new Flickity( elem, {
      // options
      cellAlign: 'left',
      contain: true,
      freeScroll: true,
      autoPlay: true,
      draggable: true,
      imagesLoaded: true
    });
  }
}

export { initFlickity }
