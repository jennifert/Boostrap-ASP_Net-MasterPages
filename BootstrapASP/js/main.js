$(document).ready(function () {
    //close alerts
    $(".alert").alert('close');
    //end close alert

    //menu js
    //to fix collapse mode width issue
    $(".nav li,.nav li a,.nav li ul").removeAttr('style');

    //for dropdown menu
    $(".dropdown-menu").parent().removeClass().addClass('dropdown');
    $(".dropdown>a").removeClass().addClass('dropdown-toggle').append('<b class="caret"></b>').attr('data-toggle', 'dropdown');

    //remove default click redirect effect           
    $('.dropdown-toggle').attr('onclick', '').off('click');
    //end menujs

    //placeholder
   // $.placeholder.shim();
    //end placeholder

    //start multimap
    var map;
    var myLatlng;
    function mapsDisplay(longs, latts, markerTitle, bubbleInfo) {
        myLatlng = new google.maps.LatLng(longs, latts);
        var map_options = {
            zoom: 14,
            mapTypeControl: false,
            center: myLatlng,
            panControl: false,
            rotateControl: false,
            streetViewControl: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("map_canvas"), map_options);
        var infowindow = new google.maps.InfoWindow({
            content: bubbleInfo
        });

        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            title: markerTitle,
            maxWidth: 200,
            maxHeight: 200
        });

        google.maps.event.addListener(marker, 'click', function () {
            infowindow.open(map, marker);
        });

        $('#mapmodals').on('shown', function () {
            google.maps.event.trigger(map, 'resize');
            map.setCenter(new google.maps.LatLng(longs, latts));
        })
    }

    // Start Map Modals 
    $(document).on("click", ".openmodal", function () {
        var myMapId = $(this).data('id');

        if (myMapId == "Cineplex Odeon Yonge & Dundas Cinemas") {
            mapsDisplay(43.65644, -79.380686, "Cineplex Odeon Yonge & Dundas Cinemas", '<div id="mapInfo"><p>10 Dundas Street East<br>Toronto, ON<br>P: (416) 977-9262</p><p><a href="http://www.cineplex.com/Theatres/TheatreDetails/Cineplex-Odeon-Yonge-Dundas-Cinemas-formerly-AMC-.aspx" target="_blank">Now Playing</a></p></div>');
        } else if (myMapId == "Scotiabank Theatre Toronto") {
            mapsDisplay(43.648932, -79.391384, "Scotiabank Theatre Toronto", '<div id="mapInfo"><p>259 Richmond Street West<br>Ontario<br>P: (416)368-5600</p><p><a href="http://www.cineplex.com/Theatres/TheatreDetails/Scotiabank-Theatre-Toronto.aspx" target="_blank">Now Playing</a></p></div>');
        }
        $(".modal-footer #myCity").html(myMapId);
        $('#mapmodals').modal('show');
    });
    //end modals

    //end google multi map
});