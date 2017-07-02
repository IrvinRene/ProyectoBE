

/*+++++++++++++++++++++++script de aspectos salud, deportes, cultura+++++++++++++++++++++++++++++++++++++*/

      document.getElementById("drop_aspect").addEventListener("change", decasp);

/*+++++++++++++++++++++++ inicia script drop down  enfermedades+++++++++++++++++++++++++++++++++++++++++++*/
      function decasp()
      {
        var x = document.getElementById("drop_aspect");
        if(x.options[x.selectedIndex].text == "Sí")
        {
          $("#drop_enf").css("display", "block");
        }
          else
          {
            $("#drop_enf").css("display", "none");
          }
      }
/*+++++++++++++++++++++++ fin script drop down  enfermedades+++++++++++++++++++++++++++++++++++++++++++*/

/*+++++++++++++++++++++++ inicia script drop down  deportes +++++++++++++++++++++++++++++++++++++++++++*/

document.getElementById("drop_aspect2").addEventListener("change", decdisc);

function decdisc()

    {
      var x = document.getElementById("drop_aspect2");
      if(x.options[x.selectedIndex].text == "Sí")
      {
        $("#drop_disc").css("display", "block");

      }
        else
        {
          $("#drop_disc").css("display", "none");
        }
    }


/*+++++++++++++++++++++++fin script drop down  deportes +++++++++++++++++++++++++++++++++++++++++++*/


/*+++++++++++++++++++++++ inicia script drop down cultura +++++++++++++++++++++++++++++++++++++++++++*/

document.getElementById("drop_aspect3").addEventListener("change", deccult);

function deccult()

    {
      var x = document.getElementById("drop_aspect3");
      if(x.options[x.selectedIndex].text == "Sí")
      {
        $("#drop_cult").css("display", "block");

      }
        else
        {
          $("#drop_cult").css("display", "none");
        }
    }





/*+++++++++++++++++++++++fin script drop down  deportes +++++++++++++++++++++++++++++++++++++++++++*/
