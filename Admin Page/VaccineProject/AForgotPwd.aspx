<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AForgotPwd.aspx.cs" Inherits="VaccineProject.AForgotPwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
        color: #0000FF;
    }
    .auto-style3 {
        width: 235px;
    }
    .auto-style4 {
        width: 227px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="3">Create New Password for Admin</td>
    </tr>
    <tr>
        <td class="auto-style3">User Name</td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtUser" runat="server" Width="193px"></asp:TextBox>
            <br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUser" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Password</td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtPwd" runat="server" TextMode="Password" Width="199px"></asp:TextBox>
            <br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPwd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Confirm Password</td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtCPwd" runat="server" TextMode="Password" Width="195px"></asp:TextBox>
            <br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtCPwd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="LblMsg" runat="server"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Button ID="BtnNewPwd" runat="server" OnClick="BtnNewPwd_Click" Text="Save" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
