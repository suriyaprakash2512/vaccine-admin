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
    public partial class UpdateSlots : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=DESKTOP-HA09QBK;Database=VaccineManagementDb;trusted_connection=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into DateTimeSlots values('" + TxtDate.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            LblMsg.Text = "New Date and Time has been inserted";
        }

        protected void BtnUpd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Location values('" + TxtCity.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            LblMsg0.Text = "New City has been inserted";

        }

        protected void BtnDel_Click(object sender, EventArgs e)
        {
            if (DateTime.TryParse(DDLDat.Text, out DateTime deleteDate))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM DateTimeSlots WHERE DateTimings = @Datetime", con);
                cmd.Parameters.AddWithValue("@Datetime", deleteDate);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds, "DateTimeSlots");

                if (ds.Tables["DateTimeSlots"].Rows.Count == 0)
                {
                    LblMsg1.Text = "No date Found to Delete Data";
                }
                else
                {
                    SqlCommand cmd2 = new SqlCommand("DELETE FROM DateTimeSlots WHERE DateTimings = @Datetime", con);
                    cmd2.Parameters.AddWithValue("@Datetime", deleteDate);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    LblMsg1.Text = "Date has been Deleted";
                }
            }
            else
            {
                LblMsg1.Text = "Invalid date format. Please enter a valid date.";
            }
        }


        protected void BtnDlt2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Location where CityName = @CityName", con);
            cmd.Parameters.AddWithValue("@CityName", DDLCity.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Location");
            if (ds.Tables["Location"].Rows.Count == 0)
            {
                LblMsg2.Text = "No Such City Found to Delete";
            }
            else
            {
                SqlCommand cmd2 = new SqlCommand("delete from Location where CityName ='" + DDLCity.Text + "'", con);
                cmd2.ExecuteNonQuery();
                con.Close();
                LblMsg2.Text = "City has been Deleted";



            }
        }
    }
}