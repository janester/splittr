$(function(){
  $(document).on("keypress", disable_keys);
});// close doc-ready

function disable_keys(event) {
  if ($("#calc").length != 0) {
    if(((event.which < 48) || (event.which > 57)) && (event.which != 46)){
      return false;
    }
    else {
      console.log(event);
    }
  }
}