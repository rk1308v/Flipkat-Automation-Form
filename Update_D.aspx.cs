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
    public partial class Update_D : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["FlipkartForm"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtdate.Text = GridView1.SelectedRow.Cells[1].Text;
            txtaltvhno.Text = GridView1.SelectedRow.Cells[3].Text;
            txtrunid.Text = GridView1.SelectedRow.Cells[4].Text;
            txtreptime.Text = GridView1.SelectedRow.Cells[5].Text;
            txtopenkm.Text = GridView1.SelectedRow.Cells[6].Text;
            txtctime.Text = GridView1.SelectedRow.Cells[7].Text;
            txtckm.Text = GridView1.SelectedRow.Cells[8].Text;
            txtremarks.Text = GridView1.SelectedRow.Cells[9].Text;
            //    txtnewlocation.Text = GridView1.SelectedRow.Cells[2].Text;
            //    txtvname.Text = GridView1.SelectedRow.Cells[3].Text;
            //    txtvhtype.Text = GridView1.SelectedRow.Cells[4].Text;
            //    
            //    txthub.Text = GridView1.SelectedRow.Cells[6].Text;
            //    txtrunid.Text = GridView1.SelectedRow.Cells[7].Text;
            //    //dwnoptype.SelectedValue = GridView1.SelectedRow.Cells[2].SelectedValue;
            //    txtrtime.Text = GridView1.SelectedRow.Cells[9].Text;
            //    txtokm.Text = GridView1.SelectedRow.Cells[10].Text;
            //    txtctime.Text = GridView1.SelectedRow.Cells[11].Text;
            //    txtckm.Text = GridView1.SelectedRow.Cells[12].Text;
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            using (SqlConnection cona = new SqlConnection(CS))
            {
                SqlCommand cmda = new SqlCommand("spUpdateD", cona);

                cmda.CommandType = System.Data.CommandType.StoredProcedure;
                cmda.Parameters.AddWithValue("@date", DateTime.ParseExact(txtdate.Text.Trim(), "dd/MM/yyyy", null).ToString("MM/dd/yyyy"));
                cmda.Parameters.AddWithValue("@vhno", ddlvhno.SelectedValue);
                cmda.Parameters.AddWithValue("@altvhno", txtaltvhno.Text);
                cmda.Parameters.AddWithValue("@runid", txtrunid.Text);
                cmda.Parameters.AddWithValue("@reptime", txtreptime.Text);
                cmda.Parameters.AddWithValue("@openkm", txtopenkm.Text);
                cmda.Parameters.AddWithValue("@closetime", txtctime.Text);
                cmda.Parameters.AddWithValue("@closekm", txtckm.Text);
                cmda.Parameters.AddWithValue("@remarks", txtremarks.Text);
                cona.Open();
                int a = cmda.ExecuteNonQuery();
                if (a == 0)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Data Not Updated')", true);
                }
                else
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Data Added')", true);


                    DropDownList1.SelectedIndex = 0;
                    txtdate.Text = string.Empty;
                    ddlvhno.SelectedIndex = 0;
                    txtaltvhno.Text = string.Empty;
                    txtrunid.Text = string.Empty;
                    txtreptime.Text = string.Empty;
                    txtopenkm.Text = string.Empty;
                    txtctime.Text = string.Empty;
                    txtckm.Text = string.Empty;
                    txtremarks.Text = string.Empty;
                }
            }
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            DropDownList1.SelectedIndex = 0;
            txtdate.Text = string.Empty;
            ddlvhno.SelectedIndex = 0;
            txtaltvhno.Text = string.Empty;
            txtrunid.Text = string.Empty;
            txtreptime.Text = string.Empty;
            txtopenkm.Text = string.Empty;
            txtctime.Text = string.Empty;
            txtckm.Text = string.Empty;
            txtremarks.Text = string.Empty;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection datepb = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spGetVhNo", datepb);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@zone", DropDownList1.SelectedValue));

                ddlvhno.Items.Clear();

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);                        //da. fill into dt

                datepb.Open();
                ddlvhno.DataSource = dt;
                ddlvhno.DataTextField = "vehiclenumber";
                ddlvhno.DataValueField = "vehiclenumber";
                ddlvhno.DataBind();
            }
            ddlvhno.Items.Insert(0, new ListItem("--Select Vh No--", "0"));

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection conu = new SqlConnection(CS))
            {
                SqlCommand cmdu = new SqlCommand("spUD", conu);

                cmdu.CommandType = System.Data.CommandType.StoredProcedure;
                cmdu.Parameters.AddWithValue("@date", DateTime.ParseExact(txtdate.Text.Trim(), "dd/MM/yyyy", null).ToString("MM/dd/yyyy"));
                cmdu.Parameters.AddWithValue("@vhno", ddlvhno.SelectedValue);
                cmdu.Parameters.AddWithValue("@altvhno", txtaltvhno.Text);
                cmdu.Parameters.AddWithValue("@runid", txtrunid.Text);
                cmdu.Parameters.AddWithValue("@reptime", txtreptime.Text);
                cmdu.Parameters.AddWithValue("@openkm", txtopenkm.Text);
                cmdu.Parameters.AddWithValue("@closetime", txtctime.Text);
                cmdu.Parameters.AddWithValue("@closekm", txtckm.Text);
                cmdu.Parameters.AddWithValue("@remarks", txtremarks.Text);
                conu.Open();
                int a = cmdu.ExecuteNonQuery();
                if (a == 0)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Data Not Updated')", true);
                }
                else
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Data Updated')", true);

                    DropDownList1.SelectedIndex = 0;
                    txtdate.Text = string.Empty;
                    ddlvhno.SelectedIndex = 0;
                    txtaltvhno.Text = string.Empty;
                    txtrunid.Text = string.Empty;
                    txtreptime.Text = string.Empty;
                    txtopenkm.Text = string.Empty;
                    txtctime.Text = string.Empty;
                    txtckm.Text = string.Empty;
                    txtremarks.Text = string.Empty;
                }
            }


        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            using (SqlConnection cond = new SqlConnection(CS))
            {
                SqlCommand cmdd = new SqlCommand("spD", cond);

                cmdd.CommandType = System.Data.CommandType.StoredProcedure;
                cmdd.Parameters.AddWithValue("@date", DateTime.ParseExact(txtdate.Text.Trim(), "dd/MM/yyyy", null).ToString("MM/dd/yyyy"));
                cmdd.Parameters.AddWithValue("@vhno", ddlvhno.SelectedValue);
                cmdd.Parameters.AddWithValue("@altvhno", txtaltvhno.Text);
                cmdd.Parameters.AddWithValue("@runid", txtrunid.Text);
                cmdd.Parameters.AddWithValue("@reptime", txtreptime.Text);
                cmdd.Parameters.AddWithValue("@openkm", txtopenkm.Text);
                cmdd.Parameters.AddWithValue("@closetime", txtctime.Text);
                cmdd.Parameters.AddWithValue("@closekm", txtckm.Text);
                cmdd.Parameters.AddWithValue("@remarks", txtremarks.Text);
                cond.Open();
                int a = cmdd.ExecuteNonQuery();
                if (a == 0)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Data Not Deleted')", true);
                }
                else
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Data Deleted')", true);

                    DropDownList1.SelectedIndex = 0;
                    txtdate.Text = string.Empty;
                    ddlvhno.SelectedIndex = 0;
                    txtaltvhno.Text = string.Empty;
                    txtrunid.Text = string.Empty;
                    txtreptime.Text = string.Empty;
                    txtopenkm.Text = string.Empty;
                    txtctime.Text = string.Empty;
                    txtckm.Text = string.Empty;
                    txtremarks.Text = string.Empty;
                }
            }
        }

        protected void ddlvhno_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       



    }
}