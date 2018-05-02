using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Flipkart_Form
{
    public partial class Details : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["FlipkartForm"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con1 = new SqlConnection(CS))
            {

                string result = "select * from f_table1 where location = '" + ddllocation.SelectedValue + "' AND vehiclenumber='" + txtvhno.Text + "' ";
                SqlCommand cmd = new SqlCommand(result, con1);


                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con1.Open();
                GridView1.DataSource = dt;
                GridView1.DataBind();

                txtvhno.Text = string.Empty;


            }
        }



        protected void btnreset_Click(object sender, EventArgs e)
        {
            ddlzone.SelectedIndex = 0;
            txtvhno.Text = string.Empty;
            ddllocation.SelectedIndex = 0;


        }

        protected void ddlzone_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spDetails", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@zone", ddlzone.SelectedValue));
                ddllocation.Items.Clear();

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);                        //da. fill into dt
                con.Open();
                ddllocation.DataSource = dt;

                ddllocation.DataTextField = "location";  //stored procedure fetch of details
                ddllocation.DataValueField = "location";
                ddllocation.DataBind();

            }
            ddllocation.Items.Insert(0, new ListItem("--Select Location--", "0"));
        }

        protected void ddllocation_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection con1 = new SqlConnection(CS))
            {

                string result = "select * from f_table1 where location = '" + ddllocation.SelectedValue + "' AND zone='" + ddlzone.SelectedValue + "' ";
                SqlCommand cmd = new SqlCommand(result, con1);


                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con1.Open();

                GridView1.DataSource = dt;
                GridView1.DataBind();


            }
        }
    }
}