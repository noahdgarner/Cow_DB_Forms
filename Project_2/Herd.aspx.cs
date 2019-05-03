using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Herd : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
	{

	}

	protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
	{

	}

	protected void Button3_Click1(object sender, EventArgs e)
	{
		Button tmp = (Button)sender;

		Label1.Text = "";
		try
		{
			//This is similar to the C# we will need for project 2
			SqlDataSource2.InsertParameters["HerdID"].DefaultValue = DetailsView1.SelectedValue.ToString();
			// Note - The customer ID is an auto generated identity field. It should not be included in the insert.
			SqlDataSource2.InsertParameters["FeedSourceKey"].DefaultValue = TextBox6.Text;
			SqlDataSource2.InsertParameters["QuantityTotal"].DefaultValue = TextBox7.Text;
			SqlDataSource2.InsertParameters["ItemID"].DefaultValue = TextBox8.Text;
			SqlDataSource2.InsertParameters["Waste"].DefaultValue = TextBox9.Text;
			SqlDataSource2.Insert();


		}
		catch (Exception ex)
		{
			Label1.Text = ex.Message;
		}
		//outside the try catch so that no matter what, the text boxes are cleared.
		TextBox6.Text = "";
		TextBox7.Text = "";
		TextBox8.Text = "";
		TextBox9.Text = "";
	}
}