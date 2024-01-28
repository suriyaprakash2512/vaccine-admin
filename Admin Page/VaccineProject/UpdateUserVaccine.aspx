<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateUserVaccine.aspx.cs" Inherits="VaccineProject.UpdateUserVaccine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
        color: #660066;
    }
        .auto-style3 {
            width: 384px;
        }
        .auto-style4 {
            width: 250px;
        }
        .auto-style5 {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="4">Update Vaccine Detail for user who booked</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="384px">
                <Columns>
                    <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False" ReadOnly="True" SortExpression="BookingId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="NumberOfDose" HeaderText="NumberOfDose" SortExpression="NumberOfDose" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString36 %>" DeleteCommand="DELETE FROM [BookForVaccine] WHERE [BookingId] = @original_BookingId AND [Name] = @original_Name AND (([NumberOfDose] = @original_NumberOfDose) OR ([NumberOfDose] IS NULL AND @original_NumberOfDose IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [BookForVaccine] ([Name], [NumberOfDose], [Status]) VALUES (@Name, @NumberOfDose, @Status)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString36.ProviderName %>" SelectCommand="SELECT [BookingId], [Name], [NumberOfDose], [Status] FROM [BookForVaccine]" UpdateCommand="UPDATE [BookForVaccine] SET [Name] = @Name, [NumberOfDose] = @NumberOfDose, [Status] = @Status WHERE [BookingId] = @original_BookingId AND [Name] = @original_Name AND (([NumberOfDose] = @original_NumberOfDose) OR ([NumberOfDose] IS NULL AND @original_NumberOfDose IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_BookingId" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_NumberOfDose" Type="Int32" />
                    <asp:Parameter Name="original_Status" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="NumberOfDose" Type="Int32" />
                    <asp:Parameter Name="Status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="NumberOfDose" Type="Int32" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="original_BookingId" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_NumberOfDose" Type="Int32" />
                    <asp:Parameter Name="original_Status" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td class="auto-style4">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">BookingId</td>
        <td class="auto-style4">
            <asp:DropDownList ID="DDListBookId" runat="server" DataSourceID="SqlDataSource1" DataTextField="BookingId" DataValueField="BookingId" ValidationGroup="g2">
            </asp:DropDownList>
            <br />
        </td>
        <td colspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DDListBookId" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">UserName</td>
        <td class="auto-style4">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="Name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString33 %>" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString33.ProviderName %>" SelectCommand="SELECT [Name] FROM [BookForVaccine]"></asp:SqlDataSource>
        </td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Number Of Dose Taken</td>
        <td class="auto-style4">
            <asp:DropDownList ID="DDListDose" runat="server" DataSourceID="SqlDataSource2" DataTextField="NumberOfDose" DataValueField="NumberOfDose" ValidationGroup="g2">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString30 %>" DeleteCommand="DELETE FROM [VaccineDose] WHERE [NumberOfDose] = @original_NumberOfDose" InsertCommand="INSERT INTO [VaccineDose] ([NumberOfDose]) VALUES (@NumberOfDose)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString30.ProviderName %>" SelectCommand="SELECT * FROM [VaccineDose]">
                <DeleteParameters>
                    <asp:Parameter Name="original_NumberOfDose" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NumberOfDose" Type="Int32" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
        </td>
        <td colspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDListDose" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Status</td>
        <td class="auto-style4">
            <asp:RadioButtonList ID="RadioBtnStatus" runat="server" DataSourceID="SqlDataSource3" DataTextField="Status" DataValueField="Status" ValidationGroup="g2" Width="233px">
            </asp:RadioButtonList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString31 %>" DeleteCommand="DELETE FROM [StatusOfVaccine] WHERE [Status] = @original_Status" InsertCommand="INSERT INTO [StatusOfVaccine] ([Status]) VALUES (@Status)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString31.ProviderName %>" SelectCommand="SELECT * FROM [StatusOfVaccine]">
                <DeleteParameters>
                    <asp:Parameter Name="original_Status" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Status" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
        <td colspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioBtnStatus" ErrorMessage="*" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="LblMsg" runat="server" ForeColor="#0066FF"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Button ID="BtnUpdate" runat="server" OnClick="BtnUpdate_Click" Text="Update" ValidationGroup="g2" />
        </td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" ValidationGroup="g3" />
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtSearch" runat="server" ValidationGroup="g3"></asp:TextBox>
        </td>
        <td class="auto-style5">
            &nbsp;</td>
        <td>
            <asp:LinkButton ID="LnkBtn" runat="server" PostBackUrl="~/AdminDashboard.aspx">Back</asp:LinkButton>
        </td>
    </tr>
</table>
</asp:Content>
