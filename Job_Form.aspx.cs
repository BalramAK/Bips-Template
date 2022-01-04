using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;

public partial class Job_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Buddha International Public School, Kharkhoda (Sonipat)- Job Form";
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

            message.Subject = "Job Enquiry";    // Here you can declare the subject content 
            message.Body = "Hi Admin" + "<br/>" + "";
            message.Body += "You Got New Job Enquiry: " + " <br/>" + "<br/>";


            message.Body += "Post applied for - " + txtPost.Text + "<br/>";
            message.Body += "Full Name - " + txtName.Text + "<br/>";
            message.Body += "Father's / Husband's Name - " + txtFatherName.Text + "<br/>";
            //DateTime departureDate;
            //if (!DateTime.TryParse(this.txtDate.Text, out departureDate))
            //    departureDate.ToString("MM-dd-yyyy");

            //  string dob = Convert.ToDateTime(txtDate.Text).ToString('dd-MM-yyyy');

            DateTime datetime = Convert.ToDateTime(txtDate.Text);
            String CurrentTime = String.Format("{0:dd-MMM-yyyy}", datetime);

            message.Body += "Date of Birth - " + CurrentTime + "<br/>";
            string value = "";
            bool isChecked = RadioButton1.Checked;
            if (isChecked)
                value = RadioButton1.Text;
            else
                value = RadioButton2.Text;
            message.Body += "Gender - " + value + "<br/>";
            message.Body += "Address - " + txtAddress.Text + "<br/>";
            message.Body += "Area - " + txtArea.Text + "<br/>";
            message.Body += "City - " + txtCity.Text + "<br/>";
            message.Body += "Pin Code - " + txtPinCode.Text + "<br/>";
            message.Body += "Communication Mobile No. - " + txtMobile.Text + "<br/>";
            message.Body += "Email - " + txtEmail.Text + "<br/>";
            message.Body += "Resume - Find Attachment below - ";
            if (FileUpload1.HasFile)
            {
                message.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
            }

            message.Body += "<br/>" + "<br/>";

            message.Body += "Have a nice day!" + " <br/>" + " <br/>";

            message.Body += "Warm Regards," + " <br/>";

            message.IsBodyHtml = true;

            SendEmail(message);



        }
        //return View("Index");
    }

    public void Reset()
    {
        txtPost.Text = "";
        txtName.Text = "";
        txtFatherName.Text = "";
        txtDate.Text = "";
        txtFatherName.Text = "";
        txtAddress.Text = "";
        txtArea.Text = "";
        txtCity.Text = "";
        txtPinCode.Text = "";
        txtMobile.Text = "";
        txtEmail.Text = "";
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







    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            SendMailNow(txtName.Text);
            lblResult.Text = "Mail Sent Successfully !";

        }
    }
}