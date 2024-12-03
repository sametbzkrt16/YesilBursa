using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace YesilBursam
{
    public partial class SokakLezzetleri : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SokakLezzetleriGetir();
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            // Giriş yapmamışsa işlem yapma
            if (Session["KullaniciAdi"] == null)
            {
                Response.Redirect("Giris.aspx"); // Kullanıcıyı giriş sayfasına yönlendir
                return;
            }

            // Giriş yapılmışsa veri ekleme işlemini gerçekleştir
            string lezzetAdi = txtLezzetAdi.Text;
            string aciklama = txtAciklama.Text;
            decimal fiyat;

            if (decimal.TryParse(txtFiyat.Text, out fiyat))
            {
                string connStr = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string query = "INSERT INTO SokakLezzetleri (LezzetAdi, Aciklama, Fiyat) VALUES (@LezzetAdi, @Aciklama, @Fiyat)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@LezzetAdi", lezzetAdi);
                    cmd.Parameters.AddWithValue("@Aciklama", aciklama);
                    cmd.Parameters.AddWithValue("@Fiyat", fiyat);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }

                // Formu temizle ve listeyi güncelle
                txtLezzetAdi.Text = "";
                txtAciklama.Text = "";
                txtFiyat.Text = "";
                SokakLezzetleriGetir(); // Yeni eklenen lezzeti listelemek için çağır
            }
        }

        private void SokakLezzetleriGetir()
        {
            string connStr = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT LezzetId, LezzetAdi, Aciklama, Fiyat FROM SokakLezzetleri";
                SqlCommand cmd = new SqlCommand(query, conn);

                conn.Open();
                rptSokakLezzetleri.DataSource = cmd.ExecuteReader();
                rptSokakLezzetleri.DataBind();
            }
        }
    }
}
