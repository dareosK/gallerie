import $ from 'jquery';
import Flickity from 'flickity';

const initFlickity = () => {
  var elem = document.querySelector('.flick-carousel');
  var flkty = new Flickity( elem, {
    // options
    cellAlign: 'left',
    contain: true,
    freeScroll: true,
    autoPlay: true,
    draggable: true,
  });
}

export { initFlickity }
