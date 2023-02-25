<%@ Page Title="" Language="C#" MasterPageFile="~/Project/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <li data-page-no="4">
            <div class="mx-auto page-width-2" style="margin-top:10vh">
              <div class="row">
                <div class="col-md-6 ms-auto" style="margin-right:18vh">
                  <h2 class="mb-4" style="align-content:center">Login Here!!</h2>
                </div>
              </div>
                <div class="row">
                    <form action="#" method="POST" class="contact-form">
                        <div class="col-md-6 tm-contact-center" style="margin-left:31vh">
                            <div class="input-group tm-mb-30">
                                <asp:TextBox ID="name" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Username" required=""></asp:TextBox>
                            </div>
                            <div class="input-group tm-mb-30">
                                <asp:TextBox ID="password" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Password" TextMode="Password" required=""></asp:TextBox>
                            </div>
                        </div>
                        <div class="input-group justify-content-center" style="margin-top: 5vh">
                             <asp:Button ID="submit" runat="server" Text="Login" class="btn btn-primary tm-btn-pad-2" OnClick="submit_Click" />
                        </div>
                        <div class="input-group tm-mb-30" style="margin-left:45vh;margin-top:5vh">
                            don't have an account? <a href="registration.aspx" >Sign up</a>
                        </div>
                    </form>
                </div>
             </div>
        </li>
</asp:Content>


