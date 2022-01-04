using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;

public partial class Admission_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Buddha International Public School, Kharkhoda (Sonipat)- Admission Form";

    }

    public void SendMailNow(string name)
    {
        if (name != "")
        {
            string username = ConfigurationManager.AppSettings["MailUserName"].ToString();
            string password = ConfigurationManager.AppSettings["MailPassword"].ToString();
            MailMessage message = new MailMessage();

            message.From = new MailAddress(username, txtName.Text);
            message.To.Add(ConfigurationManager.AppSettings["ToMail"].ToString());

            message.Subject = "Admission Enquiry";    // Here you can declare the subject content 
            message.Body = "Hi Admin" + "<br/>" + "";
            message.Body += "You Got New  Enquiry: " + " <br/>" + "<br/>";


            message.Body += "Student Name - " + txtName.Text + "<br/>";
            message.Body += "Class - " + txtClass.Text + "<br/>";
            message.Body += "D.O.B - " + txtDOB.Text + "<br/>";
            message.Body += "Age. - " + txtAge.Text + "<br/>";
            message.Body += "Father's Name - " + txtFatherName.Text + "<br/>";
            message.Body += "Father's Cantact - " + txtFatherContact.Text + "<br/>";
            message.Body += "Mother's Name - " + txtMotherName.Text + "<br/>";
            message.Body += "Mother's Contact - " + txtMotherContact.Text + "<br/>";
            message.Body += "Village - " + txtVillage.Text + "<br/>";
            message.Body += "NAME OF THE PREVIOUS SCHOOL - " + txtPrevious.Text + "<br/>";
            message.Body += "WHY YOU ARE CHOOSING BIPS? - " + txtWhy.Text + "<br/>" + "<br/>";



            message.Body += "Have a nice day!" + " <br/>" + " <br/>";

            message.Body += "Warm Regards," + " <br/>";

            message.IsBodyHtml = true;

            SendEmail(message);



        }
        //return View("Index");
    }

    public void Reset()
    {
        txtName.Text = "";
        txtClass.Text = "";
        txtDOB.Text = "";
        txtAge.Text = "";
        txtFatherName.Text = "";
        txtFatherContact.Text = "";
        txtMotherName.Text = "";
        txtMotherContact.Text = "";
        txtPrevious.Text = "";
        txtWhy.Text = "";
    }


    public void SendEmail(MailMessage message)
    {

        String msg = null;
        string username = ConfigurationManager.AppSettings["MailUserName"].ToString();
        string password = ConfigurationManager.AppSettings["MailPassword"].ToString();
        message.From = new MailAddress(username, txtName.Text);
        SmtpClient client = new SmtpClient(ConfigurationManager.AppSettings["MailSender"].ToString());

        client.Host = "smtp.gmail.com";     // These are the host connection properties  

        client.Port = 25;
        client.EnableSsl = true;
        client.UseDefaultCredentials = true;

        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.Credentials = new System.Net.NetworkCredential(username, password);

        try
        {
            client.Send(message); // And finally this is the line which executes our process and sends mail             
            ScriptManager.RegisterStartupScript(this, GetType(), "AnyValue", "showAlert();", true);
            Reset();

        }
        catch (Exception e)
        {
            throw e;
            int b = 0;
            //msg = "Error :" + e.Message;
            //var a = _ss.save_Ex_Log(b, msg);

        }
    }






    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            SendMailNow(txtName.Text);
            lblResult.Text = "Mail Sent Successfully !";

        }
    }
}