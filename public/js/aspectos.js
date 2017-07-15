function drop(y,id)
{
  var x = y;

<<<<<<< HEAD
  if(x.options[x.selectedIndex].text == "Sí" )
  {
    var g = "cierto["+id+"]";
    $(document.getElementById(g)).css("display", "block");
    var f = "falso["+id+"]";
    $(document.getElementById(f)).css("display", "none");
  }else{
    if(x.options[x.selectedIndex].text == "No")
  {
    var g = "cierto["+id+"]";
    $(document.getElementById(g)).css("display", "none");
    var f = "falso["+id+"]";
    $(document.getElementById(f)).css("display", "block");

  }else{
    if(x.options[x.selectedIndex].text == "Otros")
=======
  if(x.options[x.selectedIndex].text == "Sí" || x.options[x.selectedIndex].text == "Otros" )
>>>>>>> 5d25c9a0fc321953054b47f99d6e0973bc3ce407
  {
    var g = "cierto["+id+"]";
    $(document.getElementById(g)).css("display", "block");
    var f = "falso["+id+"]";
    $(document.getElementById(f)).css("display", "none");
  }
<<<<<<< HEAD
  else{
    var g = "cierto["+id+"]";
    $(document.getElementById(g)).css("display", "none");
    var f = "falso["+id+"]";
    $(document.getElementById(f)).css("display", "none");
  }
  }

  }
  


=======
    if(x.options[x.selectedIndex].text == "No")
    {
      var g = "cierto["+id+"]";
      $(document.getElementById(g)).css("display", "none");
      var f = "falso["+id+"]";
      $(document.getElementById(f)).css("display", "block");

    }
>>>>>>> 5d25c9a0fc321953054b47f99d6e0973bc3ce407

}
