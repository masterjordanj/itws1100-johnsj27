/* Lab 5 JavaScript File 
   Place variables and functions in this file */

function validate(formObj) {
   // put your validation code here
   // it will be a series of if statements

   var alertText = ""
   var focused = false
   
   if (formObj.firstName.value == "") {
      alertText += "You must enter a first name\n";
      if(!focused){
         focused = true;
         formObj.firstName.focus();
      }
   }

   if (formObj.lastName.value == ""){
      alertText += "You must enter a last name\n";
      if(!focused){
         focused = true;
         formObj.lastName.focus();
      }
   }

   if (formObj.title.value == ""){
      alertText += "You must enter a title\n";
      if(!focused) {
         focused = true;
         formObj.title.focus();
      }
   }
   
   if (formObj.org.value == ""){
      alertText += "You must enter an organization\n";
      if(!focused) {
         focused = true;
         formObj.org.focus();
      }
   }

   if (formObj.pseudonym.value == ""){
      alertText += "You must enter a nickname\n";
      if(!focused) {
         focused = true;
         formObj.pseudonym.focus();
      }
   }

   if (formObj.comments.value == "" || formObj.comments.value == "Please enter your comments" ){
      alertText += "You must enter comments\n";
      if(!focused) {
         focused = true;
         formObj.comments.focus();
      }
   }

   if (alertText == ""){
      alert("Form submitted successfully!")
      return true
   } else {
      alert(alertText);
      return false
   }
   
}
function main() {

}

function resetComments() {
   var comments = document.getElementById('comments');
   if (comments.value === "") {
      comments.value = "Please enter your comments";
   }
}


function clearComments() {
   var comments = document.getElementById('comments');
   if (comments.value == "Please enter your comments") {
      comments.value = "";
   }
}



function displayName() {
   var firstName = document.getElementById('firstName').value;
   var lastName = document.getElementById('lastName').value;
   var nickname = document.getElementById('pseudonym').value;
   if (firstName && lastName && nickname) {
      alert(firstName + " " + lastName + " is " + nickname);
   } else {
      alert("Fields Incomplete")
   }
   
}
