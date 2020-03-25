module.exports = {
    centerUser = () => {
        if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
        var pos = {
            lat: position.coords.latitude,
            lng: position.coords.longitude
        };

        infoWindow.setPosition(pos);
        infoWindow.setContent('Location found.');
        infoWindow.open(map);
        map.setCenter(pos);
        }, function() {
        handleLocationError(true, infoWindow, map.getCenter());
        });
        } else {
            var pos = {
                lat: 37.8043514, 
                lng: -122.2711639 
                //If Browser doesn't support Geolocation
                /* handleLocationError(false, infoWindow, map.getCenter());  */
            };
        }
    },
}