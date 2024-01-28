using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VaccineProject
{
    public partial class UpdateVaccineDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=DESKTOP-HA09QBK;Database=VaccineManagementDb;trusted_connection=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into VaccineDetails values('" + TxtVacName.Text + "','" + TxtVacMan.Text + "','" + TxtVaxStock.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            LblMsg.Text = "Data has been inserted";
            GridView1.DataBind();
            TxtVacName.Text = "";
            TxtVacMan.Text = "";
            TxtVaxStock.Text = "";
            
            
        }

        protected void BtnUpd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from VaccineDetails where  VaccineID = @VaccineID", con);
            cmd.Parameters.AddWithValue("@VaccineID", DropDownList1.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "VaccineDetails");
            if (ds.Tables["VaccineDetails"].Rows.Count == 0)
            {
                LblMsg2.Text = "No Id Found to Update Data";
            }
            else
            {
                SqlCommand cmd2 = new SqlCommand("update VaccineDetails set VaccineName='" + TxtVaxName2.Text + "', Manufacturer = '" + TxtVacMan2.Text + "',Stock='" + TxtVaxStock2.Text + "' where VaccineID = '" + DropDownList1.Text + "'", con);
                cmd2.ExecuteNonQuery();
                con.Close();
                LblMsg2.Text = "Data has been updated";
                GridView1.DataBind();
                
                TxtVaxName2.Text = "";
                TxtVacMan2.Text = "";
                TxtVaxStock2.Text = "";
            }
        }

        protected void BtnDlt_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from VaccineDetails where  VaccineID = @VaccineID", con);
            cmd.Parameters.AddWithValue("@VaccineID", TxtDlt.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "VaccineDetails");
            if (ds.Tables["VaccineDetails"].Rows.Count == 0)
            {
                LblMsg2.Text = "No Id Found to Delete Data";
            }
            else
            {
                SqlCommand cmd2 = new SqlCommand("delete from VaccineDetails where VaccineID ='" + Convert.ToInt32(TxtDlt.Text).ToString() + "'", con);
                cmd2.ExecuteNonQuery();
                con.Close();
                LblMsg2.Text = "Data has been Deleted";
                GridView1.DataBind();
                TxtDlt.Text = "";
                
            }

        }
    }
}