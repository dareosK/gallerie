const clickable = () => {
	const tab1 = document.querySelector("#home-tab");
	const tab2 = document.querySelector("#profile-tab");

	tab1.addEventListener("click",(event) => {
		tab2.style.backgroundColor = 'white';
		event.currentTarget.style.backgroundColor = 'lightgray';
	});

	tab2.addEventListener("click",(event) => {
		tab1.style.backgroundColor = 'white';
		event.currentTarget.style.backgroundColor = 'lightgray';
	});
}

export { clickable };