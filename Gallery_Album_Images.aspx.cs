using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;           //Add
using System.Data.SqlClient; //Add
using System.Configuration; //Add

public partial class Gallery_Album_Images : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Buddha International Public School, Kharkhoda (Sonipat)- Gallery Album Images";
       
        if (!IsPostBack)
        {
            string Category_id = Request.QueryString["Category_id"];
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM [tbl_Gallery] WHERE [Category_id] =" + Category_id + " and  School_Id= 'bipsK' order by Id desc", con);


                con.Open();
                DataTable dt = new DataTable();

                SqlDataAdapter adp = new SqlDataAdapter();
                adp.SelectCommand = cmd;
                adp.Fill(dt);
                Repeater1.DataSource = dt;


                Repeater1.DataBind();

                lblSelectedAlbum.Text = "Album: " + dt.Rows[0].Field<string>("Category");


            }




        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Gallery_Album.aspx");
    }
}