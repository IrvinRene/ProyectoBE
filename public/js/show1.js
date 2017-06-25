/*+++++++++++++++++++++++script residente+++++++++++++++++++++++++++++++++++++*/

      document.getElementById("id_residente").addEventListener("change", myFunction5);

      function myFunction5() {
        var x = document.getElementById("id_residente");
        if(x.options[x.selectedIndex].text == "Otros"){
          $("#residente").css("display", "block");
        }else{
          $("#residente").css("display", "none");
          document.getElementById('id_textarea_residente').value = "";
        }
      }
/*+++++++++++++++++++++++script tipo  de vivienda+++++++++++++++++++++++++++++++++++++*/

      document.getElementById("id_tipo").addEventListener("change", myFunction7);

      function myFunction7() {
        var x = document.getElementById("id_tipo");
        if(x.options[x.selectedIndex].text == "Otros"){
          $("#tipo_vivienda").css("display", "block");
        }else{
          $("#tipo_vivienda").css("display", "none");
          document.getElementById('id_textarea_tipo').value = "";
        }
      }
      /*+++++++++++++++++++++++script area laboral+++++++++++++++++++++++++++++++++++++*/
      document.getElementById("id_arlabo_ac").addEventListener("change", myFunction8);

      function myFunction5() {
        var x = document.getElementById("id_arlabo_ac");
        if(x.options[x.selectedIndex].text == "Otros"){
          $("#area_laboral").css("display", "block");
        }else{
          $("#area_laboral").css("display", "none");
          document.getElementById('id_textarea_area_laboral').value = "";
        }
      }
