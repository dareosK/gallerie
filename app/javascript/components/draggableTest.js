// // THIS IS JUST TEST CODE, PLEASE DO NOT REMOVE //

// /*Make resizable div by Hung Nguyen*/
// function makeResizableDiv(div) {
//   const element = document.querySelector(div);  // selects div
//   const resizers = document.querySelectorAll(div + ' .resizer') // (select the gray icon instead)
//   const minimum_size = 20; // set minimum size
//   let original_width = 0;  // default assignment
//   let original_height = 0;
//   let original_x = 0;
//   let original_y = 0;
//   let original_mouse_x = 0;
//   let original_mouse_y = 0;
//   for (let i = 0;i < resizers.length; i++) {  // loop => forEach. iterates over each resizer ()
//     const currentResizer = resizers[i];
//     currentResizer.addEventListener('mousedown', function(e) { // when mousedown, call this function
//       e.preventDefault() // this till line 23
//       original_width = parseFloat(getComputedStyle(element, null).getPropertyValue('width').replace('px', ''));  // set original width
//       original_height = parseFloat(getComputedStyle(element, null).getPropertyValue('height').replace('px', '')); // set original height
//       original_x = element.getBoundingClientRect().left; // set original x
//       original_y = element.getBoundingClientRect().top; // set original y
//       original_mouse_x = e.pageX; // set original mouseclick X
//       original_mouse_y = e.pageY; // set original mouse click Y
//       window.addEventListener('mousemove', resize)  // fire the eventListener when the mouse moves
//       window.addEventListener('mouseup', stopResize) // till here
//     })

//     function resize(e) {
//       if (currentResizer.classList.contains('bottom-right')) {
//         const width = original_width + (e.pageX - original_mouse_x);
//         const height = original_height + (e.pageY - original_mouse_y)
//         if (width > minimum_size) {
//           element.style.width = width + 'px'
//         }
//         if (height > minimum_size) {
//           element.style.height = height + 'px'
//         }
//       }
//       else if (currentResizer.classList.contains('bottom-left')) {
//         const height = original_height + (e.pageY - original_mouse_y)
//         const width = original_width - (e.pageX - original_mouse_x)
//         if (height > minimum_size) {
//           element.style.height = height + 'px'
//         }
//         if (width > minimum_size) {
//           element.style.width = width + 'px'
//           element.style.left = original_x + (e.pageX - original_mouse_x) + 'px'
//         }
//       }
//       else if (currentResizer.classList.contains('top-right')) {
//         const width = original_width + (e.pageX - original_mouse_x)
//         const height = original_height - (e.pageY - original_mouse_y)
//         if (width > minimum_size) {
//           element.style.width = width + 'px'
//         }
//         if (height > minimum_size) {
//           element.style.height = height + 'px'
//           element.style.top = original_y + (e.pageY - original_mouse_y) + 'px'
//         }
//       }
//       else {
//         const width = original_width - (e.pageX - original_mouse_x)
//         const height = original_height - (e.pageY - original_mouse_y)
//         if (width > minimum_size) {
//           element.style.width = width + 'px'
//           element.style.left = original_x + (e.pageX - original_mouse_x) + 'px'
//         }
//         if (height > minimum_size) {
//           element.style.height = height + 'px'
//           element.style.top = original_y + (e.pageY - original_mouse_y) + 'px'
//         }
//       }
//     }

//     function stopResize() {
//       window.removeEventListener('mousemove', resize)
//     }
//   }
// }

// makeResizableDiv('.resizable')
