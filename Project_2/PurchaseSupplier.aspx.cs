using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PurchaseSupplier : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
	{

	}

	protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
	{

	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		Button tmp = (Button)sender;

		Label1.Text = "";
		try
		{
			//This is similar to the C# we will need for project 2
			//SqlDataSource1.InsertParameters["CowKey"].DefaultValue = DetailsView1.SelectedValue.ToString();
			// Note - The customer ID is an auto generated identity field. It should not be included in the insert.
			SqlDataSource3.InsertParameters["PurchaseID"].DefaultValue = TextBox3.Text;
			SqlDataSource3.InsertParameters["ItemID"].DefaultValue = TextBox5.Text;
			SqlDataSource3.InsertParameters["Quantity"].DefaultValue = TextBox6.Text;
			SqlDataSource3.Insert();
		}
		catch (Exception ex)
		{
			Label1.Text = ex.Message;
		}
		//outside the try catch so that no matter what, the text boxes are cleared.
		/*
		TextBox3.Text = "";
		TextBox5.Text = "";
		TextBox6.Text = "";
		*/
	}
}