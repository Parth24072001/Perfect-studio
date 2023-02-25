using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net;
using System.Net.Mail;


public partial class bookingform : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["perfectstudio"].ConnectionString);

        string qry = "select * from userdata WHERE username='" + Session["user"] + "'";

        cn.Open();
        SqlCommand cmd = new SqlCommand(qry, cn);
   //     Response.Write(qry);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            
            name.Text = dr["username"].ToString();
            email.Text = dr["email"].ToString();
            Session["email"] = dr["email"].ToString();
            contact.Text = dr["contactno"].ToString();
            address.Text = dr["address"].ToString();
        }
        else
        {
            Response.Write("<script>alert('fail..')</script>");
        }
        cn.Close();

        string data = "select * from venders where id=" + Request.QueryString["pid"];

        cn.Open();
        SqlCommand scmd = new SqlCommand(data, cn);
  //           Response.Write(qry);
        SqlDataReader sdr = scmd.ExecuteReader();
        if (sdr.Read())
        {
            maincat.Text = sdr["main_cat"].ToString();
            Label6.Text = sdr["photo_p"].ToString();
            Label7.Text = sdr["video_p"].ToString();
            Label8.Text = sdr["cinematic_video"].ToString();
            Label1.Text = sdr["album_p"].ToString();
            CheckBoxList1.Items[0].Value = sdr["photo_p"].ToString();
            CheckBoxList1.Items[1].Value = sdr["video_p"].ToString();
            CheckBoxList1.Items[2].Value = sdr["cinematic_video"].ToString();
            CheckBoxList1.Items[3].Value = sdr["album_p"].ToString();
        }
        else
        {
            Response.Write("<script>alert('fail..')</script>");
        }
        cn.Close();
        
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Red;
            

        }
       
    }

    protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        cn.Open();

        string qry = "insert into booking values('" + name.Text + "','" + email.Text + "','" + contact.Text + "','" + address.Text + "','" + maincat.Text + "','" + Calendar1.SelectedDate + "','" + TextBox3.Text + "','" + TextBox7.Text + "','" + CheckBoxList1.SelectedItem + "','" + CheckBoxList2.SelectedItem + "','" + RadioButtonList1.SelectedValue + "','" + Label10.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, cn);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            string fromaddr = "perfectstudio111@gmail.com";
            string toaddr = Session["email"].ToString();//TO ADDRESS HERE
            string password = "perfectstudio";

            MailMessage msg = new MailMessage();
            msg.Subject = "Username &password";
            msg.From = new MailAddress(fromaddr);
            msg.Body = "Your package book successfully";
            msg.To.Add(new MailAddress(toaddr));
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.EnableSsl = true;
            NetworkCredential nc = new NetworkCredential(fromaddr, password);
            smtp.Credentials = nc;
            smtp.Send(msg);


            Response.Write("<script> alert('Data Inserted Sucessfully');</script>");
            Response.Redirect("index.aspx");

        }
        else
        {

            Response.Write("<script> alert('Data Inserted Not Sucessfully');</script>");
        }
        cn.Close();

    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int select = 0;
        for (int j = 0; j<= CheckBoxList1.Items.Count - 1; j++)
        {
            if (CheckBoxList1.Items[j].Selected)
            {
                select += Convert.ToInt32(CheckBoxList1.Items[j].Value);
            }
        }
        Label4.Text = select.ToString();
        int a = Convert.ToInt32(Label4.Text);
        int b = Convert.ToInt32(Label9.Text);
        int c = a + b;
        Label10.Text = c.ToString();

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label9.Text = RadioButtonList1.SelectedValue;

        int a = Convert.ToInt32(Label4.Text);
        int b = Convert.ToInt32(Label9.Text);
        int c = a + b;
        Label10.Text = c.ToString();
    }
}