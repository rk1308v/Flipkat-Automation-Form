using System;
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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["MyDbConn"].ConnectionString; 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = (new SqlConnection(CS));
            SqlCommand cmd = new SqlCommand("spAltAdhoc", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Date", txtdate.Text);
            cmd.Parameters.AddWithValue("@vehiclenumber", txtvhnum.Text);
            cmd.Parameters.AddWithValue("@altvehiclenumber", txtaltnum.Text);
            cmd.Parameters.AddWithValue("@Vendorname", txtvname.Text);
            cmd.Parameters.AddWithValue("@Vendorcontact", txtvnum.Text);
            cmd.Parameters.AddWithValue("@drivername", txtdname.Text);
            cmd.Parameters.AddWithValue("@drivercontact", txtdnum.Text);
            cmd.Parameters.AddWithValue("@vehicletype", txtvhtype.Text);
            cmd.Parameters.AddWithValue("@reportingTime", txtrtime.Text);
            cmd.Parameters.AddWithValue("@closingTime", txtctime.Text);
            cmd.Parameters.AddWithValue("@openingKM", txtokm.Text);
            cmd.Parameters.AddWithValue("@closingKM", txtckm.Text);
          

            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            txtdate.Text = string.Empty;
            txtvhnum.Text = string.Empty;
            txtaltnum.Text = string.Empty;
            txtvname.Text = string.Empty;
            txtvnum.Text = string.Empty;
            txtdname.Text = string.Empty;
            txtdnum.Text = string.Empty;
            txtvhtype.Text = string.Empty;
            txtrtime.Text = string.Empty;
            txtctime.Text = string.Empty;
            txtokm.Text = string.Empty;
            txtckm.Text = string.Empty;
        }
        

        protected void txtdate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtvhnum_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtaltnum_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtvname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtvnum_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtdname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtdnum_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtvhtype_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtrtime_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtctime_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtokm_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtckm_TextChanged(object sender, EventArgs e)
        {

        }

       

       
    }
}