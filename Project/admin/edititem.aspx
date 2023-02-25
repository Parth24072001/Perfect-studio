<%@ Page Title="" Language="C#" MasterPageFile="~/Project/admin/MasterPage2.master" AutoEventWireup="true" CodeFile="edititem.aspx.cs" Inherits="admin_edititem" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

        <li data-page-no="4">
        <div class="mx-auto page-width-2">
            <div class="row">
                <div class="col-md-6 me-0 ms-auto">
                    <h2 class="mb-4">Contact Us</h2>
                </div>
            </div>
            <div class="row">
                <%--<form method="POST" class="contact-form">--%>
                    <div class="col-md-6 tm-contact-left">
                        <div class="input-group tm-mb-30">
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0">
                                <asp:ListItem Value="Wedding" style="background-color:black">Wedding</asp:ListItem>
                                <asp:ListItem Value="Pre-Wedding" style="background-color:black">Pre-Wedding</asp:ListItem>
                                <asp:ListItem Value="Birthday" style="background-color:black">Birthday</asp:ListItem>
                                <asp:ListItem Value="Baby+Shower" style="background-color:black">Baby Shower</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="input-group tm-mb-30">
                            <asp:TextBox ID="location" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Location" required=""></asp:TextBox>
                        </div>
                        <div class="input-group tm-mb-30">
                            <asp:TextBox ID="detail" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Detail" required=""></asp:TextBox>
                        </div>                      
                        <div class="input-group tm-mb-30">
                            <asp:Image ID="Image1" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0"/>
                            <asp:FileUpload ID="image" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" />
                        </div>
                    </div>
                    <div class="col-md-6 tm-contact-right">
                        <div class="input-group tm-mb-30">
                            <asp:TextBox ID="photo_p" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Photo Rs" required=""></asp:TextBox>
                        </div>
                        <div class="input-group tm-mb-30">
                            <asp:TextBox ID="video_p" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Video Rs" required=""></asp:TextBox>
                        </div>
                        <div class="input-group tm-mb-30">
                            <asp:TextBox ID="album_p" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Album Rs" required=""></asp:TextBox>
                        </div>
                        <div class="input-group tm-mb-30">
                            <asp:TextBox ID="cinematic_video" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Cinematic Video Rs" required=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="input-group justify-content-end">
                        <asp:Button ID="Update" runat="server" class="btn btn-primary tm-btn-pad-2" Text="Update" OnClick="Update_Click" />
                    </div>
                <%--</form>--%>
            </div>
        </div>
    </li>


</asp:Content>


