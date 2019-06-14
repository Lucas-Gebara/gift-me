import "bootstrap";
import {sortableListInit} from "../components/sortable_list.js";

const checkboxes = document.querySelectorAll(".form-check-input")
// console.log(checkboxes)
const bindIcon = (icon, index) => {
  icon.addEventListener("click", (event) => {
    // console.log("popoopo")
    let checkbox = checkboxes[index]
    if(checkbox.checked === true) {
      checkbox.checked = false
      event.currentTarget.style.border = "none"
    } else {
        checkbox.checked = true
        event.currentTarget.style.border = "1px solid blue"
    }
})
}

let counter = 0

console.log(document.querySelectorAll(".clickable-icons"))
document.querySelectorAll(".clickable-icon").forEach((icon)=>{
    console.log("Hello")
    bindIcon(icon, counter);
    counter += 1;
});

sortableListInit();
