using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class admin_index : System.Web.UI.Page
{
    SqlConnection cn;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["perfectstudio"].ConnectionString);
    }

    protected void add_Click(object sender, EventArgs e)
    {
        cn.Open();
        string img="";
        if(image.HasFile)
        {
            img = image.FileName;
        }
        String qry = "insert into venders values('"+DropDownList1.SelectedItem+"','"+photo_p.Text+"','"+video_p.Text+"','" + album_p.Text + "','" + img + "','"+cinematic_video.Text+"','"+location.Text+"','"+detail.Text+"')";

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