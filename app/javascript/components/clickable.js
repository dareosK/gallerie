const clickable = () => {
	const tab1 = document.querySelector("#home-tab");
	const tab2 = document.querySelector("#profile-tab");
  if (tab1 || tab2) {
    tab1.addEventListener("click",(event) => {
      tab2.style.backgroundColor = 'white';
      event.currentTarget.style.backgroundColor = '#F5F6F4';
    });
    
// 	if (tab1 || tab2) {
// 		tab1.addEventListener("click",(event) => {
// 			tab2.style.backgroundColor = 'white';
// 			event.currentTarget.style.backgroundColor = 'lightgray';
// 		});

// 		tab2.addEventListener("click",(event) => {
// 			tab1.style.backgroundColor = 'white';
// 			event.currentTarget.style.backgroundColor = 'lightgray';
// 		});
// 	}
// }
// export { clickable };

    tab2.addEventListener("click",(event) => {
      tab1.style.backgroundColor = 'white';
      event.currentTarget.style.backgroundColor = '#F5F6F4';
   });
  }
}

export { clickable };

