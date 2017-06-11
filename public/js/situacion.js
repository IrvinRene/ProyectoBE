/*+++++++++++++++++++++++script trabajo+++++++++++++++++++++++++++++++++++++++++++*/
    document.getElementById("id_decision").addEventListener("change", decision);

    function decision() {
      var x = document.getElementById("id_decision");
      if(x.options[x.selectedIndex].text == "Sí"){
        $("#div_trabajo").css("display", "block");
        $("#div_dtrabajo").css("display", "none");
      }else{
        $("#div_trabajo").css("display", "none");
        $("#div_dtrabajo").css("display", "block");
      }
    }
