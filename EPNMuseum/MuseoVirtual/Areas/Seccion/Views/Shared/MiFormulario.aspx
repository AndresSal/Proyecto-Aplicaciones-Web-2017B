﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MiFormulario.aspx.cs" Inherits="MuseoVirtual.Areas.Seccion.Views.Shared.MiFormulario" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Museo Virtual - @ViewBag.Title</title>

    @Styles.Render("~/bundles/css")
</head>
<body>
    @RenderBody()
    <!-- Navegación -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="/Principal/MenuPrincipal/IniciarMenu">Inicio</a>
            <button class="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#navbarResponsive"
                    aria-controls="navbarResponsive"
                    aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse"
                 id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Acerca del Museo</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/Principal/Map/mostrarMapa">Contactos</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!---->

    <div class="container">
        <div class="row">
            <!-- Columna de Contenido Principal -->
            <div class="col-md-9">
                <h1 class="my-4">
                    Seccion X
                </h1>
                <!-- Blog Post -->
                <div class="card mb-4">
                    <img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">
                    <div class="card-body">
                        <h2 class="card-title">Post Title</h2>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
                        <a href="#" class="btn btn-primary">Read More &rarr;</a>
                    </div>
                    <div class="card-footer text-muted">
                        Posted on January 1, 2017 by
                        <a href="#">Start Bootstrap</a>
                    </div>
                </div>
            </div>

            <!-- Sidebar Widgets Column -->
            <div class="col-md-3">

                <!-- Search Widget -->
                <div class="card my-4">
                    <h5 class="card-header">Search</h5>
                    <div class="card-body">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search for...">
                            <span class="input-group-btn">
                                <button class="btn btn-secondary" type="button">Go!</button>
                            </span>
                        </div>
                    </div>
                </div>

                <!--Calificaciones-->

                <div class="card my-4">
                    <h5 class="card-header">Calificación de la Sección</h5>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-7">
                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#">100%</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Ayuda-->

                <div class="card my-4">
                    <h5 class="card-header">Ayuda</h5>
                    <div class="card-body">
                        En este contenedor va toda la información referente al manejo de la página web
                    </div>
                </div>

            </div>
        </div>
        <!-- /.row -->
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card my-4">
                    <h5 class="card-header">Categories</h5>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="/Menu/Inicio">
                                            <img class="card-img-top" src="http://placehold.it/100x50" alt="Card image cap">
                                        </a>
                                    </li>
                                    <li>
                                        <br />
                                        <a href="#">
                                            <img class="card-img-top" src="http://placehold.it/100x50" alt="Card image cap">
                                        </a>
                                    </li>
                                    <li>
                                        <br />
                                        <a href="#">
                                            <img class="card-img-top" src="http://placehold.it/100x50" alt="Card image cap">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-6">
                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#">
                                            <img class="card-img-top" src="http://placehold.it/100x50" alt="Card image cap">
                                        </a>
                                    </li>
                                    <li>
                                        <br />
                                        <a href="#">
                                            <img class="card-img-top" src="http://placehold.it/100x50" alt="Card image cap">
                                        </a>
                                    </li>
                                    <li>
                                        <br />
                                        <a href="#">
                                            <img class="card-img-top" src="http://placehold.it/100x50" alt="Card image cap">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <img class="img-responsive" src="data:image/jpg;base64, <%# Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem, " Imagen")) %>" />
                        <%# DataBinder.Eval(Container.DataItem, "Seccion") %>
                        <br />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</body>
</html>

