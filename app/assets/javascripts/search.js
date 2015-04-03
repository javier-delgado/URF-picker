$(document).ready(function () {
  $('#search_option_name').bind('railsAutocomplete.select', function(event, data){
    $("#search-form").submit();
  });
});
