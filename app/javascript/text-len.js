window.addEventListener('load', () => {
  const titleInput = document.getElementById('cook-title-len')
  titleInput.addEventListener("input", () => {
    const inputValue = titleInput.value.length;
    const addTaxDom = document.getElementById('string_num')
    addTaxDom.innerHTML = 60 - inputValue
  });
});



