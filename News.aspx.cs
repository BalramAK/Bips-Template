using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;           //Add
using System.Data.SqlClient; //Add
using System.Configuration; //Add

public partial class News : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Buddha International Public School, Kharkhoda (Sonipat)- News";
        GetNews();
    }

    public void GetNews()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("spNews", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter parSchoolId = new SqlParameter("@SchoolID", "bipsK");
            cmd.Parameters.Add(parSchoolId);
            con.Open();

            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = cmd;
            adp.Fill(dt);
            Repeater1.DataSource = dt;
            if (dt.Rows.Count == 0)
            {
                lblNews.Text = "Welcome to The School";
            }

            else
            {
                Repeater1.DataBind();
                //for (int i = 0; i < dt.Rows.Count; i++)
                //{

                //    if (dt.Rows[i]["date"]>=)
                //    {
                //        Repeater1.Items[0].FindControl("Attachment").Visible = false;
                //    }

                //    else
                //    {
                //        Repeater1.Items[0].FindControl("Attachment").Visible = true;
                //    }
                //}

            }
            
        }
    }
}