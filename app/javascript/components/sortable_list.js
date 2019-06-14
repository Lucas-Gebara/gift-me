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
        filter.addEventListener("click", () => {
          elem.style.display = "block";
          iso.arrange({ filter: `.${filter.dataset.filter}` })
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

export {disableLegend}
export {sortableListInit}
