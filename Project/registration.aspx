<%@ Page Title="" Language="C#" MasterPageFile="~/Project/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <ul>
    <li data-page-no="4">
        <div class="mx-auto page-width-2" style="margin-top: 10vh">
            <div class="row">
                <div class="col-md-6 ms-auto" style="margin-right: 20vh">
                    <h2 class="mb-4" style="align-content: center">Registration Here!!</h2>
                </div>
            </div>
            <div class="row">
                <%--<form method="POST" class="contact-form">--%>
                    <div class="col-md-6 tm-contact-left">

                        <div class="input-group tm-mb-30">
                            <asp:TextBox ID="name" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Username" required=""></asp:TextBox>
                        </div>
                        <div class="input-group tm-mb-30">
                            <asp:TextBox ID="email" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Email" required=""></asp:TextBox>
                        </div>
                        <div class="input-group tm-mb-30">
                            <asp:TextBox ID="contact" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Contact no" MaxLength="10" required=""></asp:TextBox>
                        </div>

                    </div>
                    <div class="col-md-6 tm-contact-right">
                        <div class="input-group tm-mb-30">
                            <asp:TextBox ID="password" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Password" TextMode="Password" required="" CausesValidation="False"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not match" ControlToValidate="cpassword" ControlToCompare="password"></asp:CompareValidator>
                        </div>
                        <div class="input-group tm-mb-30">
                            <asp:TextBox ID="cpassword" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Confirm Password" TextMode="Password" required=""></asp:TextBox>
                        </div>
                        <div class="input-group tm-mb-30">
                            <asp:TextBox ID="address" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Address" required=""></asp:TextBox>
                        </div>

                    </div>
                    <div class="input-group justify-content-center" style="margin-top: 10vh">
                        <asp:Button ID="submit" runat="server" Text="Submit" class="btn btn-primary tm-btn-pad-2" OnClick="submit_Click" />
                    </div>
                <div class="input-group tm-mb-30" style="margin-left: 45vh; margin-top: 5vh">
                    I have an account already <a href="login.aspx">Sign in</a>
                </div>
                <%--</form>--%>
            </div>
        </div>
    </li>
        
    </ul>

</asp:Content>


