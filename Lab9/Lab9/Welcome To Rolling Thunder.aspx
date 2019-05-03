<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome To Rolling Thunder.aspx.cs" Inherits="Lab9.Welcome_To_Rolling_Thunder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
	<h1>Welcome to The Rolling Thunder Data Base!</h1>
    <form id="form1" runat="server">
    	<br />
		<br />
		<br />
		<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="StoreID" DataSourceID="SqlDataSource1" Height="50px" style="margin-right: 0px" Width="125px">
			<Fields>
				<asp:BoundField DataField="StoreID" HeaderText="StoreID" InsertVisible="False" ReadOnly="True" SortExpression="StoreID" />
				<asp:BoundField DataField="StoreName" HeaderText="StoreName" SortExpression="StoreName" />
				<asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
				<asp:BoundField DataField="ContactFirstName" HeaderText="ContactFirstName" SortExpression="ContactFirstName" />
				<asp:BoundField DataField="ContactLastName" HeaderText="ContactLastName" SortExpression="ContactLastName" />
				<asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
				<asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
				<asp:TemplateField HeaderText="CityID" SortExpression="CityID">
					<EditItemTemplate>
						<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Expr1" DataValueField="CityID" SelectedValue='<%# Bind("CityID") %>'>
							<asp:ListItem>name</asp:ListItem>
							<asp:ListItem>state</asp:ListItem>
							<asp:ListItem>country</asp:ListItem>
						</asp:DropDownList>
					</EditItemTemplate>
					<InsertItemTemplate>
						<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Expr1" DataValueField="CityID" SelectedValue='<%# Bind("CityID") %>'>
							<asp:ListItem>name</asp:ListItem>
							<asp:ListItem>state</asp:ListItem>
							<asp:ListItem>country</asp:ListItem>
						</asp:DropDownList>
					</InsertItemTemplate>
					<ItemTemplate>
						<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Expr1" DataValueField="CityID" SelectedValue='<%# Bind("CityID") %>'>
							<asp:ListItem>name</asp:ListItem>
							<asp:ListItem>state</asp:ListItem>
							<asp:ListItem>country</asp:ListItem>
						</asp:DropDownList>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
			</Fields>
		</asp:DetailsView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" DeleteCommand="DELETE FROM [RetailStore] WHERE [StoreID] = @StoreID" InsertCommand="INSERT INTO [RetailStore] ([StoreName], [Phone], [ContactFirstName], [ContactLastName], [Address], [ZipCode], [CityID]) VALUES (@StoreName, @Phone, @ContactFirstName, @ContactLastName, @Address, @ZipCode, @CityID)" SelectCommand="SELECT * FROM [RetailStore]" UpdateCommand="UPDATE [RetailStore] SET [StoreName] = @StoreName, [Phone] = @Phone, [ContactFirstName] = @ContactFirstName, [ContactLastName] = @ContactLastName, [Address] = @Address, [ZipCode] = @ZipCode, [CityID] = @CityID WHERE [StoreID] = @StoreID">
			<DeleteParameters>
				<asp:Parameter Name="StoreID" Type="Int32" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="StoreName" Type="String" />
				<asp:Parameter Name="Phone" Type="String" />
				<asp:Parameter Name="ContactFirstName" Type="String" />
				<asp:Parameter Name="ContactLastName" Type="String" />
				<asp:Parameter Name="Address" Type="String" />
				<asp:Parameter Name="ZipCode" Type="String" />
				<asp:Parameter Name="CityID" Type="Int32" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="StoreName" Type="String" />
				<asp:Parameter Name="Phone" Type="String" />
				<asp:Parameter Name="ContactFirstName" Type="String" />
				<asp:Parameter Name="ContactLastName" Type="String" />
				<asp:Parameter Name="Address" Type="String" />
				<asp:Parameter Name="ZipCode" Type="String" />
				<asp:Parameter Name="CityID" Type="Int32" />
				<asp:Parameter Name="StoreID" Type="Int32" />
			</UpdateParameters>
		</asp:SqlDataSource>
		<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="SELECT CityID, City + ' ' + State + ' ' + Country AS Expr1 FROM City"></asp:SqlDataSource>
		<asp:Menu ID="Menu1" runat="server">
			<Items>
				<asp:MenuItem NavigateUrl="~/Welcome To Rolling Thunder.aspx" Text="Home" Value="Home">
					<asp:MenuItem NavigateUrl="~/RT Queries.aspx" Text="RTQueries" Value="RTQueries"></asp:MenuItem>
				</asp:MenuItem>
			</Items>
		</asp:Menu>
		<br />
		<br />
    </form>
</body>
</html>
