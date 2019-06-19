import "bootstrap";
import {sortableListInit, disableLegend} from "../components/sortable_list.js";
import {copyCode} from "../components/copy_clipboard.js"
import {loaderImport} from "../components/loader_import.js"

const checkboxes = document.querySelectorAll(".form-check-input")
// console.log(checkboxes)
const bindIcon = (icon, index) => {
  icon.addEventListener("click", (event) => {
    // console.log("popoopo")
    let checkbox = checkboxes[index]
    if(checkbox.checked === true) {
      checkbox.checked = false
      event.currentTarget.classList.remove('selected')
    } else {
        checkbox.checked = true
        event.currentTarget.classList.add('selected')
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




if (document.querySelector('.isotope-grid') !== null) {
  sortableListInit();
  disableLegend();
}

// $("#consent-checkbox").submit(function( event ) {
//     event.preventDefault();

// if($( consent-checkbox:checked )){
//         $('#submit-icon').click();
//     }
// });

copyCode();
loaderImport();
