using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_edititem : System.Web.UI.Page
{
    SqlConnection cn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["perfectstudio"].ConnectionString);

        if (!Page.IsPostBack)
        {
            SqlCommand cmd = new SqlCommand("select * from venders where id=" + Request.QueryString["id"], cn);
            cn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                DropDownList1.SelectedValue = dr["main_cat"].ToString();
                Image1.ImageUrl = "~/img/" + dr["image"].ToString();
                photo_p.Text = dr["photo_p"].ToString();
                video_p.Text = dr["video_p"].ToString();
                album_p.Text = dr["album_p"].ToString();
                location.Text = dr["location"].ToString();
                cinematic_video.Text = dr["cinematic_video"].ToString();

            }

            cn.Close();
        }
    }

    protected void Update_Click(object sender, EventArgs e)
    {
        cn.Open();
        string img = "";
        if (image.HasFile)
        {
            img = image.FileName;
        }
        String qry = "update venders set main_cat='" + DropDownList1.SelectedItem + "',photo_p='" + photo_p.Text + "',video_p='" + video_p.Text + "',album_p='" + album_p.Text + "',location='" + location.Text + "','"+detail.Text+"',cinematic_video='" + cinematic_video.Text + "',image='" + img + "' where id=" + Request.QueryString["id"];

        SqlCommand cmd = new SqlCommand(qry, cn);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
        {
            image.SaveAs(Server.MapPath("~\\img\\" + image.FileName));
            Response.Write("<script> alert('Data Inserted Sucessfully');</script>");
            Response.Redirect("showitem.aspx");
        }
        else
        {

            Response.Write("<script> alert('Data Inserted Not Sucessfully');</script>");
        }
        cn.Close();
    }
}