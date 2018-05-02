using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace Flipkart_Form
{
    public partial class Main_Form : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["FlipkartForm"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reset_Click(object sender, EventArgs e)
        {
            txtdate.Text = string.Empty;
            txtnewlocation.Text = string.Empty;
            ddlzone.SelectedIndex = 0;
            txtvname.Text = string.Empty;
            txtvcontact.Text = string.Empty;
            txtdname.Text = string.Empty;
            txtdcontact.Text = string.Empty;
            txtvhnum.Text = string.Empty;
            txtvhtype.Text = string.Empty;
            txthub.Text = string.Empty;
            txthubcontact.Text = string.Empty;
            
            dwnoptype.SelectedIndex = 0;
            txtrtime.Text = string.Empty;
            txtokm.Text = string.Empty;
            txtctime.Text = string.Empty;
            txtckm.Text = string.Empty;

        }

       
        protected void submit_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("spAddJob", con);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@date", DateTime.ParseExact(txtdate.Text.Trim(), "dd/MM/yyyy", null).ToString("MM/dd/yyyy"));
                cmd.Parameters.AddWithValue("@location", txtnewlocation.Text);
                cmd.Parameters.AddWithValue("@zone", ddlzone.SelectedValue);
                cmd.Parameters.AddWithValue("@vendorname", txtvname.Text);
                cmd.Parameters.AddWithValue("@vendorcontact", txtvcontact.Text);
                cmd.Parameters.AddWithValue("@drivername", txtdname.Text);
                cmd.Parameters.AddWithValue("@drivercontact", txtdcontact.Text);
                cmd.Parameters.AddWithValue("@vehiclenumber", txtvhnum.Text);
                cmd.Parameters.AddWithValue("@vehicletype", txtvhtype.Text);
                cmd.Parameters.AddWithValue("@hub", txthub.Text);
                cmd.Parameters.AddWithValue("@hubcontact", txthubcontact.Text);
                
                cmd.Parameters.AddWithValue("@optype", dwnoptype.SelectedValue);
                cmd.Parameters.AddWithValue("@reptime", txtrtime.Text);
                cmd.Parameters.AddWithValue("@openkm", txtokm.Text);
                cmd.Parameters.AddWithValue("@closetime", txtctime.Text);
                cmd.Parameters.AddWithValue("@closekm", txtckm.Text);


                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a == 0)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Data Not Updated')", true);
                }
                else
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Dedicated Vehicle Added')", true);

                    txtdate.Text = string.Empty;
                    txtnewlocation.Text = string.Empty;
                    ddlzone.SelectedIndex = 0;
                    txtvname.Text = string.Empty;
                    txtvcontact.Text = string.Empty;
                    txtdname.Text = string.Empty;
                    txtdcontact.Text = string.Empty;
                    txtvhnum.Text = string.Empty;
                    txtvhtype.Text = string.Empty;
                    txthub.Text = string.Empty;
                    txthubcontact.Text = string.Empty;
                    dwnoptype.SelectedIndex = 0;
                    txtrtime.Text = string.Empty;
                    txtokm.Text = string.Empty;
                    txtctime.Text = string.Empty;
                    txtckm.Text = string.Empty;
                }



            }

        }



        //protected void txtseldate_Click(object sender, EventArgs e)
        //{

        //    using (SqlConnection datepb = new SqlConnection(CS))
        //    {
        //        SqlCommand cmd = new SqlCommand("spDate", datepb);
        //        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //        cmd.Parameters.Add(new SqlParameter("@date", DateTime.ParseExact(txtdate.Text.Trim(), "dd/MM/yyyy", null).ToString("MM/dd/yyyy")));

        //        dwnselectlocation.Items.Clear();

        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);                        //da. fill into dt

        //        datepb.Open();
        //        dwnselectlocation.DataSource = dt;
        //        dwnselectlocation.Items.Insert(0, new ListItem("--Select Location--", "0"));
        //        dwnselectlocation.DataTextField = "location";
        //        dwnselectlocation.DataValueField = "location";
        //        dwnselectlocation.DataBind();

        //    }

        //}



        //protected void showdetails_Click(object sender, EventArgs e)
        //{
        //    using (SqlConnection con1 = new SqlConnection(CS))
        //    {

        //        string result = "select * from f_table1 where location = '" + dwnselectlocation.SelectedValue + "' ";
        //        SqlCommand cmd = new SqlCommand(result, con1);


        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);
        //        con1.Open();

        //        GridView1.DataSource = dt;
        //        GridView1.DataBind();


        //    }
        //}

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    txtdate.Text = GridView1.SelectedRow.Cells[1].Text;
        //    txtnewlocation.Text = GridView1.SelectedRow.Cells[2].Text;
        //    txtvname.Text = GridView1.SelectedRow.Cells[3].Text;
        //    txtvhtype.Text = GridView1.SelectedRow.Cells[4].Text;
        //    txtvhnum.Text = GridView1.SelectedRow.Cells[5].Text;
        //    txthub.Text = GridView1.SelectedRow.Cells[6].Text;
        //    txtrunid.Text = GridView1.SelectedRow.Cells[7].Text;
        //    //dwnoptype.SelectedValue = GridView1.SelectedRow.Cells[2].SelectedValue;
        //    txtrtime.Text = GridView1.SelectedRow.Cells[9].Text;
        //    txtokm.Text = GridView1.SelectedRow.Cells[10].Text;
        //    txtctime.Text = GridView1.SelectedRow.Cells[11].Text;
        //    txtckm.Text = GridView1.SelectedRow.Cells[12].Text;
        //}

        protected void showdetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Details.aspx");
        }

        protected void btndalternate_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AddDAltVh.aspx");
        }

    }
}