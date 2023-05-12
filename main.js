$(document).ready(function () {
  // inisialisasi map
  const mymap = L.map("mapid").setView([-7.312840928060894, 112.79138725175287], 14);
  L.tileLayer("https://mt.google.com/vt/lyrs=m&x={x}&y={y}&z={z}", {
    attribution: "Persebaran Barbershop",
    maxZoom: 18,
  }).addTo(mymap);

  // Layer
  const circleLayer = L.layerGroup().addTo(mymap);
  const polygonLayer = L.layerGroup().addTo(mymap);

  // load data
  function loadData() {
    $.ajax({
      url: "load_data.php",
      type: "GET",
      dataType: "json",
      success: function (data) {
        if (data) {
          // node
          for (var i = 0; i < data.markers.length; i++) {
            var lat = parseFloat(data.markers[i].latitude);
            var lng = parseFloat(data.markers[i].longitude);
            var marker = L.marker([lat, lng]).addTo(mymap);
            marker.bindPopup("<b>Nama Lokasi:</b> " + data.markers[i].nama_lokasi);
          }

          // circles
          for (var i = 0; i < data.circles.length; i++) {
            var lat = parseFloat(data.circles[i].latitude);
            var lng = parseFloat(data.circles[i].longitude);
            var radius = parseFloat(data.circles[i].radius);
            var circle = L.circle([lat, lng], {
              color: "bluelight",
              fillColor: "blue",
              fillOpacity: 0.2,
              radius: radius,
            }).addTo(circleLayer);
            circle.bindPopup("Barbershop yang masuk kawasan UPN dalam radius 2km");
          }

          // polygons
          for (var i = 0; i < data.polygons.length; i++) {
            var coordinates = JSON.parse(data.polygons[i].coordinates);
            var latLngs = coordinates.map(function (coord) {
              return [coord.latitude, coord.longitude];
            });
            var polygon = L.polygon(latLngs, { color: "redlight", fillColor: "green" }).addTo(
              polygonLayer
            );
            polygon.bindPopup("<b>Nama Lokasi:</b> " + data.polygons[i].nama_lokasi);
          }
        }
      },
      error: function (_jqXHR, textStatus, errorThrown) {
        console.log(textStatus, errorThrown);
      },
    });
  }

  loadData();
});
