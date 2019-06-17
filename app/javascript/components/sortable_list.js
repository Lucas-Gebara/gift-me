import Isotope from "isotope-layout"


const sortableListInit = () => {
  const elem = document.querySelector('.isotope-grid');
  if(elem) {
    const iso = new Isotope( elem, {
      // options
      itemSelector: '.isotope-item',
      layoutMode: 'fitRows'
    });

    const filters = document.querySelectorAll('.isotope-filter');
    if(filters) {
      filters.forEach((filter) => {
        filter.addEventListener("change", (event) => {
          // console.log(event)
          // elem.style.display = "block";
          iso.arrange({ filter: `${event.target.value}` })
        })
      })
    }
  }
}

const disableLegend = () => {
  if(document.querySelector("#new_coupons_import").querySelector("legend")){
    document.querySelector("#new_coupons_import").querySelector("legend").style.display = "none"
  }
}

export {sortableListInit, disableLegend}
