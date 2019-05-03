using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		Button tmp = (Button)sender;

		Label1.Text = "";
		try
		{
			//This is similar to the C# we will need for project 2
			SqlDataSource1.InsertParameters["CowKey"].DefaultValue = DetailsView1.SelectedValue.ToString();
			// Note - The customer ID is an auto generated identity field. It should not be included in the insert.
			SqlDataSource1.InsertParameters["MilkID"].DefaultValue = TextBox1.Text;
			SqlDataSource1.InsertParameters["DateMilkAcquired"].DefaultValue = TextBox3.Text;
			SqlDataSource1.InsertParameters["MilkQuantity"].DefaultValue = TextBox4.Text;
			SqlDataSource1.InsertParameters["MilkComments"].DefaultValue = TextBox5.Text;
			SqlDataSource1.Insert();


		}
		catch (Exception ex)
		{
			Label1.Text = ex.Message;
		}
		//outside the try catch so that no matter what, the text boxes are cleared.
		TextBox1.Text = "";
		TextBox3.Text = "";
		TextBox4.Text = "";
		TextBox5.Text = "";
	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		Button tmp = (Button)sender;

		Label1.Text = "";
		try
		{
			//This is similar to the C# we will need for project 2
			SqlDataSource2.InsertParameters["CowKey"].DefaultValue = DetailsView1.SelectedValue.ToString();
			// Note - The customer ID is an auto generated identity field. It should not be included in the insert.
			SqlDataSource2.InsertParameters["BirthKey"].DefaultValue = TextBox6.Text;
			SqlDataSource2.InsertParameters["DateBirthing"].DefaultValue = TextBox7.Text;
			SqlDataSource2.InsertParameters["NumBirths"].DefaultValue = TextBox8.Text;
			SqlDataSource2.InsertParameters["BirthComments"].DefaultValue = TextBox9.Text;
			SqlDataSource2.Insert();


		}
		catch (Exception ex)
		{
			Label2.Text = ex.Message;
		}
		//outside the try catch so that no matter what, the text boxes are cleared.
		TextBox6.Text = "";
		TextBox7.Text = "";
		TextBox8.Text = "";
		TextBox9.Text = "";
	}

	protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
	{

	}
}