
const previewImageOnFileSelect = () => {

  const input = document.getElementById('photo-input');
      console.log(input);
    if (input) {

    input.addEventListener('change', () => {

      displayPreview(input);
    })
  }

}


const displayPreview = (input) => {
  console.log(input);
  if (input.files && input.files[0]) {
    const reader = new FileReader();
    reader.onload = (event) => {
      document.getElementById('photo-preview').src = event.currentTarget.result;
    }
    reader.readAsDataURL(input.files[0])
    document.getElementById('photo-preview').classList.remove('hidden');
  }
}
  previewImageOnFileSelect()

export { previewImageOnFileSelect };
