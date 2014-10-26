$(document).ready(function() {
  loadLogin()
  // setEvent()
  // loadRegistration()
  // submitLogin()
});

function loadLogin(){
  $('#load-login-form').on('click', function(event){
    event.preventDefault()
    $(this).hide()
    var url = $(this).attr('href')
    $.get(url, function(response){
      $('nav').append(response)
    })
    // submitLogin()
  })
}

// function loadRegistration(){
//   $('#load-registration-form').on('click', function(event){
//     event.preventDefault()
//     $(this).hide()
//     console.log(url)
//     var url = $(this).attr('href')
//     $.get(url, function(response){
//       console.log(response)
//       $('nav').append(response)
//     })
//     submitRegistration()
//   })
// }
// function submitLogin(){
// $( "#submit-login" ).submit(function( event ) {
//   console.log("submit login")
//   alert( "Handler for .submit() called." );
//   event.preventDefault();
// });
// }
// function setEvent(){
//   $('#submit-login').submit(function(event){
//     console.log("submit was hit")
//     event.preventDefault()
//     var url = $(this).attr('action')
//     console.log(url)
//     var data = $(this).serialize()
//     console.log(data)
//     $.post(url, data, function(){
//       console.log("In the .post")
//     })
//   })
// }
// function submitLogin(){
// $( "#submit-login" ).on('click', function( event ) {
//   console.log("WHY AREN'T YOU WORKING")
// });
// }

// function submitRegistration(){
// $( "#load-registration-form" ).on('click', function( event ) {
//   console.log("WHY AREN'T YOU WORKING")
// });
// }
