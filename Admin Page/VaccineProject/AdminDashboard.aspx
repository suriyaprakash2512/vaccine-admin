<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="VaccineProject.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
        color: #CC0099;
    }
    .auto-style3 {
        text-align: center;
    }
    .auto-style4 {
        background-color: #FFFFFF;
    }
    .auto-style5 {
        text-align: center;
        color: #FF33CC;
    }
    .auto-style6 {
        text-align: center;
        color: #00CC00;
    }
    .newStyle1 {
        border: thin groove #FF0000;
    }
    .auto-style7 {
        width: 507px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="2">Admin Dashboard Page</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="2">User Details Who Booked For Vaccination</td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <div class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style4" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False" ReadOnly="True" SortExpression="BookingId" />
                    <asp:BoundField DataField="VaccineName" HeaderText="VaccineName" SortExpression="VaccineName" />
                    <asp:BoundField DataField="CityName" HeaderText="CityName" SortExpression="CityName" />
                    <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                    <asp:BoundField DataField="DateTimings" HeaderText="DateTimings" SortExpression="DateTimings" />
                    <asp:BoundField DataField="NumberOfDose" HeaderText="NumberOfDose" SortExpression="NumberOfDose" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString17 %>" DeleteCommand="DELETE FROM [BookForVaccine] WHERE [BookingId] = @original_BookingId AND (([VaccineName] = @original_VaccineName) OR ([VaccineName] IS NULL AND @original_VaccineName IS NULL)) AND (([CityName] = @original_CityName) OR ([CityName] IS NULL AND @original_CityName IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND [Name] = @original_Name AND [MobileNumber] = @original_MobileNumber AND (([DateTimings] = @original_DateTimings) OR ([DateTimings] IS NULL AND @original_DateTimings IS NULL)) AND (([NumberOfDose] = @original_NumberOfDose) OR ([NumberOfDose] IS NULL AND @original_NumberOfDose IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [BookForVaccine] ([VaccineName], [CityName], [UserID], [Name], [MobileNumber], [DateTimings], [NumberOfDose], [Status]) VALUES (@VaccineName, @CityName, @UserID, @Name, @MobileNumber, @DateTimings, @NumberOfDose, @Status)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString17.ProviderName %>" SelectCommand="SELECT * FROM [BookForVaccine]" UpdateCommand="UPDATE [BookForVaccine] SET [VaccineName] = @VaccineName, [CityName] = @CityName, [UserID] = @UserID, [Name] = @Name, [MobileNumber] = @MobileNumber, [DateTimings] = @DateTimings, [NumberOfDose] = @NumberOfDose, [Status] = @Status WHERE [BookingId] = @original_BookingId AND (([VaccineName] = @original_VaccineName) OR ([VaccineName] IS NULL AND @original_VaccineName IS NULL)) AND (([CityName] = @original_CityName) OR ([CityName] IS NULL AND @original_CityName IS NULL)) AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND [Name] = @original_Name AND [MobileNumber] = @original_MobileNumber AND (([DateTimings] = @original_DateTimings) OR ([DateTimings] IS NULL AND @original_DateTimings IS NULL)) AND (([NumberOfDose] = @original_NumberOfDose) OR ([NumberOfDose] IS NULL AND @original_NumberOfDose IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_BookingId" Type="Int32" />
                        <asp:Parameter Name="original_VaccineName" Type="String" />
                        <asp:Parameter Name="original_CityName" Type="String" />
                        <asp:Parameter Name="original_UserID" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_MobileNumber" Type="String" />
                        <asp:Parameter Name="original_DateTimings" Type="DateTime" />
                        <asp:Parameter Name="original_NumberOfDose" Type="Int32" />
                        <asp:Parameter Name="original_Status" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="VaccineName" Type="String" />
                        <asp:Parameter Name="CityName" Type="String" />
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="MobileNumber" Type="String" />
                        <asp:Parameter Name="DateTimings" Type="DateTime" />
                        <asp:Parameter Name="NumberOfDose" Type="Int32" />
                        <asp:Parameter Name="Status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="VaccineName" Type="String" />
                        <asp:Parameter Name="CityName" Type="String" />
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="MobileNumber" Type="String" />
                        <asp:Parameter Name="DateTimings" Type="DateTime" />
                        <asp:Parameter Name="NumberOfDose" Type="Int32" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="original_BookingId" Type="Int32" />
                        <asp:Parameter Name="original_VaccineName" Type="String" />
                        <asp:Parameter Name="original_CityName" Type="String" />
                        <asp:Parameter Name="original_UserID" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_MobileNumber" Type="String" />
                        <asp:Parameter Name="original_DateTimings" Type="DateTime" />
                        <asp:Parameter Name="original_NumberOfDose" Type="Int32" />
                        <asp:Parameter Name="original_Status" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:LinkButton ID="LnkBtn1" runat="server" PostBackUrl="~/UpdateUserVaccine.aspx">Update User Vaccine Details</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2"><span class="newStyle1">Available Vaccination Details</span></td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="VaccineName" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="VaccineID" HeaderText="VaccineID" InsertVisible="False" ReadOnly="True" SortExpression="VaccineID" />
                    <asp:BoundField DataField="VaccineName" HeaderText="VaccineName" ReadOnly="True" SortExpression="VaccineName" />
                    <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
                    <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString18 %>" DeleteCommand="DELETE FROM [VaccineDetails] WHERE [VaccineName] = @original_VaccineName AND [VaccineID] = @original_VaccineID AND (([Manufacturer] = @original_Manufacturer) OR ([Manufacturer] IS NULL AND @original_Manufacturer IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))" InsertCommand="INSERT INTO [VaccineDetails] ([VaccineName], [Manufacturer], [Stock]) VALUES (@VaccineName, @Manufacturer, @Stock)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString18.ProviderName %>" SelectCommand="SELECT * FROM [VaccineDetails]" UpdateCommand="UPDATE [VaccineDetails] SET [VaccineID] = @VaccineID, [Manufacturer] = @Manufacturer, [Stock] = @Stock WHERE [VaccineName] = @original_VaccineName AND [VaccineID] = @original_VaccineID AND (([Manufacturer] = @original_Manufacturer) OR ([Manufacturer] IS NULL AND @original_Manufacturer IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_VaccineName" Type="String" />
                    <asp:Parameter Name="original_VaccineID" Type="Int32" />
                    <asp:Parameter Name="original_Manufacturer" Type="String" />
                    <asp:Parameter Name="original_Stock" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="VaccineName" Type="String" />
                    <asp:Parameter Name="Manufacturer" Type="String" />
                    <asp:Parameter Name="Stock" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="VaccineID" Type="Int32" />
                    <asp:Parameter Name="Manufacturer" Type="String" />
                    <asp:Parameter Name="Stock" Type="Int32" />
                    <asp:Parameter Name="original_VaccineName" Type="String" />
                    <asp:Parameter Name="original_VaccineID" Type="Int32" />
                    <asp:Parameter Name="original_Manufacturer" Type="String" />
                    <asp:Parameter Name="original_Stock" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/UpdateVaccineDetails.aspx">Update Vaccine Details</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">Available Slots,Cities with Datetime</td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="DateTimings" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="DatetimeID" HeaderText="DatetimeID" ReadOnly="True" SortExpression="DatetimeID" InsertVisible="False" />
                    <asp:BoundField DataField="DateTimings" HeaderText="DateTimings" ReadOnly="True" SortExpression="DateTimings" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString19 %>" DeleteCommand="DELETE FROM [DateTimeSlots] WHERE [DateTimings] = @original_DateTimings AND [DatetimeID] = @original_DatetimeID" InsertCommand="INSERT INTO [DateTimeSlots] ([DateTimings]) VALUES (@DateTimings)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString19.ProviderName %>" SelectCommand="SELECT * FROM [DateTimeSlots]" UpdateCommand="UPDATE [DateTimeSlots] SET [DatetimeID] = @DatetimeID WHERE [DateTimings] = @original_DateTimings AND [DatetimeID] = @original_DatetimeID">
                <DeleteParameters>
                    <asp:Parameter Name="original_DateTimings" Type="DateTime" />
                    <asp:Parameter Name="original_DatetimeID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DateTimings" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DatetimeID" Type="Int32" />
                    <asp:Parameter Name="original_DateTimings" Type="DateTime" />
                    <asp:Parameter Name="original_DatetimeID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="CityName" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="CityName" HeaderText="CityName" ReadOnly="True" SortExpression="CityName" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:VaccineManagementDbConnectionString22 %>" DeleteCommand="DELETE FROM [Location] WHERE [CityName] = @original_CityName" InsertCommand="INSERT INTO [Location] ([CityName]) VALUES (@CityName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:VaccineManagementDbConnectionString22.ProviderName %>" SelectCommand="SELECT [CityName] FROM [Location]">
                <DeleteParameters>
                    <asp:Parameter Name="original_CityName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CityName" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/UpdateSlots.aspx">Update Slots</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
</table>
</asp:Content>
