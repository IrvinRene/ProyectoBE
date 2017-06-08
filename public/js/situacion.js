    document.getElementById("id_decision").addEventListener("change", decision);

    function decision() {
      var x = document.getElementById("id_decision");
      if(x.options[x.selectedIndex].text == "Sí"){
        $("#div_trabajo").css("display", "block");
      }else{
        $("#div_trabajo").css("display", "none");
        //document.getElementById('id_textarea').value = "";
      }
    }