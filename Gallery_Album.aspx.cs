using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;           //Add
using System.Data.SqlClient; //Add
using System.Configuration; //Add

public partial class Gallery_Album : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Buddha International Public School, Kharkhoda (Sonipat)- Gallery Albums";
        GetCategory();
    }

    protected void GetCategory()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select max(Category_id)as Category_id,max(Category) as Category, max(Url) as thumb from tbl_Gallery where School_Id='bipsK' group by category", con);

            con.Open();
            dt = new DataTable();

            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = cmd;
            adp.Fill(dt);
            Repeater2.DataSource = dt;

            if (dt.Rows.Count == 0)
            {
                lblSelectedAlbum.Text = "Data will be Updated Soon...";
            }
            else
            {

                Repeater2.DataBind();
            }

        }
    }
    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        string id = e.CommandArgument.ToString();
        Response.Redirect("Gallery_Album_Images.aspx?Category_id=" + id);
    }
}