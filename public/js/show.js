
/*+++++++++++++++++++++++script vivienda+++++++++++++++++++++++++++++++++++++++++++*/
      document.getElementById("id_d").addEventListener("change", myFunction);

      function myFunction() {
        var x = document.getElementById("id_d");
        if(x.options[x.selectedIndex].text == "Otros"){
          $("#otro_div").css("display", "block");
        }else{
          $("#otro_div").css("display", "none");
          document.getElementById('id_textarea').value = "";
        }
      }

/*+++++++++++++++++++++++script pared+++++++++++++++++++++++++++++++++++++++++++*/
      document.getElementById("id_pared").addEventListener("change", myFunction1);

      function myFunction1() {
        var x = document.getElementById("id_pared");
        if(x.options[x.selectedIndex].text == "Otros"){
          $("#pared").css("display", "block");
        }else{
          $("#pared").css("display", "none");
          document.getElementById('id_textarea_pared').value = "";
        }
      }
