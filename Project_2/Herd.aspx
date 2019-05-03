<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Herd.aspx.cs" Inherits="Herd" %>

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
		.auto-style17 {
			width: 121px;
			height: 27px;
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
		</style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Herd Form
        </h1>
		<p>
			<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="HerdID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
				<Fields>
					<asp:BoundField DataField="HerdID" HeaderText="HerdID" ReadOnly="True" SortExpression="HerdID" />
					<asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
					<asp:BoundField DataField="TimeDateFed" HeaderText="TimeDateFed" SortExpression="TimeDateFed" />
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
				</Fields>
			</asp:DetailsView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" DeleteCommand="DELETE FROM [CowHerd] WHERE [HerdID] = @HerdID" InsertCommand="INSERT INTO [CowHerd] ([HerdID], [Location], [TimeDateFed]) VALUES (@HerdID, @Location, @TimeDateFed)" SelectCommand="SELECT [HerdID], [Location], [TimeDateFed] FROM [CowHerd]" UpdateCommand="UPDATE [CowHerd] SET [Location] = @Location, [TimeDateFed] = @TimeDateFed WHERE [HerdID] = @HerdID">
				<DeleteParameters>
					<asp:Parameter Name="HerdID" Type="String" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="HerdID" Type="String" />
					<asp:Parameter Name="Location" Type="String" />
					<asp:Parameter Name="TimeDateFed" Type="DateTime" />
				</InsertParameters>
				<UpdateParameters>
					<asp:Parameter Name="Location" Type="String" />
					<asp:Parameter Name="TimeDateFed" Type="DateTime" />
					<asp:Parameter Name="HerdID" Type="String" />
				</UpdateParameters>
			</asp:SqlDataSource>
        </p>
		<p>
			<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FeedSourceKey" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
				<Columns>
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
					<asp:BoundField DataField="FeedSourceKey" HeaderText="FeedSourceKey" ReadOnly="True" SortExpression="FeedSourceKey" />
					<asp:BoundField DataField="QuantityTotal" HeaderText="QuantityTotal" SortExpression="QuantityTotal" />
					<asp:BoundField DataField="HerdID" HeaderText="HerdID" SortExpression="HerdID" />
					<asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
					<asp:BoundField DataField="Waste" HeaderText="Waste" SortExpression="Waste" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" DeleteCommand="DELETE FROM [FeedSource] WHERE [FeedSourceKey] = @FeedSourceKey" InsertCommand="INSERT INTO [FeedSource] ([FeedSourceKey], [QuantityTotal], [HerdID], [ItemID], [Waste]) VALUES (@FeedSourceKey, @QuantityTotal, @HerdID, @ItemID, @Waste)" SelectCommand="SELECT * FROM [FeedSource] WHERE ([HerdID] = @HerdID)" UpdateCommand="UPDATE [FeedSource] SET [QuantityTotal] = @QuantityTotal, [HerdID] = @HerdID, [ItemID] = @ItemID, [Waste] = @Waste WHERE [FeedSourceKey] = @FeedSourceKey">
				<DeleteParameters>
					<asp:Parameter Name="FeedSourceKey" Type="String" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="FeedSourceKey" Type="String" />
					<asp:Parameter Name="QuantityTotal" Type="Decimal" />
					<asp:Parameter Name="HerdID" Type="String" />
					<asp:Parameter Name="ItemID" Type="String" />
					<asp:Parameter Name="Waste" Type="Decimal" />
				</InsertParameters>
				<SelectParameters>
					<asp:ControlParameter ControlID="DetailsView1" Name="HerdID" PropertyName="SelectedValue" Type="String" />
				</SelectParameters>
				<UpdateParameters>
					<asp:Parameter Name="QuantityTotal" Type="Decimal" />
					<asp:Parameter Name="HerdID" Type="String" />
					<asp:Parameter Name="ItemID" Type="String" />
					<asp:Parameter Name="Waste" Type="Decimal" />
					<asp:Parameter Name="FeedSourceKey" Type="String" />
				</UpdateParameters>
			</asp:SqlDataSource>
        </p>
		<table class="auto-style1">
			<tr>
				<td class="auto-style12"></td>
				<td class="auto-style13">FeedSourceKey</td>
				<td class="auto-style15">QuantityTotal</td>
				<td class="auto-style16">ItemID</td>
				<td class="auto-style17">Waste</td>
			</tr>
			<tr>
				<td class="auto-style2">
					<asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="InsertHerdData" />
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
				<td class="auto-style7">
					<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
				</td>
			</tr>
		</table>
		<p>
			<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="InsertHerdDataError"></asp:Label>
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
    	<p>
			&nbsp;</p>
    </form>
</body>
</html>
