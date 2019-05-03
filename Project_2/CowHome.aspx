<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CowHome.aspx.cs" Inherits="Homepage" %>

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
        <h1>
        	Cow Milk &amp; Birth Form</h1>
    	<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="CowKey" DataSourceID="CowsSqlDataSource1" Height="50px" Width="125px">
			<Fields>
				<asp:BoundField DataField="CowKey" HeaderText="CowKey" ReadOnly="True" SortExpression="CowKey" />
				<asp:BoundField DataField="Dateborn" HeaderText="Dateborn" SortExpression="Dateborn" />
				<asp:BoundField DataField="DateAquired" HeaderText="DateAquired" SortExpression="DateAquired" />
				<asp:BoundField DataField="Breed" HeaderText="Breed" SortExpression="Breed" />
				<asp:BoundField DataField="DateRemoved" HeaderText="DateRemoved" SortExpression="DateRemoved" />
				<asp:BoundField DataField="CauseRemoved" HeaderText="CauseRemoved" SortExpression="CauseRemoved" />
				<asp:BoundField DataField="LocationRemoved" HeaderText="LocationRemoved" SortExpression="LocationRemoved" />
				<asp:BoundField DataField="HerdID" HeaderText="HerdID" SortExpression="HerdID" />
				<asp:BoundField DataField="SourceProviderKey" HeaderText="SourceProviderKey" SortExpression="SourceProviderKey" />
				<asp:BoundField DataField="VetKey" HeaderText="VetKey" SortExpression="VetKey" />
				<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
			</Fields>
		</asp:DetailsView>
		<asp:SqlDataSource ID="CowsSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" DeleteCommand="DELETE FROM [Cow] WHERE [CowKey] = @CowKey" InsertCommand="INSERT INTO [Cow] ([CowKey], [Dateborn], [DateAquired], [Breed], [DateRemoved], [CauseRemoved], [LocationRemoved], [HerdID], [SourceProviderKey], [VetKey]) VALUES (@CowKey, @Dateborn, @DateAquired, @Breed, @DateRemoved, @CauseRemoved, @LocationRemoved, @HerdID, @SourceProviderKey, @VetKey)" SelectCommand="SELECT * FROM [Cow]" UpdateCommand="UPDATE [Cow] SET [Dateborn] = @Dateborn, [DateAquired] = @DateAquired, [Breed] = @Breed, [DateRemoved] = @DateRemoved, [CauseRemoved] = @CauseRemoved, [LocationRemoved] = @LocationRemoved, [HerdID] = @HerdID, [SourceProviderKey] = @SourceProviderKey, [VetKey] = @VetKey WHERE [CowKey] = @CowKey">
			<DeleteParameters>
				<asp:Parameter Name="CowKey" Type="String" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="CowKey" Type="String" />
				<asp:Parameter DbType="Date" Name="Dateborn" />
				<asp:Parameter DbType="Date" Name="DateAquired" />
				<asp:Parameter Name="Breed" Type="String" />
				<asp:Parameter DbType="Date" Name="DateRemoved" />
				<asp:Parameter Name="CauseRemoved" Type="String" />
				<asp:Parameter Name="LocationRemoved" Type="String" />
				<asp:Parameter Name="HerdID" Type="String" />
				<asp:Parameter Name="SourceProviderKey" Type="String" />
				<asp:Parameter Name="VetKey" Type="String" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter DbType="Date" Name="Dateborn" />
				<asp:Parameter DbType="Date" Name="DateAquired" />
				<asp:Parameter Name="Breed" Type="String" />
				<asp:Parameter DbType="Date" Name="DateRemoved" />
				<asp:Parameter Name="CauseRemoved" Type="String" />
				<asp:Parameter Name="LocationRemoved" Type="String" />
				<asp:Parameter Name="HerdID" Type="String" />
				<asp:Parameter Name="SourceProviderKey" Type="String" />
				<asp:Parameter Name="VetKey" Type="String" />
				<asp:Parameter Name="CowKey" Type="String" />
			</UpdateParameters>
		</asp:SqlDataSource>
		<br />
		<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MilkID" DataSourceID="SqlDataSource1">
			<Columns>
				<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
				<asp:BoundField DataField="MilkID" HeaderText="MilkID" ReadOnly="True" SortExpression="MilkID" />
				<asp:BoundField DataField="DateMilkAcquired" HeaderText="DateMilkAcquired" SortExpression="DateMilkAcquired" />
				<asp:BoundField DataField="MilkQuantity" HeaderText="MilkQuantity" SortExpression="MilkQuantity" />
				<asp:BoundField DataField="CowKey" HeaderText="CowKey" SortExpression="CowKey" />
				<asp:BoundField DataField="MilkComments" HeaderText="MilkComments" SortExpression="MilkComments" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" DeleteCommand="DELETE FROM [MilkMade] WHERE [MilkID] = @MilkID" InsertCommand="INSERT INTO [MilkMade] ([MilkID], [DateMilkAcquired], [MilkQuantity], [CowKey], [MilkComments]) VALUES (@MilkID, @DateMilkAcquired, @MilkQuantity, @CowKey, @MilkComments)" SelectCommand="SELECT * FROM [MilkMade] WHERE ([CowKey] = @CowKey)" UpdateCommand="UPDATE [MilkMade] SET [DateMilkAcquired] = @DateMilkAcquired, [MilkQuantity] = @MilkQuantity, [CowKey] = @CowKey, [MilkComments] = @MilkComments WHERE [MilkID] = @MilkID">
			<DeleteParameters>
				<asp:Parameter Name="MilkID" Type="String" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="MilkID" Type="String" />
				<asp:Parameter DbType="Date" Name="DateMilkAcquired" />
				<asp:Parameter Name="MilkQuantity" Type="Int32" />
				<asp:Parameter Name="CowKey" Type="String" />
				<asp:Parameter Name="MilkComments" Type="String" />
			</InsertParameters>
			<SelectParameters>
				<asp:ControlParameter ControlID="DetailsView1" Name="CowKey" PropertyName="SelectedValue" Type="String" />
			</SelectParameters>
			<UpdateParameters>
				<asp:Parameter DbType="Date" Name="DateMilkAcquired" />
				<asp:Parameter Name="MilkQuantity" Type="Int32" />
				<asp:Parameter Name="CowKey" Type="String" />
				<asp:Parameter Name="MilkComments" Type="String" />
				<asp:Parameter Name="MilkID" Type="String" />
			</UpdateParameters>
		</asp:SqlDataSource>
		<p>
			&nbsp;</p>
		<table class="auto-style1">
			<tr>
				<td class="auto-style12"></td>
				<td class="auto-style13">MilkID</td>
				<td class="auto-style15">DateMilkAcquired</td>
				<td class="auto-style16">MilkQuantity</td>
				<td class="auto-style17">MilkComments</td>
			</tr>
			<tr>
				<td class="auto-style2">
					<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Milk Data" />
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
			</tr>
		</table>
		<p>
			<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Insert Milk Message"></asp:Label>
		</p>
		<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="BirthKey" DataSourceID="SqlDataSource2">
			<Columns>
				<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
				<asp:BoundField DataField="BirthKey" HeaderText="BirthKey" ReadOnly="True" SortExpression="BirthKey" />
				<asp:BoundField DataField="DateBirthing" HeaderText="DateBirthing" SortExpression="DateBirthing" />
				<asp:BoundField DataField="CowKey" HeaderText="CowKey" SortExpression="CowKey" />
				<asp:BoundField DataField="NumBirths" HeaderText="NumBirths" SortExpression="NumBirths" />
				<asp:BoundField DataField="BirthComments" HeaderText="BirthComments" SortExpression="BirthComments" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" DeleteCommand="DELETE FROM [CowBirths] WHERE [BirthKey] = @BirthKey" InsertCommand="INSERT INTO [CowBirths] ([BirthKey], [DateBirthing], [CowKey], [NumBirths], [BirthComments]) VALUES (@BirthKey, @DateBirthing, @CowKey, @NumBirths, @BirthComments)" SelectCommand="SELECT * FROM [CowBirths] WHERE ([CowKey] = @CowKey)" UpdateCommand="UPDATE [CowBirths] SET [DateBirthing] = @DateBirthing, [CowKey] = @CowKey, [NumBirths] = @NumBirths, [BirthComments] = @BirthComments WHERE [BirthKey] = @BirthKey">
			<DeleteParameters>
				<asp:Parameter Name="BirthKey" Type="String" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="BirthKey" Type="String" />
				<asp:Parameter DbType="Date" Name="DateBirthing" />
				<asp:Parameter Name="CowKey" Type="String" />
				<asp:Parameter Name="NumBirths" Type="Int32" />
				<asp:Parameter Name="BirthComments" Type="String" />
			</InsertParameters>
			<SelectParameters>
				<asp:ControlParameter ControlID="DetailsView1" Name="CowKey" PropertyName="SelectedValue" Type="String" />
			</SelectParameters>
			<UpdateParameters>
				<asp:Parameter DbType="Date" Name="DateBirthing" />
				<asp:Parameter Name="CowKey" Type="String" />
				<asp:Parameter Name="NumBirths" Type="Int32" />
				<asp:Parameter Name="BirthComments" Type="String" />
				<asp:Parameter Name="BirthKey" Type="String" />
			</UpdateParameters>
		</asp:SqlDataSource>
		<br />
		<table class="auto-style1">
			<tr>
				<td class="auto-style12"></td>
				<td class="auto-style13">BirthKey</td>
				<td class="auto-style15">DateBirthing</td>
				<td class="auto-style16">NumBirths</td>
				<td class="auto-style17">MilkComments</td>
			</tr>
			<tr>
				<td class="auto-style2">
					<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Birth Data" />
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
		<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Insert Birth Message"></asp:Label>
		<br />
		<br />
		<br />
		<asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
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
	<p>
		&nbsp;</p>
</body>
</html>
