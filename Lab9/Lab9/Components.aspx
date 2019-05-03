<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Components.aspx.cs" Inherits="Lab9.Components" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 100%;
		}
		.auto-style2 {
			width: 132px;
		}
		.auto-style3 {
			width: 187px;
		}
		.auto-style5 {
			width: 118px;
		}
		.auto-style6 {
			width: 93px;
		}
		.auto-style7 {
			width: 121px;
		}
		.auto-style8 {
			width: 163px;
		}
		.auto-style9 {
			width: 145px;
		}
		.auto-style11 {
			width: 74px;
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
		.auto-style17 {
			width: 121px;
			height: 27px;
		}
		.auto-style18 {
			width: 163px;
			height: 27px;
		}
		.auto-style19 {
			width: 132px;
			height: 32px;
		}
		.auto-style20 {
			width: 145px;
			height: 32px;
		}
		.auto-style22 {
			width: 74px;
			height: 32px;
		}
		.auto-style23 {
			width: 93px;
			height: 32px;
		}
		.auto-style24 {
			width: 121px;
			height: 32px;
		}
	</style>
</head>
<body>
	<h1>Rolling Thunder Components</h1>
    <form id="form1" runat="server">
        <div>
        	<br />
			<br />
			<br />
			<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ComponentID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
				<Fields>
					<asp:BoundField DataField="ComponentID" HeaderText="ComponentID" ReadOnly="True" SortExpression="ComponentID" />
					<asp:BoundField DataField="ProductNumber" HeaderText="ProductNumber" SortExpression="ProductNumber" />
					<asp:BoundField DataField="Road" HeaderText="Road" SortExpression="Road" />
					<asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
					<asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
					<asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" />
					<asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
				</Fields>
			</asp:DetailsView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="SELECT ComponentID, ProductNumber, Road, Category, Description, ListPrice, Year FROM Component WHERE (Year = 2012)"></asp:SqlDataSource>
			<br />
			<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SerialNumber,ComponentID" DataSourceID="SqlDataSource2">
				<Columns>
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
					<asp:BoundField DataField="SerialNumber" HeaderText="SerialNumber" ReadOnly="True" SortExpression="SerialNumber" />
					<asp:BoundField DataField="ComponentID" HeaderText="ComponentID" ReadOnly="True" SortExpression="ComponentID" />
					<asp:BoundField DataField="SubstituteID" HeaderText="SubstituteID" SortExpression="SubstituteID" />
					<asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
					<asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
					<asp:BoundField DataField="DateInstalled" HeaderText="DateInstalled" SortExpression="DateInstalled" />
					<asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" DeleteCommand="DELETE FROM [BikeParts] WHERE [SerialNumber] = @SerialNumber AND [ComponentID] = @ComponentID" InsertCommand="INSERT INTO [BikeParts] ([SerialNumber], [ComponentID], [SubstituteID], [Location], [Quantity], [DateInstalled], [EmployeeID]) VALUES (@SerialNumber, @ComponentID, @SubstituteID, @Location, @Quantity, @DateInstalled, @EmployeeID)" SelectCommand="SELECT * FROM [BikeParts] WHERE ([ComponentID] = @ComponentID)" UpdateCommand="UPDATE [BikeParts] SET [SubstituteID] = @SubstituteID, [Location] = @Location, [Quantity] = @Quantity, [DateInstalled] = @DateInstalled, [EmployeeID] = @EmployeeID WHERE [SerialNumber] = @SerialNumber AND [ComponentID] = @ComponentID">
				<DeleteParameters>
					<asp:Parameter Name="SerialNumber" Type="Int32" />
					<asp:Parameter Name="ComponentID" Type="Int32" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="SerialNumber" Type="Int32" />
					<asp:Parameter Name="ComponentID" Type="Int32" />
					<asp:Parameter Name="SubstituteID" Type="Int32" />
					<asp:Parameter Name="Location" Type="String" />
					<asp:Parameter Name="Quantity" Type="Int32" />
					<asp:Parameter Name="DateInstalled" Type="DateTime" />
					<asp:Parameter Name="EmployeeID" Type="Int32" />
				</InsertParameters>
				<SelectParameters>
					<asp:ControlParameter ControlID="DetailsView1" Name="ComponentID" PropertyName="SelectedValue" Type="Int32" />
				</SelectParameters>
				<UpdateParameters>
					<asp:Parameter Name="SubstituteID" Type="Int32" />
					<asp:Parameter Name="Location" Type="String" />
					<asp:Parameter Name="Quantity" Type="Int32" />
					<asp:Parameter Name="DateInstalled" Type="DateTime" />
					<asp:Parameter Name="EmployeeID" Type="Int32" />
					<asp:Parameter Name="SerialNumber" Type="Int32" />
					<asp:Parameter Name="ComponentID" Type="Int32" />
				</UpdateParameters>
			</asp:SqlDataSource>
			<br />
			<br />
			<table class="auto-style1">
				<tr>
					<td class="auto-style12"></td>
					<td class="auto-style13">SerialNumber</td>
					<td class="auto-style15">SubstituteID</td>
					<td class="auto-style16">Location</td>
					<td class="auto-style17">Quantity</td>
					<td class="auto-style18">DateInstalled</td>
					<td class="auto-style18">EmployeeID</td>
				</tr>
				<tr>
					<td class="auto-style2">
						<asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
					</td>
					<td class="auto-style3">
						<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
					</td>
					<td class="auto-style5">
						<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
					</td>
					<td class="auto-style6">
						<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
					</td>
					<td class="auto-style7">
						<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
					</td>
					<td class="auto-style8">
						<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
					</td>
					<td class="auto-style8">
						<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
					</td>
				</tr>
			</table>
			<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="ErrorMessageLabel"></asp:Label>
			<br />
			<br />
			<br />
			<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PurchaseID,ComponentID" DataSourceID="SqlDataSource3">
				<Columns>
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
					<asp:BoundField DataField="PurchaseID" HeaderText="PurchaseID" ReadOnly="True" SortExpression="PurchaseID" />
					<asp:BoundField DataField="ComponentID" HeaderText="ComponentID" ReadOnly="True" SortExpression="ComponentID" />
					<asp:BoundField DataField="PricePaid" HeaderText="PricePaid" SortExpression="PricePaid" />
					<asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
					<asp:BoundField DataField="QuantityReceived" HeaderText="QuantityReceived" SortExpression="QuantityReceived" />
				</Columns>
			</asp:GridView>
        </div>
    	<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="SELECT * FROM [PurchaseItem]" DeleteCommand="DELETE FROM [PurchaseItem] WHERE [PurchaseID] = @PurchaseID AND [ComponentID] = @ComponentID" InsertCommand="INSERT INTO [PurchaseItem] ([PurchaseID], [ComponentID], [PricePaid], [Quantity], [QuantityReceived]) VALUES (@PurchaseID, @ComponentID, @PricePaid, @Quantity, @QuantityReceived)" UpdateCommand="UPDATE [PurchaseItem] SET [PricePaid] = @PricePaid, [Quantity] = @Quantity, [QuantityReceived] = @QuantityReceived WHERE [PurchaseID] = @PurchaseID AND [ComponentID] = @ComponentID">
			<DeleteParameters>
				<asp:Parameter Name="PurchaseID" Type="Int32" />
				<asp:Parameter Name="ComponentID" Type="Int32" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="PurchaseID" Type="Int32" />
				<asp:Parameter Name="ComponentID" Type="Int32" />
				<asp:Parameter Name="PricePaid" Type="Decimal" />
				<asp:Parameter Name="Quantity" Type="Int32" />
				<asp:Parameter Name="QuantityReceived" Type="Int32" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="PricePaid" Type="Decimal" />
				<asp:Parameter Name="Quantity" Type="Int32" />
				<asp:Parameter Name="QuantityReceived" Type="Int32" />
				<asp:Parameter Name="PurchaseID" Type="Int32" />
				<asp:Parameter Name="ComponentID" Type="Int32" />
			</UpdateParameters>
		</asp:SqlDataSource>
    	<br />
		<br />
			<table class="auto-style1">
				<tr>
					<td class="auto-style2">&nbsp;</td>
					<td class="auto-style9">PurchaseID</td>
					<td class="auto-style11">PricePaid</td>
					<td class="auto-style6">Quantity</td>
					<td class="auto-style7">QuantityReceived</td>
				</tr>
				<tr>
					<td class="auto-style19">
						<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Insert" />
					</td>
					<td class="auto-style20">
						<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
					</td>
					<td class="auto-style22">
						<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
					</td>
					<td class="auto-style23">
						<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
					</td>
					<td class="auto-style24">
						<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
					</td>
				</tr>
			</table>
			<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="ErrorMessageLabel"></asp:Label>
			<br />
		<br />
		<br />
    </form>
</body>
</html>
