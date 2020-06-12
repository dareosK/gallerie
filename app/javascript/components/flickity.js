import "flickity/dist/flickity.css";
import $ from 'jquery';
import Flickity from 'flickity';

const initFlickity = () => {
  var elem = document.querySelector('.main-carousel');
  var flkty = new Flickity( elem, {
    // options
    cellAlign: 'left',
    contain: true,
    freeScroll: true,
    autoPlay: true,
    draggable: true,
  });
  // element argument can be a selector string
  //   for an individual element
  var flkty = new Flickity( '.main-carousel', {
    // options
  });
}

export { initFlickity }
