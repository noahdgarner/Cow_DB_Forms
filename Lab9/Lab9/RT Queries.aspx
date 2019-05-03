<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RT Queries.aspx.cs" Inherits="Lab9.RT_Queries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
	<h1>RT Queries</h1>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="SELECT TOP (1) FirstName + ' ' + LastName AS FullName, Salary FROM Employee ORDER BY Salary DESC"></asp:SqlDataSource>
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True">
				<Columns>
					<asp:BoundField DataField="FullName" HeaderText="FullName" ReadOnly="True" SortExpression="FullName" />
					<asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
				</Columns>
			</asp:GridView>
			<br />
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="SELECT ModelType, SUM(SalePrice) AS TotalSalePrice FROM Bicycle WHERE (YEAR(OrderDate) = 2010) GROUP BY ModelType"></asp:SqlDataSource>
			<asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
				<Columns>
					<asp:BoundField DataField="ModelType" HeaderText="ModelType" SortExpression="ModelType" />
					<asp:BoundField DataField="TotalSalePrice" HeaderText="TotalSalePrice" ReadOnly="True" SortExpression="TotalSalePrice" />
				</Columns>
			</asp:GridView>
			<br />
			<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
				<Columns>
					<asp:BoundField DataField="ColorName" HeaderText="ColorName" SortExpression="ColorName" />
					<asp:BoundField DataField="topColor" HeaderText="topColor" ReadOnly="True" SortExpression="topColor" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="SELECT TOP (1) Paint.ColorName, COUNT(Paint.ColorName) AS topColor FROM Bicycle INNER JOIN Paint ON Bicycle.PaintID = Paint.PaintID WHERE (YEAR(Bicycle.OrderDate) = 2007) AND (MONTH(Bicycle.OrderDate) = 03) GROUP BY Paint.ColorName ORDER BY topColor DESC"></asp:SqlDataSource>
			<br />
			<asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
				<Columns>
					<asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
					<asp:BoundField DataField="BalanceDue" HeaderText="BalanceDue" SortExpression="BalanceDue" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RollingThunderConnectionString %>" SelectCommand="SELECT TOP (1) ContactName, BalanceDue FROM Manufacturer GROUP BY ContactName, BalanceDue ORDER BY BalanceDue DESC"></asp:SqlDataSource>
			<br />
			<br />
			<asp:Menu ID="Menu1" runat="server">
				<Items>
					<asp:MenuItem NavigateUrl="~/Welcome To Rolling Thunder.aspx" Text="Home" Value="Home">
						<asp:MenuItem NavigateUrl="~/RT Queries.aspx" Text="RT Queries" Value="RT Queries"></asp:MenuItem>
					</asp:MenuItem>
				</Items>
			</asp:Menu>
        </div>
    </form>
</body>
</html>
