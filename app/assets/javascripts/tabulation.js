$(document).ready(function() {
title = $('.category-title');
card = title.next();
  card.hide();
title.on('click',function() {
     card.hide();
    $(this).next().slideToggle("slow");
});

//dropdown
avatar = $('.avatar');
dropdown = $('.dropdown-content');
dropdown.hide();
avatar.on('click', function(){
    dropdown.toggle("slow");
});

$("#modal-launcher").click(function(e) {
    	e.preventDefault();
        $("#modal-content, #modal-background").toggleClass("active");

    });
   });
