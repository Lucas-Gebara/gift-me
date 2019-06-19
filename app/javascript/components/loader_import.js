const loaderImport = () => {
  const importButtonn = document.querySelectorAll("#submit-button")
    importButton.addEventListener("click", (event) => {
      const currentCopyButton = event.currentTarget;
      const input = currentCopyButton.closest('.input-group').querySelector("input");
      input.select();
      document.execCommand("copy");
      currentCopyButton.innerText ='Copied :)'
    });
  });
};

export {copyCode}
