using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace YesilBursam
{
    public partial class HavaDurumu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadWeatherData();
            }
        }

        private void LoadWeatherData()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT HavaId, Tarih, Sıcaklık, Durum FROM HavaDurumu ORDER BY Tarih";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    repeaterHavaDurumu.DataSource = reader;
                    repeaterHavaDurumu.DataBind();
                }
            }
        }
    }
}
