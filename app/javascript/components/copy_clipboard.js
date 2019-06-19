const copyCode = () => {
  const copyButtons = document.querySelectorAll("#copy-button")
  copyButtons.forEach((copyButton) => {
    console.log("papapa")
    copyButton.addEventListener("click", (event) => {
      console.log("popoopo")
      const currentCopyButton = event.currentTarget;
      const input = currentCopyButton.closest('.input-group').querySelector("input");
      input.select();
      document.execCommand("copy");
      currentCopyButton.innerText ='Copied :)'
    });
  });
};

export {copyCode}
