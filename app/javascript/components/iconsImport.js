const checkboxes = document.querySelectorAll(".form-check-input")

const bindIcon = (icon, index) => {
  icon.addEventListener("click", (event) => {
    console.log("popoopo")
    let checkbox = checkboxes[index]
    if(checkbox.checked === true) {
      console.log("Hi")
      checkboxes[index].checked = "false"
    } else {
      console.log("Hello")
        checkbox.checked = "true"
    }
}

let counter = 0
document.querySelectorAll(".clickable-icons").forEach((icon)=>{
    bindIcon(icon, counter);
    counter += 1;
});
