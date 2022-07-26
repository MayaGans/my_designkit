document.addEventListener("DOMContentLoaded", function(event) { 
  const tabs = document.querySelectorAll('.maya-tabpanel .tab-pane');
tabs.forEach(tab => {
  tab.addEventListener('click', function (e) {
    
    let x = e.clientX - e.target.offsetLeft;
    let y = e.clientY - e.target.offsetTop;
    
    let ripples = document.createElement('span');
    ripples.className = 'ripple-tab'
    ripples.style.left = x + 'px';
    ripples.style.top = y + 'px';
    this.appendChild(ripples);
    
    setTimeout(() => {
      ripples.remove()
    },1000);
  });
});
});