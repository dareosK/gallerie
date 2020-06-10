// ==== interactable.j ==== //
function onMove (event) {
  const event = target.event;

  const dataX = target.getAttribute('data-x');
  const dataY = target.getAttribute('data-y');
  const initialX = parseFloat(dataX) || 0;
  const initialY = parseFloat(dataY) || 0;

  const deltaX = event.dx;
  const deltaY = event.dy;

  const newX = initialX + deltaX;
  const newY = initialY + deltaY;

  target
    .style
    .transform = `translate(${newX}px, ${newY}px)`;

  target.setAttribute('data-x', x);
  target.setAttribute('data-y', y);
}

items
  .draggable({
    onmove: onMove(event)
  })

export { onMove }
