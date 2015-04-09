$(document).ready(function () {
 
  $(".js-champ-options").select2({
    placeholder: "I want to...",
    allowClear: true
  });    

  $('.js-champ-options').on("select2-selected", function(e) { 
    $("#search-form").submit();
  });

  $("#region").on("change", function(e) {
    if($('.js-champ-options').select2('data')){
      $("#search-form").submit();
    }
  });
  
});
