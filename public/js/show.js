
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
/*+++++++++++++++++++++++script piso+++++++++++++++++++++++++++++++++++++++++++*/
      document.getElementById("id_piso").addEventListener("change", myFunction2);

      function myFunction2() {
        var x = document.getElementById("id_piso");
        if(x.options[x.selectedIndex].text == "Otros"){
          $("#piso").css("display", "block");
        }else{
          $("#piso").css("display", "none");
          document.getElementById('id_textarea_piso').value = "";
        }
      }
/*+++++++++++++++++++++++script zinc+++++++++++++++++++++++++++++++++++++++++++*/
      document.getElementById("id_zinc").addEventListener("change", myFunction3);

      function myFunction3() {
        var x = document.getElementById("id_zinc");
        if(x.options[x.selectedIndex].text == "Otros"){
          $("#zinc").css("display", "block");
        }else{
          $("#zinc").css("display", "none");
          document.getElementById('id_textarea_zinc').value = "";
        }
      }

/*+++++++++++++++++++++++script iluminacion+++++++++++++++++++++++++++++++++++++*/
      document.getElementById("id_ilum").addEventListener("change", myFunction4);

      function myFunction4() {
        var x = document.getElementById("id_ilum");
        if(x.options[x.selectedIndex].text == "Otros"){
          $("#ilum").css("display", "block");
        }else{
          $("#ilum").css("display", "none");
          document.getElementById('id_textarea_ilum').value = "";
        }
      }
