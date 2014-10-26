$(document).ready(function() {
  $(document).on("click", "#createnote", function(event){
    event.preventDefault();
    $("#createnoteform").toggle();
  })

  var currentId;

  $( "body" ).on("click",".notes", function() {
    console.log("loading from db")
    currentId = ($( this ).data("id"))
    $.ajax({
      url: "/notes/"+currentId,
      type: 'get'
    })
    .done(function(response) {
      $(this).html(response);
      $(this).removeClass("notes");
    }.bind(this))
  });

  $( "body" ).on("click",".note-loaded", function() {
    currentId = ($( this ).parent().data("id"));
    $(this).toggle();
    $("h5[data-id="+currentId+"] .note-collapsed").toggle();
  });

  $( "body" ).on("click",".note-collapsed", function() {
    currentId = ($( this ).parent().data("id"));
    $(this).toggle();
    $("h5[data-id="+currentId+"] .note-loaded").toggle();
  });

});
