// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "trix"
import "@rails/actiontext"
// console.log('Hello from application.js')


// // in luser login password show hide button
// var show_hide_pass = function(){
//     var pass_field = document.getElementById('password');

//     if (pass_field.type === "password"){
//              pass_field.type = "text";
//              document.getElementById('pass_button').innerHTML = "Hide";
//         }
    
//     else {
//         pass_field.type = "password";
//         document.getElementById('pass_button').innerHTML = "Show";
//     }
// };


// // user login validations
// function validations(){
//     var email_field = document.forms['log_in']['email'].value;
//     var pass_field = document.forms['log_in']['password'].value;
    
    
//     if (email_field == ""){
//         document.getElementById('email_error').innerHTML = "Please Enter an Email.";
//     }
//     else if (!email_field.match(/[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/)){
//         document.getElementById('email_error').innerHTML = "Email is Invalid.";
//     }
//     else{
//         document.getElementById('email_error').innerHTML = "";

//     }


//     if (pass_field == ""){
//         document.getElementById('pass_error').innerHTML = "Please provide a password.";
//     }
//     else{
//         document.getElementById('pass_error').innerHTML = "";

//     }
// };


// // add product page image preview
// var loadImage = function(event){
//     var preview = document.getElementById("preview");
//     preview.src = URL.createObjectURL(event.target.files[0]);

//     // preview.onload = function() {
//     //     URL.revokeObjectURL(preview.src) // free memory
//     // }
// };