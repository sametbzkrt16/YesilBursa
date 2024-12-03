<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="SokakLezzetleri.aspx.cs" Inherits="YesilBursam.SokakLezzetleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /* Genel Sayfa Konsepti */
        body {
            font-family: Arial, sans-serif;
            background-color: #fff;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Flex Container */
        .container {
            display: flex;
            justify-content: space-between;
            gap: 30px;
            margin-top: 20px;
            padding: 20px;
        }

        /* Sol Kısım (Veri Girişi) */
        .sol-kisim {
            flex: 1;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f4f7f6;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
        }

        /* Başlıklar */
        h3 {
            color: #4CAF50; /* Yeşil renk */
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* TextBox ve Etiket Arası Boşluk */
        .input-group {
            margin-bottom: 15px;
        }

        /* Label Düzeni */
        label {
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 8px;
            display: block;
        }

        /* TextBox Düzeni */
        .input-group input[type="text"], .input-group textarea {
            width: 100%;
            padding: 12px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 16px;
            box-sizing: border-box;
        }

        /* TextArea Düzeni */
        .input-group textarea {
            resize: vertical;
            min-height: 100px;
        }

        /* Arama Çubuğu */
        .arama-cubugu {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 16px;
            margin-bottom: 20px;
            transition: border-color 0.3s ease;
        }

        .arama-cubugu:focus {
            border-color: #4CAF50;
            outline: none;
        }

        /* Kaydet Butonu */
        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .btn:hover {
            background-color: #45a049;
        }

        /* Sağ Kısım (Sokak Lezzetleri Listesi) */
        .sag-kisim {
            flex: 2;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f4f7f6;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        /* Her Sokak Lezzeti Kartı (Kutucuk) */
        .lezzet-karti {
            background-color: white;
            border-radius: 8px;
            border: 1px solid #ddd;
            padding: 15px;
            margin-bottom: 20px; /* Kartlar arasındaki boşluk */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        /* Kart Hover Efekti */
        .lezzet-karti:hover {
            transform: scale(1.05);
        }

        /* Kart Başlık Düzeni */
        .lezzet-karti h3 {
            color: #4CAF50; /* Yeşil renk */
            font-size: 20px;
            margin: 0;
            padding-bottom: 10px;
        }

        /* Kart Açıklama Düzeni */
        .lezzet-karti p {
            font-size: 16px;
            margin: 0;
            padding-bottom: 10px;
        }

        /* Kart Fiyat Düzeni */
        .lezzet-karti p.fiyat {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }
    </style>

    <% if (Session["KullaniciAdi"] != null) { } %>

    <!-- Başlık: Sokak Lezzetleri -->
    <div>
        <h3>Sokak Lezzetleri</h3>
    </div>

    <div class="container">
        <!-- Sol Kısım: Veri Girişi -->
        <div class="sol-kisim">
            <h3>Yeni Sokak Lezzeti Ekle</h3>
            <asp:Panel runat="server" CssClass="panel">
                <!-- Lezzet Adı -->
                <div class="input-group">
                    <label for="txtLezzetAdi">Lezzet Adı:</label>
                    <asp:TextBox ID="txtLezzetAdi" runat="server" /><br />
                </div>

                <!-- Açıklama -->
                <div class="input-group">
                    <label for="txtAciklama">Açıklama:</label>
                    <asp:TextBox ID="txtAciklama" runat="server" TextMode="MultiLine" Rows="3" Text="Lütfen Adres Bilgisi Veriniz..." OnFocus="clearTextBox" OnBlur="restoreTextBox" /><br />
                </div>

                <!-- Fiyat -->
                <div class="input-group">
                    <label for="txtFiyat">Fiyat:</label>
                    <asp:TextBox ID="txtFiyat" runat="server" /><br />
                </div>

                <asp:Button ID="btnKaydet" runat="server" CssClass="btn" Text="Kaydet" OnClick="btnKaydet_Click" />
            </asp:Panel>
        </div>

        <!-- Sağ Kısım: Arama ve Harf Harf Sıralama -->
        <div class="sag-kisim">
            <!-- Arama Çubuğu -->
            <input type="text" id="searchInput" class="arama-cubugu" placeholder="Sokak Lezzetlerini Ara..." onkeyup="searchAddress()" />

            <!-- Sokak Lezzetleri Listesi -->
            <div id="addressContainer">
                <asp:Repeater ID="rptSokakLezzetleri" runat="server">
                    <ItemTemplate>
                        <div class="lezzet-karti">
                            <h3><%# Eval("LezzetAdi") %></h3>
                            <p><%# Eval("Aciklama") %></p>
                            <p class="fiyat">Fiyat: <%# Eval("Fiyat", "{0:C}") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

    <script>
        // Arama Fonksiyonu
        function searchAddress() {
            var input = document.getElementById('searchInput');
            var filter = input.value.toLowerCase();
            var container = document.getElementById('addressContainer');
            var addresses = container.getElementsByClassName('lezzet-karti');

            for (var i = 0; i < addresses.length; i++) {
                var h3 = addresses[i].getElementsByTagName("h3")[0].innerHTML.toLowerCase();
                var p = addresses[i].getElementsByTagName("p")[0].innerHTML.toLowerCase();

                // Eğer başlık veya açıklama arama kriterine uyuyorsa, göster
                if (h3.includes(filter) || p.includes(filter)) {
                    addresses[i].style.display = "";
                } else {
                    addresses[i].style.display = "none";
                }
            }
        }
    </script>
</asp:Content>
