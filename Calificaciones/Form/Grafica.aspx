<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subir-archivos.aspx.cs" Inherits="Calificaciones.Form.Subir_archivos" %>

<!DOCTYPE html>


<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
     <title>Practica Calificaciones.</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css">
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,600|Raleway:600,300|Josefin+Slab:400,700,600italic,600,400italic' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" type="text/css" href="../css/slick-team-slider.css" />
  <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>

  


     <!--BANNER START-->
  <div id="banner" class="section-padding">
    <div class="container">
      <div class="row">
        <div class="jumbotron">
          <h1 class="small">Cargar Archivos </h1>

             <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="upData" class="btn btn-banner" runat="server" />

            <asp:Button ID="btnLoad" class="btn btn-banner"  runat="server" text="Subir" OnClick="btnLoad_Click"/>  

             <a   > <i class="fa fa-send"></i></a>
             
        </div>
      </div>
    </div>
  </div>
  <!--BANNER END--> 

   

          
      <!--  Grid View  -->

         <!--pop ups-->
  <div id="portfolio">
    <div class="container">
     
      <div class="row">
        <div class="col-lg-12">
          <ul id="portfolio-flters">
          
           
            
          </ul>
        </div>
      </div>

      <div class="row" id="portfolio-wrapper">
        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
          <a href="../form/Grafica.aspx">
            <img src="../img/portfolio/grafica.jpg" alt="">
            <div class="details">
              <h4>Grafica</h4>
              <span>Informacion de alumnos respecto a calificaciones.</span>
            </div>
          </a>
        </div>

      

        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
          <a href="">
            <img src="../img/portfolio/etiquetas.jpg" alt="">
            <div class="details">
              <h4>Estadisticas de alumnos</h4>
              <span>Muestra al mejor, peor y promedio de calificacion de alumnos.</span>
            </div>
          </a>
        </div>

        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
          <a href="">
            <img src="../img/portfolio/clima.jpg" alt="">
            <div class="details">
              <h4>Clima</h4>
              <span>Muestra informacion sobre el clima de Hermosillo</span>
            </div>
          </a>
        </div>

       

       

        

        
        

      

    
      </div>
    </div>
  </div>
    <!--End Pop Up-->


           <asp:gridview id="table" 
  
  runat="server" >
  
               <Columns>

        <asp:BoundField DataField="Nombres" HeaderText="Nombres"  ReadOnly="True" SortExpression="Nombres" />
        <asp:BoundField DataField="Apellido Paterno" HeaderText="Apellido Paterno"  ReadOnly="True" SortExpression="Nombres" />
        <asp:BoundField DataField="Apellido Materno" HeaderText="Apellido Materno"  ReadOnly="True" SortExpression="Nombres" />
        <asp:BoundField DataField="Fecha de Nacimiento" HeaderText="Fecha de Nacimiento"  ReadOnly="True" SortExpression="Nombres" />
        <asp:BoundField DataField="Grado" HeaderText="Grado"  ReadOnly="True" SortExpression="Nombres" />
        <asp:BoundField DataField="Grupo" HeaderText="Grupo"  ReadOnly="True" SortExpression="Nombres" />
        <asp:BoundField DataField="Calificacion" HeaderText="Calificacion"  ReadOnly="True" SortExpression="Nombres" />
        
    </Columns>

</asp:gridview>
            <!--  End Grid View -->



       <div class="col-xs-12" runat="server" id="divMenciones">
            <div class="card">
                <div class="card-body">

                    <div>
                        <b><label id="lblMejorCalificacion" /></b><br />
                    </div>
                    <div>
                        <b><label id="lblMenorCalificacion" /> </b><br />
                    </div>
                    <div>
                        <b><label id="lblPromedioCalificacion" /></b><br />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<script src="../js/jquery-1.10.2.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/Chart.js"></script>
<script src="../js/Datos.js"></script>
     
        </div>
    </form>
</body>
</html>
