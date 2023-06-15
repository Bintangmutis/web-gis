$(document).ready(function () {
  // Load barbershop list
  function loadBarbershopList() {
    $.ajax({
      url: "load_data.php",
      type: "GET",
      dataType: "json",
      success: function (data) {
        if (data) {
          var list = "<table><tr><th>Nama Lokasi</th></tr>";
          for (var i = 0; i < data.markers.length; i++) {
            list += "<tr><td>" + data.markers[i].nama_lokasi + "</td></tr>";
          }
          list += "</table>";
          $("#barbershop-list").html(list);
        }
      },
      error: function (_jqXHR, textStatus, errorThrown) {
        console.log(textStatus, errorThrown);
      },
    });
  }

  loadBarbershopList();

  // Delete barbershop
  $("#delete-button").click(function (e) {
    e.preventDefault();
    var nama_lokasi = $("#nama_lokasi").val();
    $.ajax({
      url: "delete_data.php",
      type: "POST",
      data: { nama_lokasi: nama_lokasi },
      success: function (response) {
        if (response === "success") {
          alert("Barbershop berhasil dihapus");
          $("#nama_lokasi").val("");
          loadBarbershopList();
        } else {
          alert("Gagal menghapus barbershop");
        }
      },
      error: function (_jqXHR, textStatus, errorThrown) {
        console.log(textStatus, errorThrown);
      },
    });
  });
});
