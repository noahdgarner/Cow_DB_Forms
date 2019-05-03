using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab9
{
	public partial class Components : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			Button tmp = (Button)sender;

			tmp.Text = "...clicked...";
			try
			{
				//This is similar to the C# we will need for project 2
				SqlDataSource2.InsertParameters["ComponentID"].DefaultValue = DetailsView1.SelectedValue.ToString();
				// Note - The customer ID is an auto generated identity field. It should not be included in the insert.
				SqlDataSource2.InsertParameters["SerialNumber"].DefaultValue = TextBox1.Text;
				SqlDataSource2.InsertParameters["SubstituteID"].DefaultValue = TextBox3.Text;
				SqlDataSource2.InsertParameters["Location"].DefaultValue = TextBox4.Text;
				SqlDataSource2.InsertParameters["Quantity"].DefaultValue = TextBox5.Text;
				SqlDataSource2.InsertParameters["DateInstalled"].DefaultValue = TextBox6.Text;
				SqlDataSource2.InsertParameters["EmployeeID"].DefaultValue = TextBox7.Text;



				SqlDataSource2.Insert();

				TextBox1.Text = "";
				TextBox3.Text = "";
				TextBox4.Text = "";
				TextBox5.Text = "";
				TextBox6.Text = "";
				TextBox7.Text = "";

			}
			catch (Exception ex)
			{
				Label1.Text = ex.Message;
			}
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			Button tmp = (Button)sender;

			tmp.Text = "...clicked...";
			try
			{

				SqlDataSource2.InsertParameters["ComponentID"].DefaultValue = DetailsView1.SelectedValue.ToString();

				// Note - The customer ID is an auto generated identity field. It should not be included in the insert.
				SqlDataSource3.InsertParameters["PurchaseID"].DefaultValue = TextBox8.Text;
				SqlDataSource3.InsertParameters["PricePaid"].DefaultValue = TextBox10.Text;
				SqlDataSource3.InsertParameters["Quantity"].DefaultValue = TextBox11.Text;
				SqlDataSource3.InsertParameters["QuantityReceived"].DefaultValue = TextBox12.Text;

				SqlDataSource3.Insert();

				TextBox8.Text = "";
				TextBox10.Text = "";
				TextBox11.Text = "";
				TextBox12.Text = "";


			}
			catch (Exception ex)
			{
				Label2.Text = ex.Message;
			}
		}

		protected void TextBox1_TextChanged(object sender, EventArgs e)
		{

		}
	}
}