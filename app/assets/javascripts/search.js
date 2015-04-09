$(document).ready(function () {
 
  $(".js-champ-options").select2({
    placeholder: "I want to...",
    allowClear: true
  });    

  $('.js-champ-options').on("select2-selected", function(e) { 
    $("#search-form").submit();
  });
  
});
