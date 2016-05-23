console.log("this script is runnig")

// $(function() {

//   $("#main").slideup(300);

// });

$(document).ready(function(){

  $("#btn1").on('click', function() {
    $('#box1').slideToggle(300);
  });

  $("#btn2").on('click', function(){
    $('#box2').slideToggle(300);
  });

  $("#btn3").on('click', function(){
    $('#box3').slideToggle(300);
  });

});