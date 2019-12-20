class GoogleMap{
    constructor(){
        this.instance = this;
        this.key = 'AIzaSyD9XuSocOU1HX2gzkpBUWfMxFp6b3uwiVU'
    }
    
    geocode(e) {
        e.preventDefault();

        var location = document.getElementById('location-input').value;
        axios.get('https://maps.googleapis.com/maps/api/geocode/json', {
            params: {
                address: location,
                key: 'AIzaSyD9XuSocOU1HX2gzkpBUWfMxFp6b3uwiVU'
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
                    coords:{lat: lat, lng: lng }
                }
            ]
            addMarker(marker[0])
            
        })
        .catch(function (error) {
            console.log(error);
        });
    };
    
}

function addMarker(props) {
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
var map;
function initMap() {
    //Map options
    var options = {
        zoom: 12,
        center: { lat: 37.8043514, lng: -122.2711639 }
    }
    //New map
    map = new google.maps.Map(document.getElementById('map'), options);
}

var googMap = new GoogleMap();
//Get location form
//var locationForm = document.getElementById('location-form');

//Listen for Submit
//locationForm.addEventListener('submit', googMap.geocode);
console.log(${jsonData})
//console.log("HELLO")
//var data = eval( '(' + '${jsonData}' + ')' )
//console.log(data)

