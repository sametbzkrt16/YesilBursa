using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace YesilBursam
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadHakkimizda();
            }
        }

        private void LoadHakkimizda()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT TOP (1) [Metin] FROM Hakkimizda"; // Tek bir kaydı al
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    try
                    {
                        con.Open();
                        string metin = cmd.ExecuteScalar() as string; // Tek bir veri dönecektir
                        if (!string.IsNullOrEmpty(metin))
                        {
                            lblHakkimizdaMetin.Text = metin;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblError.Text = "Bir hata oluştu: " + ex.Message;
                    }
                }
            }
        }
    }
}
