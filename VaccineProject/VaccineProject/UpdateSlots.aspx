<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateSlots.aspx.cs" Inherits="VaccineProject.UpdateSlots" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        width: 234px;
    }
    .auto-style4 {
        width: 195px;
    }
    .auto-style5 {
        width: 201px;
    }
    .auto-style6 {
        width: 251px;
    }
        .auto-style7 {
            width: 355px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="6">Update Slots Details</td>
    </tr>
    <tr>
        <td class="auto-style3">Choose Date Time</td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtDate" runat="server" TextMode="DateTime" ValidationGroup="g12"></asp:TextBox>
        </td>
        <td class="auto-style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtDate" ErrorMessage="*" ForeColor="Red" ValidationGroup="g12"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style6">Choose DateId to Delete</td>
        <td class="auto-style7">
            <asp:DropDownList ID="DDLDat" runat="server" DataSourceID="SqlDataSource1" DataTextField="DatetimeID" DataValueField="DatetimeID" ValidationGroup="g13">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString10 %>" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString10.ProviderName %>" SelectCommand="SELECT [DatetimeID] FROM [DateTimeSlots]"></asp:SqlDataSource>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtCity" ErrorMessage="*" ForeColor="Red" ValidationGroup="g13"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">
            <asp:Label ID="LblMsg1" runat="server"></asp:Label>
        </td>
        <td colspan="2">
            <asp:Button ID="BtnDel" runat="server" OnClick="BtnDel_Click" Text="Delete" ValidationGroup="g13" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="LblMsg" runat="server"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Add" ValidationGroup="g12" />
        </td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Enter City Name</td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtCity" runat="server" TextMode="DateTime" ValidationGroup="g11"></asp:TextBox>
        </td>
        <td class="auto-style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtCity" ErrorMessage="*" ForeColor="Red" ValidationGroup="g11"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style6">Choose CityName to </td>
        <td>
            <asp:DropDownList ID="DDLCity" runat="server" DataSourceID="SqlDataSource2" DataTextField="CityName" DataValueField="CityName" ValidationGroup="g14">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString11 %>" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString11.ProviderName %>" SelectCommand="SELECT [CityName] FROM [Location]"></asp:SqlDataSource>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtCity" ErrorMessage="*" ForeColor="Red" ValidationGroup="g14"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">
            <asp:Label ID="LblMsg2" runat="server"></asp:Label>
        </td>
        <td colspan="2">
            <asp:Button ID="BtnDlt2" runat="server" OnClick="BtnDlt2_Click" Text="Delete" ValidationGroup="g14" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="LblMsg0" runat="server"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Button ID="BtnUpd" runat="server" OnClick="BtnUpd_Click" Text="Add City" ValidationGroup="g11" />
        </td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td colspan="4">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/AdminDashboard.aspx">Back</asp:LinkButton>
        </td>
    </tr>
</table>
</asp:Content>
