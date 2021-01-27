document.addEventListener('DOMContentLoaded', function(){
    const addMemoBtn = document.getElementsByClassName('add-form-btn')[0]
    const MaterialQuantity = document.getElementsByClassName("row")[0]
    // const MaterialQuantity = document.getElementById('material_list').getElementsByClassName('material_row')
    let formNum = 0

    addMemoBtn.addEventListener("click", function() {
      formNum += 1
      const formNode = document.createElement("input");
      formNode.setAttribute("class", "row");
      formNode.setAttribute("type", "text");
      formNode.setAttribute("placeholder", "材料を入力してください")
      formNode.setAttribute("column", "material_name")
      // formNode.setAttribute("name", `HTML_collection[material_row_attributes][${formNum}][recipe.material_name]`);      
      // formNode.setAttribute("id", `HTML_collection_material_row_attributes_${formNum}_recipe.material_name`);
      formNode.setAttribute("name", `material_name_collection[row][${formNum}][material_name]`);      
     formNode.setAttribute("id", `material_name_collection_row_${formNum}_material_name`);
     MaterialQuantity.appendChild(formNode)

     
  })
  })
