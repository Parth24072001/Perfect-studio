﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Project/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <div class="container-fluid tm-content-container">
        <ul class="cd-hero-slider mb-0 py-5">
          <li class="px-3" data-page-no="1">
            <div class="page-width-1 page-left">
              <div class="d-flex position-relative tm-border-top tm-border-bottom intro-container">
                <div class="intro-left tm-bg-dark">
                  <h2 class="mb-4">Welcome to Perfect studio</h2>
                 <%-- <p class="mb-4">
                    This HTML template has a motion video background loop which is provided by <a rel="sponsored" href="https://getfreepictures.com" target="_blank">Get Free Pictures</a>. This is
                    one-page responsive layout for your websites. Feel
                  free to use this for a commercial purpose. </p>
                  <p class="mb-0">
                  You are not permitted to redistribute this template on your Free CSS collection websites. Please <a rel="nofollow" href="https://templatemo.com/contact" target="_blank">contact us</a> for more information. </p>
               --%> </div>
                <div class="intro-right">
                  <img src="./img/home-img-1.jpg" alt="Image" class="img-fluid intro-img-1">
                </div>
                <div class="circle intro-circle-1"></div>
                <div class="circle intro-circle-2"></div>
                <div class="circle intro-circle-3"></div>
                <div class="circle intro-circle-4"></div>
              </div>
              <div class="text-center">
                <a href="gallery.aspx" data-page-no="2" class="btn btn-primary tm-intro-btn tm-page-link">
                  View Gallery
                </a>
              </div>            
            </div>            
          </li>
      

    
    </div>
</asp:Content>


