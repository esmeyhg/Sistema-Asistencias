function checkAll(e) {
    var checkboxes = document.getElementsByName('idEstudiante');
  
    if (e.checked) {
      for (var i = 0; i < checkboxes.length; i++) { 
        checkboxes[i].checked = true;
      }
    } else {
      for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].checked = false;
      }
    }
}