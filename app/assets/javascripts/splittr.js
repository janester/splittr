$(function(){
  $(document).on("keypress", disable_keys);
  $("#item").on("click", "#add-person-btn", add_person_select);
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

function add_person_select(e) {
  e.preventDefault();
  console.log(this);
  var el = $(this);
  var sel = el.prev().clone();
  if ($("select").length <= $(sel).children().length) {
    sel.insertBefore(el);
  }
  else {
    $(this).remove();
    alert("You Can't Have More Selects Than People!");
  }

}