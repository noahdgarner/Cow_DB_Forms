<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CowQueries.aspx.cs" Inherits="CowQueries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Cow Queries Page</h1>
		<p>&nbsp;</p>
		<h2>1. Which cow has produced the most milk? Show results in descending order in grid view.</h2>
		<p>
			<asp:GridView ID="GridView6" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CowKey" DataSourceID="SqlDataSource9">
				<Columns>
					<asp:BoundField DataField="CowKey" HeaderText="CowKey" ReadOnly="True" SortExpression="CowKey" />
					<asp:BoundField DataField="TotalMilkPerCow" HeaderText="TotalMilkPerCow" ReadOnly="True" SortExpression="TotalMilkPerCow" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT Cow.CowKey, SUM(MilkMade.MilkQuantity) AS TotalMilkPerCow FROM Cow INNER JOIN MilkMade ON Cow.CowKey = MilkMade.CowKey GROUP BY Cow.CowKey ORDER BY TotalMilkPerCow DESC"></asp:SqlDataSource>
		</p>

		<h2>2. What date was the newest calf been born on (single result value details view)?</h2>
		<p>
			<asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="BirthKey" DataSourceID="SqlDataSource8" Height="50px" Width="125px">
				<Fields>
					<asp:BoundField DataField="DateBirthing" HeaderText="DateBirthing" SortExpression="DateBirthing" />
					<asp:BoundField DataField="BirthComments" HeaderText="BirthComments" SortExpression="BirthComments" />
					<asp:BoundField DataField="BirthKey" HeaderText="BirthKey" ReadOnly="True" SortExpression="BirthKey" />
				</Fields>
			</asp:DetailsView>
			<asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT TOP (1) DateBirthing, BirthComments, BirthKey FROM CowBirths ORDER BY DateBirthing DESC"></asp:SqlDataSource>
		</p>

		<h2>3. How many cows are there for each breed (single result value details view w/ paging)?</h2>
		<p>
			<asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource7" Height="50px" Width="125px" AllowPaging="True">
				<Fields>
					<asp:BoundField DataField="Breed" HeaderText="Breed" SortExpression="Breed" />
					<asp:BoundField DataField="numberEachBreed" HeaderText="numberEachBreed" ReadOnly="True" SortExpression="numberEachBreed" />
				</Fields>
			</asp:DetailsView>
			<asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT Breed, COUNT(Breed) AS numberEachBreed FROM Cow GROUP BY Breed"></asp:SqlDataSource>
		</p>

		<h2>4. List the feed amounts delivered to the cows in order of date &amp; amount. Show the feedsource &amp; supplier info (grid view).</h2>
		<p>
			<asp:GridView ID="GridView5" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource6">
				<Columns>
					<asp:BoundField DataField="SupplierInfo" HeaderText="SupplierInfo" ReadOnly="True" SortExpression="SupplierInfo" />
					<asp:BoundField DataField="FeedType" HeaderText="FeedType" SortExpression="FeedType" />
					<asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
					<asp:BoundField DataField="PurchaseDate" HeaderText="PurchaseDate" SortExpression="PurchaseDate" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT 'SupplierInfo: ' + Supplier.Phone + ' ' + Supplier.Address + ' ' + Supplier.City + ' ' + Supplier.State + ' ' + Supplier.ZipCode AS SupplierInfo, Items.FeedType, Items.Amount, Purchases.PurchaseDate FROM Items INNER JOIN PurchaseItems ON Items.ItemID = PurchaseItems.ItemID INNER JOIN Purchases ON PurchaseItems.PurchaseID = Purchases.PurchaseID INNER JOIN Supplier ON Purchases.SupplierID = Supplier.SupplierID ORDER BY Purchases.PurchaseDate DESC, Items.Amount DESC"></asp:SqlDataSource>
		</p>

		<h2>5. What is the heaviest weight recorded (single result value details view)?</h2>
		<p>
			<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CowKey" DataSourceID="SqlDataSource5" Height="50px" Width="125px">
				<Fields>
					<asp:BoundField DataField="CowKey" HeaderText="CowKey" ReadOnly="True" SortExpression="CowKey" />
					<asp:BoundField DataField="Dateborn" HeaderText="Dateborn" SortExpression="Dateborn" />
					<asp:BoundField DataField="BirthWeight" HeaderText="BirthWeight" SortExpression="BirthWeight" />
				</Fields>
			</asp:DetailsView>
			<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT TOP (1) Cow.CowKey, Cow.Dateborn, CowMedical.BirthWeight FROM CowMedical INNER JOIN Cow ON CowMedical.CowKey = Cow.CowKey ORDER BY CowMedical.BirthWeight DESC"></asp:SqlDataSource>
		</p>

		<h2>6. Compute the average milk production for a family of cows (same mother). Grid view.</h2>
		<p>
			<asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
				<Columns>
					<asp:BoundField DataField="ParentCowID" HeaderText="ParentCowID" SortExpression="ParentCowID" />
					<asp:BoundField DataField="AvgMilkPerFamily" HeaderText="AvgMilkPerFamily" ReadOnly="True" SortExpression="AvgMilkPerFamily" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT CowProvider.ParentCowID, AVG(MilkMade.MilkQuantity) AS AvgMilkPerFamily FROM MilkMade INNER JOIN Cow ON MilkMade.CowKey = Cow.CowKey INNER JOIN CowProvider ON Cow.SourceProviderKey = CowProvider.SourceProviderKey GROUP BY CowProvider.ParentCowID ORDER BY AvgMilkPerFamily"></asp:SqlDataSource>
		</p>

		<h2>7. Rank the Costs per supplier from Highest to Lowest. Grid View.</h2>
		<p>
			<asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SupplierID" DataSourceID="SqlDataSource3">
				<Columns>
					<asp:BoundField DataField="SupplierID" HeaderText="SupplierID" ReadOnly="True" SortExpression="SupplierID" />
					<asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT Supplier.SupplierID, Purchases.TotalCost FROM Supplier INNER JOIN Purchases ON Supplier.SupplierID = Purchases.SupplierID ORDER BY Purchases.TotalCost DESC"></asp:SqlDataSource>
		</p>

		<h2>8. What is the least common symptoms for the cows? Rank from lowest to Highest. Organize Results by breed. (Grid View)</h2>
		<p>
			<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
				<Columns>
					<asp:BoundField DataField="Breed" HeaderText="Breed" SortExpression="Breed" />
					<asp:BoundField DataField="SymptomComments" HeaderText="SymptomComments" SortExpression="SymptomComments" />
					<asp:BoundField DataField="numSymptoms" HeaderText="numSymptoms" ReadOnly="True" SortExpression="numSymptoms" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT Cow.Breed, CowSymptoms.SymptomComments, 
COUNT(CowSymptoms.SymptomKey) AS numSymptoms 
FROM CowSymptoms 
INNER JOIN CowTreatmentPlan ON CowSymptoms.SymptomKey = CowTreatmentPlan.SymptomKey 
INNER JOIN CowVeterinarian ON CowTreatmentPlan.VetID = CowVeterinarian.VetKey 
INNER JOIN Cow ON CowVeterinarian.VetKey = Cow.VetKey 
GROUP BY Cow.Breed, CowSymptoms.SymptomComments 
ORDER BY numSymptoms"></asp:SqlDataSource>
		</p>

		<h2>9. Calculate the waste percentage by herd. Defined as waste/quantity. Grid View.</h2>
		<p>
			<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
				<Columns>
					<asp:BoundField DataField="HerdID" HeaderText="HerdID" SortExpression="HerdID" />
					<asp:BoundField DataField="WastePerHerdID" HeaderText="WastePerHerdID" ReadOnly="True" SortExpression="WastePerHerdID" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT HerdID, SUM(Waste) / SUM(QuantityTotal) AS WastePerHerdID FROM FeedSource GROUP BY HerdID"></asp:SqlDataSource>
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
    </form>
</body>
</html>
