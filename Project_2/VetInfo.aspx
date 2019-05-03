<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VetInfo.aspx.cs" Inherits="VetInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">


		.auto-style1 {
			width: 100%;
		}
		.auto-style12 {
			width: 132px;
			height: 27px;
		}
		.auto-style13 {
			width: 187px;
			height: 27px;
		}
		.auto-style15 {
			width: 118px;
			height: 27px;
		}
		.auto-style16 {
			width: 93px;
			height: 27px;
		}
		.auto-style2 {
			width: 132px;
			height: 33px;
		}
		.auto-style3 {
			width: 187px;
			height: 33px;
		}
		.auto-style5 {
			width: 118px;
			height: 33px;
		}
		.auto-style6 {
			width: 93px;
			height: 33px;
		}
		</style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Vet Info Form
        </h1>
		<p>
			<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="VetKey" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
				<Fields>
					<asp:BoundField DataField="VetKey" HeaderText="VetKey" ReadOnly="True" SortExpression="VetKey" />
					<asp:BoundField DataField="VetAddress" HeaderText="VetAddress" SortExpression="VetAddress" />
					<asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
					<asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
					<asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
					<asp:BoundField DataField="TechName" HeaderText="TechName" SortExpression="TechName" />
					<asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
					<asp:BoundField DataField="VisitCost" HeaderText="VisitCost" SortExpression="VisitCost" />
					<asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
				</Fields>
			</asp:DetailsView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" DeleteCommand="DELETE FROM [CowVeterinarian] WHERE [VetKey] = @VetKey" InsertCommand="INSERT INTO [CowVeterinarian] ([VetKey], [VetAddress], [City], [State], [ZipCode], [TechName], [Phone], [VisitCost], [TotalCost]) VALUES (@VetKey, @VetAddress, @City, @State, @ZipCode, @TechName, @Phone, @VisitCost, @TotalCost)" SelectCommand="SELECT * FROM [CowVeterinarian]" UpdateCommand="UPDATE [CowVeterinarian] SET [VetAddress] = @VetAddress, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [TechName] = @TechName, [Phone] = @Phone, [VisitCost] = @VisitCost, [TotalCost] = @TotalCost WHERE [VetKey] = @VetKey">
				<DeleteParameters>
					<asp:Parameter Name="VetKey" Type="String" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="VetKey" Type="String" />
					<asp:Parameter Name="VetAddress" Type="String" />
					<asp:Parameter Name="City" Type="String" />
					<asp:Parameter Name="State" Type="String" />
					<asp:Parameter Name="ZipCode" Type="String" />
					<asp:Parameter Name="TechName" Type="String" />
					<asp:Parameter Name="Phone" Type="String" />
					<asp:Parameter Name="VisitCost" Type="Decimal" />
					<asp:Parameter Name="TotalCost" Type="Decimal" />
				</InsertParameters>
				<UpdateParameters>
					<asp:Parameter Name="VetAddress" Type="String" />
					<asp:Parameter Name="City" Type="String" />
					<asp:Parameter Name="State" Type="String" />
					<asp:Parameter Name="ZipCode" Type="String" />
					<asp:Parameter Name="TechName" Type="String" />
					<asp:Parameter Name="Phone" Type="String" />
					<asp:Parameter Name="VisitCost" Type="Decimal" />
					<asp:Parameter Name="TotalCost" Type="Decimal" />
					<asp:Parameter Name="VetKey" Type="String" />
				</UpdateParameters>
			</asp:SqlDataSource>
        </p>
		<p>
			&nbsp;</p>
		<p>
			<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TreatmentKey" DataSourceID="SqlDataSource2">
				<Columns>
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
					<asp:BoundField DataField="TreatmentKey" HeaderText="TreatmentKey" ReadOnly="True" SortExpression="TreatmentKey" />
					<asp:BoundField DataField="CowMedicalKey" HeaderText="CowMedicalKey" SortExpression="CowMedicalKey" />
					<asp:BoundField DataField="Medication" HeaderText="Medication" SortExpression="Medication" />
					<asp:BoundField DataField="MediconQuantity" HeaderText="MediconQuantity" SortExpression="MediconQuantity" />
					<asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
					<asp:BoundField DataField="VetID" HeaderText="VetID" SortExpression="VetID" />
					<asp:BoundField DataField="SymptomKey" HeaderText="SymptomKey" SortExpression="SymptomKey" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" DeleteCommand="DELETE FROM [CowTreatmentPlan] WHERE [TreatmentKey] = @TreatmentKey" InsertCommand="INSERT INTO [CowTreatmentPlan] ([TreatmentKey], [CowMedicalKey], [Medication], [MediconQuantity], [Cost], [VetID], [SymptomKey]) VALUES (@TreatmentKey, @CowMedicalKey, @Medication, @MediconQuantity, @Cost, @VetID, @SymptomKey)" SelectCommand="SELECT * FROM [CowTreatmentPlan] WHERE ([VetID] = @VetID)" UpdateCommand="UPDATE [CowTreatmentPlan] SET [CowMedicalKey] = @CowMedicalKey, [Medication] = @Medication, [MediconQuantity] = @MediconQuantity, [Cost] = @Cost, [VetID] = @VetID, [SymptomKey] = @SymptomKey WHERE [TreatmentKey] = @TreatmentKey">
				<DeleteParameters>
					<asp:Parameter Name="TreatmentKey" Type="String" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="TreatmentKey" Type="String" />
					<asp:Parameter Name="CowMedicalKey" Type="String" />
					<asp:Parameter Name="Medication" Type="String" />
					<asp:Parameter Name="MediconQuantity" Type="Int32" />
					<asp:Parameter Name="Cost" Type="Decimal" />
					<asp:Parameter Name="VetID" Type="String" />
					<asp:Parameter Name="SymptomKey" Type="String" />
				</InsertParameters>
				<SelectParameters>
					<asp:ControlParameter ControlID="DetailsView1" Name="VetID" PropertyName="SelectedValue" Type="String" />
				</SelectParameters>
				<UpdateParameters>
					<asp:Parameter Name="CowMedicalKey" Type="String" />
					<asp:Parameter Name="Medication" Type="String" />
					<asp:Parameter Name="MediconQuantity" Type="Int32" />
					<asp:Parameter Name="Cost" Type="Decimal" />
					<asp:Parameter Name="VetID" Type="String" />
					<asp:Parameter Name="SymptomKey" Type="String" />
					<asp:Parameter Name="TreatmentKey" Type="String" />
				</UpdateParameters>
			</asp:SqlDataSource>
		</p>
		<table class="auto-style1">
			<tr>
				<td class="auto-style12"></td>
				<td class="auto-style13">TreatmentKey</td>
				<td class="auto-style13">CowMedicalKey</td>
				<td class="auto-style13">Medication</td>
				<td class="auto-style15">MedicationQuantity</td>
				<td class="auto-style16">Cost</td>
				<td class="auto-style16">SymptomKey</td>
			</tr>
			<tr>
				<td class="auto-style2">
					<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="InsertVetInfoData" />
				</td>
				<td class="auto-style3">
					<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
				</td>
				<td class="auto-style3">
					<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
				</td>
				<td class="auto-style3">
					<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
				</td>
				<td class="auto-style5">
					<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
				</td>
				<td class="auto-style6">
					<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
				</td>
				<td class="auto-style6">
					<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
				</td>
			</tr>
		</table>
		<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="InsertDataVetInfo"></asp:Label>
		<p>
			&nbsp;</p>
		<asp:Menu ID="Menu1" runat="server">
			<Items>
				<asp:MenuItem NavigateUrl="~/CowHome.aspx" Text="CowData" Value="CowData">
					<asp:MenuItem NavigateUrl="~/CowQueries.aspx" Text="CowQueries" Value="CowQueries"></asp:MenuItem>
					<asp:MenuItem NavigateUrl="~/PurchaseSupplier.aspx" Text="PurchSupplierData" Value="PurchSupplierData"></asp:MenuItem>
					<asp:MenuItem NavigateUrl="~/Herd.aspx" Text="HerdData" Value="HerdData"></asp:MenuItem>
					<asp:MenuItem NavigateUrl="~/VetInfo.aspx" Text="VetInfoData" Value="VetInfoData"></asp:MenuItem>
				</asp:MenuItem>
			</Items>
		</asp:Menu>
    	</p>
    </form>
</body>
</html>
