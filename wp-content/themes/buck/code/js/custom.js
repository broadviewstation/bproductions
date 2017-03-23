(function($) {
  $(document).ready(function() {

      
// Find all YouTube videos
var $allVideos = $("iframe[src^='//player.vimeo.com'], iframe[src^='//www.youtube.com']"),
    // The element that is fluid width
    $fluidEl = $("body");

// Figure out and save aspect ratio for each video
$allVideos.each(function() {

  $(this)
    .data('aspectRatio', this.height / this.width)

    // and remove the hard coded width/height
    .removeAttr('height')
    .removeAttr('width');

});

// When the window is resized
$(window).resize(function() {

  var newWidth = $fluidEl.width();

  // Resize all videos according to their own aspect ratio
  $allVideos.each(function() {

    var $el = $(this);
    $el
      .width(newWidth)
      .height(newWidth * $el.data('aspectRatio'));

  });

// Kick off one resize to fix all videos on page load
}).resize();

  // fancybox
  
    $('.videoWrapper').hide();
    $(".show-vid").click( function() {
      $('.hero-image').hide('slow');
      $('.videoWrapper').show('slow');
      $(".videoWrapper iframe").vimeo("play");
    });
    $(".close-video").click( function() {
      $(".videoWrapper iframe").vimeo("pause");
      $('.videoWrapper').hide('slow');
      $('.hero-image').show('slow');
    });

  // match height
  
      $('.two-col .col').matchHeight();
      $('#four-image-band div').matchHeight();


  // waypoints
  
    if ($("#parallax-region").length) {
      var parallax = new Waypoint({
        element: document.getElementById('parallax-waypoint'),
        handler: function(direction) {
          if (direction === "down") {
            console.log('down');
            $('#parallax-region .parallax-text p').animate({
              margin: 0,
              opacity: 1,
            }, 1000, function() {
              // Animation complete.
            });
          }
        }, offset: 'bottom-in-view'

      });    
    }

    if ($("#two-col-waypoint").length) {
      var twoCol = new Waypoint({
        element: document.getElementById('two-col-waypoint'),
        handler: function(direction) {
          if (direction === "down") {
            $('#col-margin').animate({
              margin: 0,
              opacity: 1,
            }, 800, function() {
              // Animation complete.
            });
            $('.col-one.col').animate({
              height: '-=100px',
            }, 800, function() {
              // Animation complete.
            });

            $('#logo-grid-margin').animate({
              margin: 0,
              opacity: 1,
            }, 800, function() {
              // Animation complete.
            });
            $('.col-two.col').animate({
              height: '-=100px',
            }, 800, function() {
              // Animation complete.
            });

          }
          this.destroy()
        }, offset: 'bottom-in-view'

      });    
    }

    if ($("#four-image-band").length) {
      var fourImg = new Waypoint({
        element: document.getElementById('four-image-waypoint'),
        handler: function(direction) {
          if (direction === "down") {
            console.log('test');
            $(".four-img").each(function(i){
                var img = $(this);
                setTimeout(function(){
                img.animate({
                  opacity: 1,
                  display: "toggle"
                  }, {duration: 600, queue: false}).addClass('visible')
                },i*100);
            });
          }
          this.destroy()
        }, offset: 'bottom-in-view'

      });    
    }
    
    if ($("#locations-waypoint").length) {
      var locations = new Waypoint({
        element: document.getElementById('locations-waypoint'),
        handler: function(direction) {
          if (direction === "down") {
            $('#locations').animate({
              padding: 0,
              opacity: 1,
              margin: 0,
            }, 1000, function() {
              // Animation complete.
            });
            $('.location').animate({
              opacity: 1
            }, 2000, function() {
              // Animation complete.
            });
          }
        }, offset: 'bottom-in-view'

      });    
    }

    if ($("#footer-text").length) {
      var footer = new Waypoint({
        element: document.getElementById('footer-text-waypoint'),
        handler: function(direction) {
          if (direction === "down") {
            $('#footer-text p').animate({
              padding: 0,
              opacity: 1,
            }, 1000, function() {
              // Animation complete.
            });
          }
        }, offset: 'bottom-in-view'

      });    
    }

  // portfolio tiles
  // init Isotope
    if (!$('.home').length) {
      var $grid = $('.grid').isotope();    
    }
    // filter items on button click
    $('#filter-nav').on( 'click', 'button', function() {
      var filterValue = $(this).attr('data-filter');
      $grid.isotope({ filter: filterValue });
    });

    $('#filter-nav').each( function( i, buttonGroup ) {
      var $buttonGroup = $( buttonGroup );
      $buttonGroup.on( 'click', 'button', function() {
        $buttonGroup.find('.is-checked').removeClass('is-checked');
        $( this ).addClass('is-checked');
      });
    });

    $('#filter-nav-mobile').on( 'click', 'button', function() {
      var filterValue = $(this).attr('data-filter');
      $grid.isotope({ filter: filterValue });
    });

    $('#filter-nav-mobile').each( function( i, buttonGroup ) {
      var $buttonGroup = $( buttonGroup );
      $buttonGroup.on( 'click', 'button', function() {
        $buttonGroup.find('.is-checked').removeClass('is-checked');
        $( this ).addClass('is-checked');
      });
    });




  });
})(jQuery);