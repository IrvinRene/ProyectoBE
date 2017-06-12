/*+++++++++++++++++++++++script trabajo+++++++++++++++++++++++++++++++++++++++++++*/
    document.getElementById("id_decision").addEventListener("change", decision);

    function decision() {
      var x = document.getElementById("id_decision");
      if(x.options[x.selectedIndex].text == "Sí"){
        $("#div_trabajo").css("display", "block");
        $("#div_ddtrabajo").css("display", "block");
        $("#div_dtrabajo").css("display", "none");
      }else{
        $("#div_trabajo").css("display", "none");
        $("#div_dtrabajo").css("display", "block");
        $("#div_ddtrabajo").css("display", "none");
      }
    }

/*+++++++++++++++++++++++script sumatoria+++++++++++++++++++++++++++++++++++++++++++*/
    function sumar (valor) {
    var total = 0;
    valor = parseFloat(valor); // Convertir el valor a un entero (número).

    total = document.getElementById('spTotal').innerHTML;

    // Aquí valido si hay un valor previo, si no hay datos, le pongo un cero "0".
    total = (total == null || total == undefined || total == "") ? 0 : total;

    /* Esta es la suma. */
    total = (parseFloat(total) + parseFloat(valor));

    // Colocar el resultado de la suma en el control "span".
    document.getElementById('spTotal').innerHTML = total;
}
