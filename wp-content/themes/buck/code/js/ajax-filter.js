(function($) {
  $(document).ready(function() {   
   var alm_is_animating = false; // Animating flag
   $('.alm-filter-nav li').eq(0).addClass('active'); // Set initial active state
   
   // Btn Click Event
   $('.alm-filter-nav li a').on('click', function(e){    
      e.preventDefault();  
      var el = $(this); // Our selected element     
      
      if(!el.hasClass('active') && !alm_is_animating){ // Check for active and !alm_is_animating  
         alm_is_animating = true;   
         el.parent().addClass('active').siblings('li').removeClass('active'); // Add active state
         
         var data = el.data(), // Get data values from selected menu item
             transition = 'fade', // 'slide' | 'fade' | null
             speed = '300'; //in milliseconds
             
         $.fn.almFilter(transition, speed, data); // Run the filter     
      }      
   });
   
   $.fn.almFilterComplete = function(){      
      alm_is_animating = false; // clear animating flag
   };
   
});

})(jQuery);