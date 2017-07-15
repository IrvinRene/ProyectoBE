function drop(y,id)
{
  var x = y;

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
  {
    var g = "cierto["+id+"]";
    $(document.getElementById(g)).css("display", "block");
    var f = "falso["+id+"]";
    $(document.getElementById(f)).css("display", "none");
  }
  else{
    var g = "cierto["+id+"]";
    $(document.getElementById(g)).css("display", "none");
    var f = "falso["+id+"]";
    $(document.getElementById(f)).css("display", "none");
  }
  }

  }
  



}
