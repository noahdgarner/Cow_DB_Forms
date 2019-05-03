<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PurchaseSupplier.aspx.cs" Inherits="PurchaseSupplier" %>

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
		.auto-style15 {
			width: 118px;
			height: 27px;
		}
		.auto-style2 {
			width: 132px;
		}
		.auto-style5 {
			width: 118px;
		}
		.auto-style7 {
			width: 121px;
		}
		.auto-style17 {
			width: 121px;
			height: 27px;
		}
		</style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Purchase / Supplier Form
        </h1>
		<p>
			<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="SupplierID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
				<Fields>
					<asp:BoundField DataField="SupplierID" HeaderText="SupplierID" ReadOnly="True" SortExpression="SupplierID" />
					<asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
					<asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
					<asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
					<asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
					<asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
				</Fields>
			</asp:DetailsView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" DeleteCommand="DELETE FROM [Supplier] WHERE [SupplierID] = @SupplierID" InsertCommand="INSERT INTO [Supplier] ([SupplierID], [Phone], [Address], [City], [State], [ZipCode]) VALUES (@SupplierID, @Phone, @Address, @City, @State, @ZipCode)" SelectCommand="SELECT * FROM [Supplier]" UpdateCommand="UPDATE [Supplier] SET [Phone] = @Phone, [Address] = @Address, [City] = @City, [State] = @State, [ZipCode] = @ZipCode WHERE [SupplierID] = @SupplierID">
				<DeleteParameters>
					<asp:Parameter Name="SupplierID" Type="String" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="SupplierID" Type="String" />
					<asp:Parameter Name="Phone" Type="String" />
					<asp:Parameter Name="Address" Type="String" />
					<asp:Parameter Name="City" Type="String" />
					<asp:Parameter Name="State" Type="String" />
					<asp:Parameter Name="ZipCode" Type="String" />
				</InsertParameters>
				<UpdateParameters>
					<asp:Parameter Name="Phone" Type="String" />
					<asp:Parameter Name="Address" Type="String" />
					<asp:Parameter Name="City" Type="String" />
					<asp:Parameter Name="State" Type="String" />
					<asp:Parameter Name="ZipCode" Type="String" />
					<asp:Parameter Name="SupplierID" Type="String" />
				</UpdateParameters>
			</asp:SqlDataSource>
        </p>
		<p>
			<asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="PurchaseID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
				<Fields>
					<asp:BoundField DataField="PurchaseID" HeaderText="PurchaseID" ReadOnly="True" SortExpression="PurchaseID" />
					<asp:BoundField DataField="PurchaseDate" HeaderText="PurchaseDate" SortExpression="PurchaseDate" />
					<asp:BoundField DataField="DeliveryCost" HeaderText="DeliveryCost" SortExpression="DeliveryCost" />
					<asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
					<asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID" />
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
				</Fields>
			</asp:DetailsView>
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" DeleteCommand="DELETE FROM [Purchases] WHERE [PurchaseID] = @PurchaseID" InsertCommand="INSERT INTO [Purchases] ([PurchaseID], [PurchaseDate], [DeliveryCost], [TotalCost], [SupplierID]) VALUES (@PurchaseID, @PurchaseDate, @DeliveryCost, @TotalCost, @SupplierID)" SelectCommand="SELECT * FROM [Purchases] WHERE ([SupplierID] = @SupplierID)" UpdateCommand="UPDATE [Purchases] SET [PurchaseDate] = @PurchaseDate, [DeliveryCost] = @DeliveryCost, [TotalCost] = @TotalCost, [SupplierID] = @SupplierID WHERE [PurchaseID] = @PurchaseID">
				<DeleteParameters>
					<asp:Parameter Name="PurchaseID" Type="String" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="PurchaseID" Type="String" />
					<asp:Parameter DbType="Date" Name="PurchaseDate" />
					<asp:Parameter Name="DeliveryCost" Type="Decimal" />
					<asp:Parameter Name="TotalCost" Type="Decimal" />
					<asp:Parameter Name="SupplierID" Type="String" />
				</InsertParameters>
				<SelectParameters>
					<asp:ControlParameter ControlID="DetailsView1" Name="SupplierID" PropertyName="SelectedValue" Type="String" />
				</SelectParameters>
				<UpdateParameters>
					<asp:Parameter DbType="Date" Name="PurchaseDate" />
					<asp:Parameter Name="DeliveryCost" Type="Decimal" />
					<asp:Parameter Name="TotalCost" Type="Decimal" />
					<asp:Parameter Name="SupplierID" Type="String" />
					<asp:Parameter Name="PurchaseID" Type="String" />
				</UpdateParameters>
			</asp:SqlDataSource>
        </p>
		<p>
			<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PurchaseID,ItemID" DataSourceID="SqlDataSource3">
				<Columns>
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
					<asp:BoundField DataField="PurchaseID" HeaderText="PurchaseID" ReadOnly="True" SortExpression="PurchaseID" />
					<asp:TemplateField HeaderText="ItemID" SortExpression="ItemID">
						<EditItemTemplate>
							<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource4" DataTextField="FeedData" DataValueField="ItemID" SelectedValue='<%# Bind("ItemID") %>'>
							</asp:DropDownList>
						</EditItemTemplate>
						<ItemTemplate>
							<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource4" DataTextField="FeedData" DataValueField="ItemID" SelectedValue='<%# Bind("ItemID") %>'>
							</asp:DropDownList>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" DeleteCommand="DELETE FROM [PurchaseItems] WHERE [PurchaseID] = @PurchaseID AND [ItemID] = @ItemID" InsertCommand="INSERT INTO [PurchaseItems] ([PurchaseID], [ItemID], [Quantity]) VALUES (@PurchaseID, @ItemID, @Quantity)" SelectCommand="SELECT * FROM [PurchaseItems] WHERE ([PurchaseID] = @PurchaseID)" UpdateCommand="UPDATE [PurchaseItems] SET [Quantity] = @Quantity WHERE [PurchaseID] = @PurchaseID AND [ItemID] = @ItemID">
				<DeleteParameters>
					<asp:Parameter Name="PurchaseID" Type="String" />
					<asp:Parameter Name="ItemID" Type="String" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="PurchaseID" Type="String" />
					<asp:Parameter Name="ItemID" Type="String" />
					<asp:Parameter Name="Quantity" Type="Int32" />
				</InsertParameters>
				<SelectParameters>
					<asp:ControlParameter ControlID="DetailsView2" Name="PurchaseID" PropertyName="SelectedValue" Type="String" />
				</SelectParameters>
				<UpdateParameters>
					<asp:Parameter Name="Quantity" Type="Int32" />
					<asp:Parameter Name="PurchaseID" Type="String" />
					<asp:Parameter Name="ItemID" Type="String" />
				</UpdateParameters>
			</asp:SqlDataSource>
        </p>
		<p>
			<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT ItemID, 'Amount: '+CONVERT (varchar(10), Amount) + ' Protein:' + Protein + ' Cost:' + CONVERT (varchar(10), Cost) + ' FeedType:' + FeedType + ' Description:' + FeedDescription AS FeedData FROM Items"></asp:SqlDataSource>
        </p>
		<p>
			&nbsp;</p>
		<table class="auto-style1">
			<tr>
				<td class="auto-style12"></td>
				<td class="auto-style15">PurchaseID</td>
				<td class="auto-style15">ItemID</td>
				<td class="auto-style17">Quantity</td>
			</tr>
			<tr>
				<td class="auto-style2">
					<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="InsertData" />
				</td>
				<td class="auto-style5">
					<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
				</td>
				<td class="auto-style5">
					<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
				</td>
				<td class="auto-style7">
					<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
				</td>
			</tr>
		</table>
		<p>
			<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Insert Data Label"></asp:Label>
		</p>
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
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>&nbsp;</p>
    </form>
</body>
</html>
