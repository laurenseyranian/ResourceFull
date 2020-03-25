module.exports = {
Gkey : require("./key"),
userLocation :  require('./userLocationQuery'),

googlemap = class GoogleMap {
        constructor(){
            this.instance = this;
            this.key = Gkey.Key;
            UserPosition = userLocation.centerUser();
        }

        geocode(location, name) {
            axios.get('https://maps.googleapis.com/maps/api/geocode/json', {
                params: {
                    address: location,
                    key: Gkey.Key
                }
            })
            .then((response) => {

                //log full response
                console.log(response);

            //geometry
            var lat = response.data.results[0].geometry.location.lat;
            var lng = response.data.results[0].geometry.location.lng;
            var marker = [
                {
                    coords:{lat: lat, lng: lng },
                    content: '<h4>'+name+' Neighbors</h4><br><a class="text-primary" href="https://www.google.com/maps/dir///@37.8063244,-122.2767202,15z/data=!4m2!4m1!3e0">Get Directions</a>'
                
                }
            ]
            addMarker(marker[0])
            
        })
        .catch(function (error) {
            console.log(error);
        });
    };
    


addMarker = (props) => {
    var marker = new google.maps.Marker({
        position: props.coords,
        map: map,
        icon:'http://maps.google.com/mapfiles/ms/icons/campground.png'
    });
    //Check for custom icon
    if (props.iconImage) {
        //Set icon image
        marker.setIcon(props.iconImage);
    }
    if (props.content) {
        var infoWindow = new google.maps.InfoWindow({
            content: props.content
        });

        marker.addListener('click', function () {
            infoWindow.open(map, marker);
        });
    }
}
initMap = () => {
    //Map options
    var options = {
        zoom: 13,
        center: UserPosition.pos
    }
    //New map
    map = new google.maps.Map(document.getElementById('map'), options);
}
}
};