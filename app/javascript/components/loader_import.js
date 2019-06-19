const loaderImport = () => {


  if (document.querySelector("#submit-icon")) {
    const importButton = document.querySelector("#submit-icon")
    importButton.addEventListener("click", (event) => {
      console.log("Event dispatched")
      const loader = document.querySelector(".loader")
      loader.style.display = "flex"
      // look for the loader on the page
      // add the active class to it
    });
  }
};

export {loaderImport}
