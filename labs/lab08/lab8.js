$(window).ready(function() {
    $.ajax({
        type: "GET",
        url: "../resources/projects.json",
        dataType: "json",
        success: function(responseData, status){
         var output = "<ul>";  
         $.each(responseData.menuItem, function(i, menuItem) {
           output += '<li><a href="' + menuItem.link + '">';
        output += menuItem.labno + ' - ' + menuItem.title;
        output += '</a></li>';
      });
      output += "</ul>";
      $('#dynamic').html(output);
    }, error: function(msg) {
                  // there was a problem
      alert("There was a problem: " + msg.status + " " + msg.statusText);
    }
  });
});