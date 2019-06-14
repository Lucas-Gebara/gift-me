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
          iso.arrange({ filter: `.${filter.dataset.filter}` })
        })
      })
    }
  }
}


export {sortableListInit}
