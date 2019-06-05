<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subir-archivos.aspx.cs" Inherits="Calificaciones.Form.Subir_archivos" %>

<!DOCTYPE html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
    <form id="form1" runat="server">
        <!--BANNER START-->
        <div id="banner" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="jumbotron">
                        <h1 class="small">Cargar Archivos </h1>

                        <div>
                            <asp:FileUpload ID="upData" class="btn btn-banner" runat="server" />
                            <asp:Button ID="btnLoad" class="btn btn-banner" runat="server" Text="Subir" OnClick="btnLoad_Click" />
                            <a><i class="fa fa-send"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!--BANNER END-->

            <!--pop ups-->
            <div id="portfolio">
                <div class="container">
                    <div class="row centerEtiquetas">
                        <div class="col-md-4">
                            <label class="lblEtiqueta" id="lblMejor" runat="server" />
                            
                        </div>
                        <div class="col-md-4">
                            <label class="lblEtiqueta" id="lblPeor" runat="server" />

                        </div>
                        <div class="col-md-4">
                            <label class="lblEtiqueta" id="lblPromedio" runat="server" />
                        </div>
                    </div>
                    <hr class="pg-titl-bdr-btm">

                    <!--  Grid View -->
                    <div class="row">
                        <div id="divGrid" class="col-xs-12">
                            <asp:GridView ID="table" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                                HeaderStyle-CssClass="header" RowStyle-CssClass="rows" HorizontalAlign="Center">

                                <Columns>
                                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" ReadOnly="True" SortExpression="Nombres" />
                                    <asp:BoundField DataField="Apellido Paterno" HeaderText="Apellido Paterno" ReadOnly="True" SortExpression="Nombres" />
                                    <asp:BoundField DataField="Apellido Materno" HeaderText="Apellido Materno" ReadOnly="True" SortExpression="Nombres" />
                                    <asp:BoundField DataField="Fecha de Nacimiento" HeaderText="Fecha de Nacimiento" ReadOnly="True" SortExpression="Nombres" />
                                    <asp:BoundField DataField="Grado" HeaderText="Grado" ReadOnly="True" SortExpression="Nombres" />
                                    <asp:BoundField DataField="Grupo" HeaderText="Grupo" ReadOnly="True" SortExpression="Nombres" />
                                    <asp:BoundField DataField="Calificacion" HeaderText="Calificacion" ReadOnly="True" SortExpression="Nombres" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    <hr>
                    <!--  End Grid View -->

                    <div class="row" id="portfolio-wrapper">
                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">

                            <img src="../img/portfolio/grafica.jpg" alt="">
                            <div class="details">
                                <h4>Grafica</h4>
                                <span>Informacion de alumnos respecto a calificaciones</span>
                            </div>
                        </div>

                        <div id="cuadroEtiqueta" class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <img src="../img/portfolio/etiquetas.jpg" alt="">
                            <div class="details">
                                <h4>Estadisticas de alumnos</h4>  
                                  <span>Muestra al mejor y peor alumno, ademas de un promedio</span>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <a href="../form/clima.aspx">
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
    </form>

    <!--End Pop Up-->

    <script src="../js/jquery-1.10.2.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/Chart.js"></script>
    <script src="../js/Datos.js"></script>
</body>





