using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Flipkart_Form
{
    public partial class AddDAltVh : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["FlipkartForm"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("spAddDJob", con);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@date", txtdate.Text);
                cmd.Parameters.AddWithValue("@vehiclenumber", txtvhno.Text);
                cmd.Parameters.AddWithValue("@altvehiclenumber", txtaltvhno.Text);
                cmd.Parameters.AddWithValue("@vendorname", txtvname.Text);
                cmd.Parameters.AddWithValue("@vendorcontact", txtvcontact.Text);
                cmd.Parameters.AddWithValue("@drivername", txtdname.Text);
                cmd.Parameters.AddWithValue("@drivercontact", txtdcontact.Text);

                cmd.Parameters.AddWithValue("@vehicletype", txtvhtype.Text);
                cmd.Parameters.AddWithValue("@reptime", txtreptime.Text);
                cmd.Parameters.AddWithValue("@openkm", txtopenkm.Text);
                cmd.Parameters.AddWithValue("@closetime", txtclosetime.Text);
                cmd.Parameters.AddWithValue("@closekm", txtclosekm.Text);


                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a == 0)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Data Not Updated')", true);
                }
                else
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Alternate Dedicated Vehicle Added')", true);

                    txtdate.Text = string.Empty;
                    txtvhno.Text = string.Empty;
                    txtaltvhno.Text = string.Empty;
                    txtvname.Text = string.Empty;
                    txtvcontact.Text = string.Empty;
                    txtdname.Text = string.Empty;
                    txtdcontact.Text = string.Empty;
                    txtvhtype.Text = string.Empty;
                    txtreptime.Text = string.Empty;
                    txtopenkm.Text = string.Empty;
                    txtclosetime.Text = string.Empty;
                    txtclosekm.Text = string.Empty;
                }

            }
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            txtdate.Text = string.Empty;
            txtvhno.Text = string.Empty;
            txtaltvhno.Text = string.Empty;
            txtvname.Text = string.Empty;
            txtvcontact.Text = string.Empty;
            txtdname.Text = string.Empty;
            txtdcontact.Text = string.Empty;
            txtvhtype.Text = string.Empty;
            txtreptime.Text = string.Empty;
            txtopenkm.Text = string.Empty;
            txtclosetime.Text = string.Empty;
            txtclosekm.Text = string.Empty;
        }

    }
}