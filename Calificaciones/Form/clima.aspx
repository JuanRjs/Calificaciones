<script src="../js/jquery-3.3.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Practica Calificaciones.</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="../text/css" href="../css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,600|Raleway:600,300|Josefin+Slab:400,700,600italic,600,400italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="../text/css" href="../css/slick-team-slider.css" />
    <link rel="stylesheet" type="../text/css" href="../css/style.css">


    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <style>
        #deg {
            font-weight: bolder;
            font-size: 25px;
        }
    </style>

</head>
<body>
    <!--pop ups-->
    <div id="portfolio">
        <div class="container">
            <hr class="pg-titl-bdr-btm">
            <div class="container">
                <div class="row">
                    <div class="col 6 m3 s12"></div>
                    <div class="col 6 m6 s12">
                        <h3>Clima Actual</h3>
                        <div id="loader" style="display: none;">
                            <div class="progress">
                                <div class="indeterminate"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col l3 m6 s12"></div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div id="weather-data"></div>
                </div>
            </div>
        </div>
    </div>
</body>

<script src="../js/jquery-1.10.2.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/Chart.js"></script>
<script src="../js/Datos.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script>
    $(document).ready(function () {

        //let query = $("#search").val();
        let query = "Hermosillo";
        let url = "http://api.openweathermap.org/data/2.5/weather?q=" + query + "&units=metric&APPID=dd5ddf8921e152bd97a8fd4b5cee1f90";


        $.ajax({

            url: url,
            method: "GET",
            dataType: "json",

            beforeSend: function () {
                $("#loader").show();
                $("#weather-data").html("");
            },

            complete: function () {
                $("#loader").hide();
                // $("#search").val("");
            },

            success: function (data) {
                let output = `
    <div class="col l4 m6 s12">
    <div class="card-panel">
        <p>Ciudad actual: <b>${data.name},${data.sys.country}</b></p>
        <p>Descripcion del clima: <b>${data.weather[0].description}</b></p>

        <img src="https://openweathermap.org/img/w/${data.weather[0].icon}.png" class="responsive-img">
            <span id="deg">${data.main.temp} &deg;c</span>
    </div>
    </div>
    <div class="col l4 m4 s12"></div>
    `;
                $("#weather-data").html(output);


            },

            error: function () {
                let errorMsg = `<div style="text-align:center; color:red; font-size:20px;">Si la informacion del clima no es visible, desactive el cifrado de seguridad de su explorador</div>`;
                $("#weather-data").html(errorMsg);
                console.log("");
            }
        });
    });

</script>
</html>
