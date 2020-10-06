using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class searchResult : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		string conn = "Data Source=cd-cdb-jht67mua.sql.tencentcdb.com;Port=62316;User ID=root;Password=6+1group;DataBase=group_project";
		MySqlConnection con = new MySqlConnection(conn);
		con.Open();
		MySqlCommand cmd = new MySqlCommand("select * from login", con);
		MySqlDataReader dr = cmd.ExecuteReader();
		GridView1.DataSource = dr;
		GridView1.DataBind();
		dr.Close();
		con.Close();

	}
}