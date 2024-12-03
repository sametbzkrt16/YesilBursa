using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace YesilBursam
{
    public partial class adminGiris : Page
    {
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = txtKullaniciAdi.Value;
            string sifre = txtSifre.Value;

            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Admin WHERE KullaniciAdi = @KullaniciAdi AND Sifre = @Sifre", conn);
                    cmd.Parameters.AddWithValue("@KullaniciAdi", kullaniciAdi);
                    cmd.Parameters.AddWithValue("@Sifre", sifre);

                    int count = (int)cmd.ExecuteScalar();
                    if (count > 0)
                    {
                        Session["AdminLoggedIn"] = true;

                        // Giriş başarılı, admin paneline yönlendirme
                        Response.Redirect("adminPanel.aspx");
                    }
                    else
                    {
                        // Hata mesajı göster
                        lblHata.Text = "Kullanıcı adı veya şifre yanlış.";
                        lblHata.Visible = true;
                    }
                }
            }
            catch (Exception ex)
            {
                lblHata.Text = "Bir hata oluştu: " + ex.Message;
                lblHata.Visible = true;
            }
        }
    }
}
