﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Project/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <li data-page-no="4">
            <div class="mx-auto page-width-2" style="margin-top:10vh">
              <div class="row">
                <div class="col-md-6 me-0 ms-auto">
                  <h2 class="mb-4">Contact Us</h2>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 tm-contact-left">
                  <form action="#" method="POST" class="contact-form">
                    <div class="input-group tm-mb-30">
                        <asp:TextBox ID="name" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Username"></asp:TextBox>
                    </div>
                    <div class="input-group tm-mb-30">
                        <asp:TextBox ID="email" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Email"></asp:TextBox>
                    </div>
                    <div class="input-group tm-mb-30">
                        <asp:TextBox ID="subject" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Subject"></asp:TextBox>
                    </div>
                    <div class="input-group tm-mb-30">
                        <asp:TextBox ID="message" runat="server" TextMode="MultiLine" class="textarea form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Message"></asp:TextBox>
                    </div>
                    <div class="input-group justify-content-end">
                        <asp:Button ID="submit" runat="server" class="btn btn-primary tm-btn-pad-2" Text="Send" OnClick="submit_Click" />
                    </div>
                  </form>
                </div>
                <div class="col-md-6 tm-contact-right">                  
                  <p class="mb-4">
                    Integer erat turpis, vestibulum pellentesque aliquam
                    ultricies, finibus nec dui. Donec bibendum enim mi,
                    at tristique leo feugiat at.
                  </p>
                  <div>
                    Email: <a href="mailto:info@company.com" class="tm-link-white">info@company.com</a>
                  </div>
                  <div class="tm-mb-45">
                    Tel: <a href="tel:0100200340" class="tm-link-white">010-020-0340</a>
                  </div>
                  <!-- Map -->
                  <div class="map-outer">
                    <div class="gmap-canvas">
                        <iframe width="100%" height="400" id="gmap-canvas"
                            src="https://maps.google.com/maps?q=Av.+L%C3%BAcio+Costa,+Rio+de+Janeiro+-+RJ,+Brazil&t=&z=13&ie=UTF8&iwloc=&output=embed"
                            frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                    </div>
                </div>
                </div>
              </div>
            </div>            
          </li>
        </ul>
    </div>

</asp:Content>


