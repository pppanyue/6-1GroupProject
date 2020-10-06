using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (IsPostBack)
		{
			string conn = "Data Source=cd-cdb-jht67mua.sql.tencentcdb.com;Port=62316;User ID=root;Password=6+1group;DataBase=group_project";
			MySqlConnection con = new MySqlConnection(conn);
			con.Open();
			MySqlCommand cmd = new MySqlCommand("select count(*) from User1 where Account=@Account and Password=@Password_", con);

			string username = UsernameTextBox.Text.Trim();//获取到文本框中的用户名
			string password = PasswordTextBox.Text;//获取到文本框中的密码

			string usernameRequest = 
			string passwordRequest = 
				
			//string username = Request["username"];
			//string password = Request["password"];
			//在验证码处理程序中，将验证码放入Session中（一般处理程序虚要实现标记接口IRequiresSessionState）

			if (username == "xuxuzhaozhao1" && password == "XXXX")
			{
				//X分别填写下面两种方法不同的代码
				//X
			}


			else
			{
				Response.Write("<script>alert('验证码错误')</script>");
			}
		}
	}


}