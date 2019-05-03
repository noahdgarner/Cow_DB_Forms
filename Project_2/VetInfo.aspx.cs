using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VetInfo : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		Button tmp = (Button)sender;

		Label1.Text = "";
		try
		{
			//This is similar to the C# we will need for project 2
			SqlDataSource2.InsertParameters["VetID"].DefaultValue = DetailsView1.SelectedValue.ToString();
			// Note - The customer ID is an auto generated identity field. It should not be included in the insert.
			SqlDataSource2.InsertParameters["TreatmentKey"].DefaultValue = TextBox4.Text;
			SqlDataSource2.InsertParameters["CowMedicalKey"].DefaultValue = TextBox5.Text;
			SqlDataSource2.InsertParameters["Medication"].DefaultValue = TextBox6.Text;
			SqlDataSource2.InsertParameters["MediconQuantity"].DefaultValue = TextBox7.Text;
			SqlDataSource2.InsertParameters["Cost"].DefaultValue = TextBox8.Text;
			SqlDataSource2.InsertParameters["SymptomKey"].DefaultValue = TextBox9.Text;
			SqlDataSource2.Insert();
		}
		catch (Exception ex)
		{
			Label1.Text = ex.Message;
		}
		//outside the try catch so that no matter what, the text boxes are cleared.
		TextBox4.Text = "";
		TextBox5.Text = "";
		TextBox6.Text = "";
		TextBox7.Text = "";
		TextBox8.Text = "";
		TextBox9.Text = "";
	}
}