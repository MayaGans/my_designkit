document.addEventListener("DOMContentLoaded", function(event) {
   var disabled_inputs = document.querySelectorAll('.input-disabled input')
   
   disabled_inputs.forEach(input => { 
      input.setAttribute('disabled', true) 
   })
})