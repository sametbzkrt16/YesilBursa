using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YesilBursam
{
    public partial class giris : System.Web.UI.Page
    {
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = txtKullaniciAdi.Value;
            string sifre = txtSifre.Value;

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Kullanici WHERE KullaniciAdi = @KullaniciAdi AND Sifre = @Sifre", conn);
                cmd.Parameters.AddWithValue("@KullaniciAdi", kullaniciAdi);
                cmd.Parameters.AddWithValue("@Sifre", sifre);

                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                {
                    // Giriş başarılı, oturumu başlat
                    Session["KullaniciAdi"] = kullaniciAdi; // Oturum başlatılıyor
                    Response.Redirect("AnaSayfa.aspx");
                }
                else
                {
                    // Hatalı giriş mesajı
                    Response.Write("<script>alert('Kullanıcı adı veya şifre hatalı. Lütfen tekrar deneyin.');</script>");
                }
            }
        }

    }
}