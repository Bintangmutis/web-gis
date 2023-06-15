$(document).ready(function () {
  // Function to submit the form
  $("#barbershop-form").submit(function (event) {
    event.preventDefault();

    var barbershopData = {
      nama_lokasi: $("#nama_lokasi").val(),
      latitude: $("#latitude").val(),
      longitude: $("#longitude").val(),
    };

    $.ajax({
      url: "save_barbershop.php",
      type: "POST",
      data: barbershopData,
      success: function (response) {
        if (response === "success") {
          alert("Barbershop berhasil ditambahkan!");
          $("#barbershop-form")[0].reset();
        } else {
          alert("Terjadi kesalahan, silakan coba lagi.");
        }
      },
      error: function (_jqXHR, textStatus, errorThrown) {
        console.log(textStatus, errorThrown);
        alert("Terjadi kesalahan, silakan coba lagi.");
      },
    });
  });
});
