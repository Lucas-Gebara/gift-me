const copyCode = () => {
  const copyButtons = document.querySelectorAll("#copy-button")
  copyButtons.forEach((copyButton) => {
    copyButton.addEventListener("click", (event) => {
      const currentCopyButton = event.currentTarget;
      const input = currentCopyButton.closest('.input-group').querySelector("input");
      input.select();
      document.execCommand("copy");
      currentCopyButton.innerText ='Copied :)'
    });
  });
};

export {copyCode}
