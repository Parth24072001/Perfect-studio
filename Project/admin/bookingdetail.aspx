<%@ Page Title="" Language="C#" MasterPageFile="~/Project/admin/MasterPage2.master" AutoEventWireup="true" CodeFile="bookingdetail.aspx.cs" Inherits="admin_bookingdetail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <div class="container">
        <header class="main-header clearfix">
            <h1 class="name" style="font-family: Engravers MT">Order Detail<span></span></h1>
            <%--            <asp:Button ID="Button1" runat="server" CssClass="button button-5" Text="Add Event" PostBackUrl="~/admin/index.aspx" Style="margin-top: 10vh; background-color:darkslateblue" />--%>
        </header>

        <div class="content clearfix" style="margin-top: -10vh">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" CellSpadding="25" CellSpacing="20" Font-Bold="true" Style="margin-left: -15vh;">

                <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username"></asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                    <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="services" HeaderText="services" SortExpression="services"></asp:BoundField>
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date"></asp:BoundField>
                    <asp:BoundField DataField="day" HeaderText="day" SortExpression="day"></asp:BoundField>
                    <asp:BoundField DataField="location" HeaderText="location" SortExpression="location"></asp:BoundField>
                    <asp:BoundField DataField="shooting" HeaderText="shooting" SortExpression="shooting"></asp:BoundField>
                    <asp:BoundField DataField="clothes" HeaderText="clothes" SortExpression="clothes"></asp:BoundField>
                    <asp:BoundField DataField="package" HeaderText="package" SortExpression="package"></asp:BoundField>
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"></FooterStyle>

                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7"></HeaderStyle>

                <PagerStyle HorizontalAlign="Right" BackColor="#E7E7FF" ForeColor="#4A3C8C"></PagerStyle>

                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C"></RowStyle>

                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F4F4FD"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#5A4C9D"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#D8D8F0"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#3E3277"></SortedDescendingHeaderStyle>
            </asp:GridView>

            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:perfectstudio %>' SelectCommand="SELECT * FROM [booking]"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>


