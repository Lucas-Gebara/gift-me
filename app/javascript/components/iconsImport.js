const checkboxes = document.querySelectorAll(".form-check-input")

const bindIcon = (icon, index) => {
  icon.addEventListener("click", (event) => {
    let checkbox = checkboxes[index]
    if(checkbox.checked === true) {
      checkboxes[index].checked = "false"
    } else {
        checkbox.checked = "true"
    }
}

let counter = 0
document.querySelectorAll(".clickable-icons").forEach((icon)=>{
    bindIcon(icon, counter);
    counter += 1;
});
