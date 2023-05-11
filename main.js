$(document).ready(function () {
    // Inisialisasi peta
    const mymap = L.map('mapid').setView([-7.312840928060894, 112.79138725175287], 15);
    L.tileLayer('https://mt1.google.com/vt/lyrs=m&x={x}&y={y}&z={z}', {
        attribution: 'Persebaran Barbershop',
        maxZoom: 18,
    }).addTo(mymap);

    // Load data dari MySQL
    function loadData() {
        $.ajax({
            url: "load_data.php",
            type: "GET",
            dataType: "json",
            success: function (data) {
                if (data) {
                    for (var i = 0; i < data.length; i++) {
                        var lat = parseFloat(data[i].latitude);
                        var lng = parseFloat(data[i].longitude);
                        var marker = L.marker([lat, lng]).addTo(mymap);
                        marker.bindPopup("<b>Nama Lokasi:</b> " + data[i].nama_lokasi);
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