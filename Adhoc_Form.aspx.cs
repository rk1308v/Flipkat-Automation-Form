using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

using System.Globalization;
namespace adhoc
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        string CS = ConfigurationManager.ConnectionStrings["FlipkartForm"].ConnectionString; 
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void txtvname_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand("spAdhoc", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Date", Txtdate.Text);
            cmd.Parameters.AddWithValue("@NewLocation ", Txtaddloc.Text);
            
            cmd.Parameters.AddWithValue("@Vendorname", txtvname.Text);
            cmd.Parameters.AddWithValue("@Vehicletype", txtvhname.Text);
            cmd.Parameters.AddWithValue("@Vehiclenumber", txtvhnum.Text);
            cmd.Parameters.AddWithValue("@HubDetails", txthub.Text);
            cmd.Parameters.AddWithValue("@Runsheetid", txtrun.Text);
            cmd.Parameters.AddWithValue("@OperationType", dwnoptype.SelectedValue);
            cmd.Parameters.AddWithValue("@ClosingTime", txtctime.Text);
            cmd.Parameters.AddWithValue("@ReportingTime", txtrtime.Text);
            cmd.Parameters.AddWithValue("@ClosingKM", txtckm.Text);
            cmd.Parameters.AddWithValue("@OpeningKM", txtokm.Text);
            cmd.Parameters.AddWithValue("@Remarks",txtrmk.Text);
            
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            

            Txtdate.Text = string.Empty;
            Txtaddloc.Text = string.Empty;
            txtvname.Text = string.Empty;
            txtvhname.Text = string.Empty;
            txtvhnum.Text = string.Empty;
            txthub.Text = string.Empty;
            txtrun.Text = string.Empty;
            dwnoptype.SelectedIndex = 0;
            txtrtime.Text = string.Empty;
            txtokm.Text = string.Empty;
            txtctime.Text = string.Empty;
            txtckm.Text = string.Empty;
            txtrmk.Text = string.Empty;
            cmd.Connection.Close();
            Literal1.Text = "Extry Successful";
        }

        protected void Txtdate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Txtaddloc_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtvname_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void txtvhname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtvhnum_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txthub_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtrun_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtctime_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtrtime_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtckm_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtokm_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtrmk_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Txtaddloc_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Txtdate.Text = string.Empty;
            Txtaddloc.Text = string.Empty;
            txtvname.Text = string.Empty;
            txtvhname.Text = string.Empty;
            txtvhnum.Text = string.Empty;
            txthub.Text = string.Empty;
            txtrun.Text = string.Empty;
            dwnoptype.SelectedIndex = 0;
            txtrtime.Text = string.Empty;
            txtokm.Text = string.Empty;
            txtctime.Text = string.Empty;
            txtckm.Text = string.Empty;
        }

    }
}