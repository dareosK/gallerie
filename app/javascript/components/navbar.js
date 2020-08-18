const initUpdateNavbarOnScroll = () => {
  // turns navbar from transparent to white when scroll under one window height
  const navbar = document.querySelector('.navbar-lewagon-homepage');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
