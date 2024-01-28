﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="VaccineProject.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 195px;
        }
        .auto-style4 {
            width: 269px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="3">Admin Login Page</td>
        </tr>
        <tr>
            <td class="auto-style3">User Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtUser" runat="server" ValidationGroup="g1"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ForeColor="Red" ControlToValidate="TxtUser" OnDataBinding="Button1_Click" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtPwd" runat="server" ValidationGroup="g1" TextMode="Password"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ForeColor="Red" ControlToValidate="TxtPwd" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="LblCaptcha" runat="server" Font-Italic="True" Font-Names="Bodoni MT" ForeColor="Blue" Text="Captcha"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Captcha"></asp:Label>
                &nbsp;&nbsp;</td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtCaptcha" runat="server" ValidationGroup="g1"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Captcha" ForeColor="Red" ControlToValidate="TxtCaptcha" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="BtnLogin" runat="server" OnClick="Button1_Click" Text="Login" ValidationGroup="g1" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Page_Load" PostBackUrl="~/AForgotPwd.aspx">Forgot Password</asp:LinkButton>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
