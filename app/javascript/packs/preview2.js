if (document.URL.match( /new/ ) || document.URL.match( /edit/ ) || document.URL.match( /recipes/ )){
  document.addEventListener('DOMContentLoaded', function(){
    const CookList = document.getElementById('cook-list');

    const createImageHTML = (blob) => {
       // 画像を表示するためのdiv要素を生成
      const imageElement = document.createElement('div');
      imageElement.id = "currentThumb2"

      // 表示する画像を生成
      const blobImage = document.createElement('img');
      blobImage.setAttribute('src', blob);
      blobImage.width = 50;
     
    

      // 生成したHTMLの要素をブラウザに表示させる
      imageElement.appendChild(blobImage);
      CookList.appendChild(imageElement);
    };

    document.getElementById('cooking_image').addEventListener('change', function(e){
      // 画像が表示されている場合のみ、すでに存在している画像を削除する
      const imageContent = document.querySelector('#currentThumb2');
      if (imageContent){
        imageContent.remove();
      }

      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);
      
      createImageHTML(blob);

      
    });
  });
 }
