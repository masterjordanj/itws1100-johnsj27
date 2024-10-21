/* eslint-disable no-undef */
/* Lab 6 JavaScript File  */

// this is the block that allows code to execute only after the DOM
// is fully loaded:
$(document).ready(function () {

   // example event handler:
   $('#labButton').click(function () {
      alert('You\'ve clicked the lab button');
   });



   // Problem 1 (10 pts): When the user clicks on the <h1>,
   //change the 'your name' to your own name (ie Joe Smith)
   //change the text to be your name in small caps
   //change the color to be something other than blue or black
   //change the text size to 125% of normal
   // (note that there is already a class defined for the area where your name should go)

   $('h1 .myName').click(function () {
      $(this).html("Jordan Johnson").css({
         "color":"green",
         "font-variant":"small-caps",
         "font-size":"125%"
      });
   });


   // Problem 2 (10 pts): Make the "lorem ipsum" paragraphs
   //   vanish over a 1 sec duration when a user clicks "Hide text";
   //   make it appear with a 2.1 second duration when a user clicks "Show text":

   $('#hideText').click(function () {
      $("#showHideBlock p").hide(600);
   });

   $('#showText').click(function () {
      $("#showHideBlock p").show(1500);
   });
   // Problem 3 (10 pts): When a normal list item is clicked, make it turn red using addClass.
   //            When a red list item is clicked change it back (you need to look up the appropriate jQuery method to do this)
   // (Note that there already is a css style named ".red" in lab6.css)

   $('#labList li').click(function () {
      if ($(this).hasClass('red')) {
         $(this).removeClass('red');
      } else {
         $(this).addClass('red');
      }

   });


   // Problem 4 (10 pts): When a user clicks on the "Add a list item" button, add a new list item to the end of the list.
   // Problem 4b (10 pts) - what happens when you click on the new li?  Why? (Explain in your readme file)
   //   ie if it works as after #3 above, why? if it doesn't, why not?  How would you fix it?
   $('#AddListItem').click(function () {

      $('#labList').append('<li>List item '+ ($('#labList li').length + 1)+ '</li>');

   });

   // for 10 pts, fix it.
   //   (Note that you need to look up the appropriate jQuery method - discussed in class - to do this)

   $(document).on('click', '#labList li', function(){
      if ($(this).hasClass('red')) {
         $(this).removeClass('red');
      } else {
         $(this).addClass('red');
      }

   });


   // Problem 5 (10 pts): lookup another jquery method and use this code on the "Toggle Text"
   // link to show/hide the text:
   $('#toggleText').click(function () {
      $('#showHideBlock p').fadeToggle();
   });
   // Problems: 60 pts
   // Validity: 10 pts
   // Website organization: 10 pts
   // Deployment: 10 pts
   // Readme file: 10 pts
   // Total: 100 pts
   // Bonus: 10 pts (for a max of 100 pts) if you fix 4b above

   /* When you are done:
     Post this lab to your iit website,
     link it from your projects page,
     and a link to your project page and repo in the readme file.
     Submit as normal to LMS
 */
});
