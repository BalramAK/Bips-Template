using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;           //Add
using System.Data.SqlClient; //Add
using System.Configuration; //Add

public partial class _Default : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        slidertop1();
       
       
       
        
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
            dt.Clear();
            //GetRecentActivity();
        }
    }

    //public void GetRecentActivity()
    //{
    //    using (SqlConnection con = new SqlConnection(CS))
    //    {
    //        SqlCommand cmd = new SqlCommand("spRecentActivity", con);
    //        cmd.CommandType = CommandType.StoredProcedure;

    //        SqlParameter parSchoolId = new SqlParameter("@SchoolID", "bipsK");
    //        cmd.Parameters.Add(parSchoolId);
    //        con.Open();

    //        SqlDataAdapter adp = new SqlDataAdapter();
    //        adp.SelectCommand = cmd;
    //        adp.Fill(dt);
    //        Repeater2.DataSource = dt;
    //        if (dt.Rows.Count == 0)
    //        {
    //            lblActivity.Text = "Welcome to The School";
                
    //        }

    //        else
    //        {
    //            Repeater2.DataBind();
    //            //for (int i = 0; i < dt.Rows.Count; i++)
    //            //{

    //            //    if (dt.Rows[i]["date"]>=)
    //            //    {
    //            //        Repeater1.Items[0].FindControl("Attachment").Visible = false;
    //            //    }

    //            //    else
    //            //    {
    //            //        Repeater1.Items[0].FindControl("Attachment").Visible = true;
    //            //    }
    //            //}

    //        }
    //    }
    //}
    public void slider()
    {


        try
        {

            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from tb_opsbanner where schoolid='bipsK'and Title!='slider1'", con);
                con.Open();
                SqlDataAdapter adp = new SqlDataAdapter();
                adp.SelectCommand = cmd;
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    rep1.DataSource = dt;
                    rep1.DataBind();
                }
                dt.Clear();

                GetNews();
            }
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
    }


    public void slidertop1()
    {


        try
        {

            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from tb_opsbanner where Title='slider1' and schoolid='bipsK'", con);
                con.Open();
                SqlDataAdapter adp = new SqlDataAdapter();
                adp.SelectCommand = cmd;
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    slidertop.DataSource = dt;
                    slidertop.DataBind();
                }
            }
            dt.Clear();

            slider();
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
    }

   
}