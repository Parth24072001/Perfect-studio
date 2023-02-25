<%@ Page Title="" Language="C#" MasterPageFile="~/Project/MasterPage.master" AutoEventWireup="true" CodeFile="bookingform.aspx.cs" Inherits="bookingform" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <ul>
        <li data-page-no="4">
            <div class="mx-auto page-width-2" style="margin-top: 10vh" aria-multiline="True">
                <div class="row">
                    <div class="col-md-6 ms-auto" style="margin-right: 20vh">
                        <h2 class="mb-4" style="align-content: center">Booking Here!!</h2>
                    </div>
                </div>
                <div class="row">
<%--                    <form method="POST" class="contact-form">--%>
                        <div class="row">
                            <div class="col-md-6 ms-auto" style="margin-right: 20vh">
                                <h2 class="mb-4" style="margin-left: -50vh">User Detail..</h2>
                            </div>
                        </div>
                        <div class="col-md-6 tm-contact-left">

                            <div class="input-group tm-mb-30">
                                <asp:Label ID="name" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" ></asp:Label>
                            </div>
                            
                            <div class="input-group tm-mb-30">
                                <asp:Label ID="contact" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0"></asp:Label>
                            </div>
                        </div>
                        <div class="col-md-6 tm-contact-right">
                            <div class="input-group tm-mb-30">
                                <asp:Label ID="email" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" ></asp:Label>
                            </div>
                            <div class="input-group tm-mb-30">
                                <asp:Label ID="address" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" ></asp:Label>
                            </div>

                        </div>
<%--                        Order Detail.....--%>

                        <div class="row">
                            <div class="col-md-6 ms-auto" style="margin-right: 20vh">
                                <h2 class="mb-4" style="margin-left: -50vh">Event Detail..</h2>
                            </div>
                        </div>
                        <div class="col-md-6 tm-contact-left">

                            <div class="input-group tm-mb-30">
                                <asp:Label ID="maincat" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0"></asp:Label>
                            </div>
                            <div class="input-group tm-mb-30">
                                <asp:Calendar ID="Calendar1" runat="server"  ClientIDMode="Predictable" BackColor="#ffcccc" BorderStyle="Double" BorderWidth="3px" OnDayRender="Calendar1_DayRender" OnVisibleMonthChanged="Calendar1_VisibleMonthChanged"></asp:Calendar>
                            </div>

                        </div>
                        <div class="col-md-6 tm-contact-right">
                    
                            <div class="input-group tm-mb-30">
                                <asp:TextBox ID="TextBox3" Type="number" runat="server" class="w3-input w3-border form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Number of Days" required=""></asp:TextBox>
                            </div>
                            <div class="input-group tm-mb-30">
                                <asp:TextBox ID="TextBox7" runat="server" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Event Location" TextMode="MultiLine" Rows="3" required=""></asp:TextBox>
                            </div>

                        </div>
<%--                        END--%>
<%--                        Amount Detail--%>

                        <div class="row">
                        <div class="col-md-6 ms-auto" style="margin-right: 20vh">
                            <h2 class="mb-4" style="margin-left: -50vh">Amount Detail..</h2>
                        </div>
                    </div>
                    <div class="col-md-6 " style="float:left">

                        <div class="input-group tm-mb-30" style="height: 20px;font-size:x-large">
                            <asp:Label ID="Label2" runat="server" Text="Types Of Shooting" Font-Bold="true"></asp:Label>
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" Style="height: 100%; width: 100%;" AutoPostBack="true" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                                <asp:ListItem >Photography</asp:ListItem>
                                <asp:ListItem >Videography</asp:ListItem>
                                <asp:ListItem >cinematicvideography</asp:ListItem>
                                <asp:ListItem >Album</asp:ListItem>
                            </asp:CheckBoxList>

                           
                        </div>
                        <div class="col-md-6 " style="float:left;margin-left:35vh;margin-top:2px;">
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label><br />
                            <asp:Label ID="Label7" runat="server" Text="Label" style="padding-bottom:-20vh"></asp:Label><br />
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label><br />
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-6 " style="margin-left:-10vh;">

                        <div class="input-group tm-mb-30" style="height: 20px; font-size: x-large" >
                            <asp:Label ID="Label3" runat="server" Text="Range Of Packages" Font-Bold="true" ></asp:Label><br />
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Style="height: 100%; width: 100%;" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value="50000">A  Rs.50000</asp:ListItem>
                                <asp:ListItem Value="30000">B  Rs.30000</asp:ListItem>
                                <asp:ListItem Value="15000">C Rs.15000</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>                        

                    </div>
                    <div class="col-md-6 " style="float:right;margin-right:-100vh">

                        <div class="input-group tm-mb-30" style="height: 20px; font-size: x-large">
                            <asp:Label ID="Label5" runat="server" Text="Types Of Clothes" Font-Bold="true"></asp:Label><br />
                            <asp:CheckBoxList ID="CheckBoxList2" runat="server" Style="height: 100%; width: 100%;" AutoPostBack="true">
                            <asp:ListItem>Tradisional</asp:ListItem>
                            <asp:ListItem>Marathi</asp:ListItem>
                            <asp:ListItem>Rajashthani</asp:ListItem>
                            <asp:ListItem>Kathiyavadi</asp:ListItem>
                            <asp:ListItem>Westen</asp:ListItem>
                        </asp:CheckBoxList>

                        </div>
                    </div>
                    <asp:Label ID="Label9" Visible="false" runat="server" Text="0" ></asp:Label>
                    <asp:Label ID="Label4" Visible="false" runat="server" Text="0" style="float:right"></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text="Total Amount :-" style="margin-top:15vh;float:left"></asp:Label> <asp:Label ID="Label10" runat="server" Text="" style="margin-left:25vh;margin-top:-4vh"></asp:Label>

<%--                        END--%>
                        <div class="input-group justify-content-center" style="margin-top: 10vh">
                            <asp:Button ID="submit" runat="server" Text="Submit" class="btn btn-primary tm-btn-pad-2" OnClick="submit_Click" />
                        </div>
<%--                    </form>--%>
                </div>
            </div>
        </li>

    </ul>


</asp:Content>


