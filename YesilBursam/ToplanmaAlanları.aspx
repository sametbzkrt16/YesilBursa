<%@ Page Title="Toplanma Alanları" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="ToplanmaAlanları.aspx.cs" Inherits="YesilBursam.ToplanmaAlanları" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #28a745;
        }

        /* Arama Çubuğu Ortalanacak */
        #searchInput {
            display: block;
            width: 300px;
            margin: 0 auto 20px; /* Çubuğu ortalar ve altına boşluk ekler */
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .alan-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px; /* Öğeler arasına boşluk ekler */
            justify-content: center; /* Öğeleri ortalar */
        }

        .alan {
 width: 40%; /            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;

        }

        .alan h3 {
            margin: 0;
            color: #333;
        }

        .alan p {
            margin: 5px 0;
            color: #555;
        }
    </style>

    <div class="container">
        <h2>Bursa Deprem Toplanma Alanları</h2>
        <!-- Arama Çubuğu -->
        <input type="text" id="searchInput" placeholder="Adres Ara..." onkeyup="searchAddress()" />
        
        <!-- Toplanma alanları container'ı -->
        <div id="addressContainer" class="alan-container">
        <div class="alan">
            <h3>Atatürk Kapalı Spor Salonu</h3>
            <p>Adres: Atatürk Cad. No:10, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>Büyükşehir Belediyesi Hizmet Binası</h3>
            <p>Adres: Mudanya Yolu No:2, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>İşkur İl Müdürlüğü</h3>
            <p>Adres: Gümüştepe Mahallesi, Kestel Yolu No:37, Yıldırım/Bursa</p>
        </div>

        <div class="alan">
            <h3>Merinos AKKM</h3>
            <p>Adres: Merinos Parkı, 2. Cadde No:2, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>Dörtçelik Hastanesi</h3>
            <p>Adres: Sakarya Cad. No:36, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>Bursa Kültür Parkı</h3>
            <p>Adres: Kültür Parkı, 1. Cad. No:1, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>Bursa Adalet Sarayı</h3>
            <p>Adres: İstiklal Cad. No:17, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>Osmangazi Belediyesi Kültür Merkezi</h3>
            <p>Adres: İstasyon Cad. No:55, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>Gemlik Spor Salonu</h3>
            <p>Adres: Gemlik, Yıldırım/Bursa</p>
        </div>

        <div class="alan">
            <h3>Nilüfer Belediyesi Kültür Merkezi</h3>
            <p>Adres: Nilüfer, Bursa</p>
        </div>

        <div class="alan">
            <h3>Bağlarbaşı Mahallesi Parkı</h3>
            <p>Adres: Bağlarbaşı Mah. No:34, Yıldırım/Bursa</p>
        </div>

        <div class="alan">
            <h3>Çekirge Kaplıcaları</h3>
            <p>Adres: Çekirge Mah. No:10, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>İhsaniye Mahallesi Parkı</h3>
            <p>Adres: İhsaniye Mah. No:5, Yıldırım/Bursa</p>
        </div>

        <div class="alan">
            <h3>Altıparmak Kapalı Spor Salonu</h3>
            <p>Adres: Altıparmak Cad. No:45, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>Fuar Kültür Parkı</h3>
            <p>Adres: Kültür Parkı, 2. Cadde, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>Yıldırım Belediyesi Kültür Merkezi</h3>
            <p>Adres: Yıldırım Mahallesi, Yıldırım/Bursa</p>
        </div>

        <div class="alan">
            <h3>Karacabey Kapalı Spor Salonu</h3>
            <p>Adres: Karacabey, Bursa</p>
        </div>

        <div class="alan">
            <h3>Bursa Kent Müzesi</h3>
            <p>Adres: Sıraselviler Cad. No: 5, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>Osmangazi Belediyesi Gençlik Merkezi</h3>
            <p>Adres: Veysi Paşa Cad. No:12, Osmangazi/Bursa</p>
        </div>
        <div class="alan">
            <h3>Bursa İtfaiye Dairesi</h3>
            <p>Adres: Dörtçelik Mah. No:12, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>İznik Spor Salonu</h3>
            <p>Adres: İznik, Bursa</p>
        </div>

        <div class="alan">
            <h3>Yıldırım Kapalı Spor Salonu</h3>
            <p>Adres: Yıldırım, Bursa</p>
        </div>

        <div class="alan">
            <h3>Osmangazi Belediyesi Hizmet Binası</h3>
            <p>Adres: Gümüştepe, Yıldırım/Bursa</p>
        </div>

        <div class="alan">
            <h3>Ovaakça Kapalı Spor Salonu</h3>
            <p>Adres: Ovaakça, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>Uludağ Üniversitesi Kapalı Spor Salonu</h3>
            <p>Adres: Uludağ Üniversitesi, Görükle, Bursa</p>
        </div>

        <div class="alan">
            <h3>Kestel Kapalı Spor Salonu</h3>
            <p>Adres: Kestel, Bursa</p>
        </div>

        <div class="alan">
            <h3>Yunuseli Kapalı Spor Salonu</h3>
            <p>Adres: Yunuseli, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>Başkanlık Konutu</h3>
            <p>Adres: Mudanya Yolu, No: 21, Osmangazi/Bursa</p>
        </div>

        <div class="alan">
            <h3>Osman Gazi İlkokulu</h3>
            <p>Adres: Osmangazi, Bursa</p>
        </div>

        <div class="alan">
            <h3>Barakfakih Ortaokulu</h3>
            <p>Adres: Barakfakih, Osmangazi/Bursa</p>
        </div>
        <div class="alan">
    <h3>İnegöl Kapalı Spor Salonu</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Belediyesi Kültür Merkezi</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Osmangazi İlkokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım İMKB Ortaokulu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Kestel Belediyesi Hizmet Binası</h3>
    <p>Adres: Kestel, Bursa</p>
</div>

<div class="alan">
    <h3>Emek Kapalı Spor Salonu</h3>
    <p>Adres: Emek, Yıldırım/Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Belediyesi Gençlik Merkezi</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Çamlıca Mahallesi Parkı</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Huzur Mahallesi Parkı</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Kültür Merkezi</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Ahmet Akpınar İlkokulu</h3>
    <p>Adres: Kestel, Bursa</p>
</div>

<div class="alan">
    <h3>Hüseyin Cahit Yalçın Ortaokulu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Emekli Sandığı Tesisleri</h3>
    <p>Adres: Emek, Yıldırım/Bursa</p>
</div>

<div class="alan">
    <h3>Süleyman Çelebi İlkokulu</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Meslek Yüksekokulu</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>
        <div class="alan">
    <h3>İhsan Gazi İlkokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Kurtuluş İlkokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Reşat Oğuz Ortaokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Bahçeşehir Koleji</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Çamlık Parkı</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Hüseyin Kadir İlkokulu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Ali Şen Ortaokulu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Anadolu Lisesi</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Özel Yıldırım Mektebi</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Hasan Ali Yücel Ortaokulu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Uludağ Üniversitesi Spor Salonu</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Hüseyin Rüştü Kural Anadolu Lisesi</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Nilüfer Belediyesi Gençlik Merkezi</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Atatürk İlkokulu</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Furkan İkizler Ortaokulu</h3>
    <p>Adres: Kestel, Bursa</p>
</div>

<div class="alan">
    <h3>Halk Eğitim Merkezi</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Atatürk Ortaokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Nilüfer Kapalı Spor Salonu</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Osmangazi Spor Salonu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Görükle Ortaokulu</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Belediyesi Nikah Salonu</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Kültür Merkezi</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Belediyesi Parkı</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Kestel Çok Amaçlı Salon</h3>
    <p>Adres: Kestel, Bursa</p>
</div>

<div class="alan">
    <h3>Çekirge İlkokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Kız Teknik ve Meslek Lisesi</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>İznik Belediyesi Kapalı Spor Salonu</h3>
    <p>Adres: İznik, Bursa</p>
</div>

<div class="alan">
    <h3>Nilüfer Belediyesi Hizmet Binası</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Ticaret ve Sanayi Odası</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Huzur Evleri</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Adalet Sarayı</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Çiğli İlkokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Tepebaşı İlkokulu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Osmangazi Belediyesi Sosyal Tesisleri</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Kestel Belediyesi Kültür Merkezi</h3>
    <p>Adres: Kestel, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Kütüphanesi</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Ortaokulu</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Mustafakemalpaşa Kapalı Spor Salonu</h3>
    <p>Adres: Mustafakemalpaşa, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Gençlik Spor İl Müdürlüğü</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Çok Amaçlı Salon</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Şehitler Parkı</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Çamlık Mahallesi Parkı</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Gazeteciler Cemiyeti</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Osman Gazi Ortaokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Görükle Parkı</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Kestel Ortaokulu</h3>
    <p>Adres: Kestel, Bursa</p>
</div>

<div class="alan">
    <h3>Mehmet Akif Ersoy Ortaokulu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Gemlik Kapalı Spor Salonu</h3>
    <p>Adres: Gemlik, Bursa</p>
</div>

<div class="alan">
    <h3>Nilüfer Belediyesi Buz Pateni Salonu</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Osman Gazi Mahallesi Parkı</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>İznik Kapalı Spor Salonu</h3>
    <p>Adres: İznik, Bursa</p>
</div>

        <div class="alan">
    <h3>İnegöl Lisesi</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Çekirge Spor Salonu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Kestel Ziya Gökalp Ortaokulu</h3>
    <p>Adres: Kestel, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Belediyesi Düğün Salonu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Kapalı Spor Salonu</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Mustafakemalpaşa İlkokulu</h3>
    <p>Adres: Mustafakemalpaşa, Bursa</p>
</div>

<div class="alan">
    <h3>Uludağ Üniversitesi Eğitim Fakültesi</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Kız Teknik ve Meslek Lisesi</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>İlkbahar Parkı</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Devlet Hastanesi</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Görükle Spor Salonu</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Demirtaş Ortaokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Harmancık Kapalı Spor Salonu</h3>
    <p>Adres: Harmancık, Bursa</p>
</div>

<div class="alan">
    <h3>Çamlıca İlkokulu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Kaymakamlığı</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Belediyesi Hizmet Binası</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Osmangazi Belediyesi Kültür Merkezi</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Mustafakemalpaşa Spor Salonu</h3>
    <p>Adres: Mustafakemalpaşa, Bursa</p>
</div>

<div class="alan">
    <h3>Kestel Merkez Camii</h3>
    <p>Adres: Kestel, Bursa</p>
</div>

<div class="alan">
    <h3>Hüseyin Rüştü Kural Spor Salonu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Barakfakih İlkokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Mahallesi Parkı</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Osmangazi Etnografya Müzesi</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Meslek Yüksekokulu</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Güzelbahçe Parkı</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Emek Ortaokulu</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Şevket Yılmaz Devlet Hastanesi</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Demirtaş Kapalı Spor Salonu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Mustafakemalpaşa Çok Amaçlı Salon</h3>
    <p>Adres: Mustafakemalpaşa, Bursa</p>
</div>

<div class="alan">
    <h3>Gemlik Ortaokulu</h3>
    <p>Adres: Gemlik, Bursa</p>
</div>

<div class="alan">
    <h3>Karamürsel Belediyesi Düğün Salonu</h3>
    <p>Adres: Karamürsel, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Kütüphane</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl TSO</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Adnan Menderes Spor Salonu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Akçalar İlkokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Nilüfer Ortaokulu</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Yüzme Havuzu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Alaybey İlkokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Bağlarbaşı Parkı</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Yıldırım İlkokulu</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Tarım Fuarı Alanı</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Kestel Kapalı Spor Salonu</h3>
    <p>Adres: Kestel, Bursa</p>
</div>
        <div class="alan">
    <h3>Doğuş İlkokulu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Belediyesi Kültür Merkezi</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Bağcılar İlkokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Belediiyesi Sosyal Tesisleri</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Modern Sanatlar Müzesi</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Osmangazi İmam Hatip Lisesi</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Meslek Lisesi</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Gürsu Kapalı Spor Salonu</h3>
    <p>Adres: Gürsu, Bursa</p>
</div>

<div class="alan">
    <h3>Akçalar Ortaokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Kestel Anadolu Lisesi</h3>
    <p>Adres: Kestel, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Belediyesi Kapalı Düğün Salonu</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Osmangazi Belediyesi Çocuk Parkı</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Cumhuriyet İlkokulu</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>İlkbahar Kreşi</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Nilüfer Şehir Kütüphanesi</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Mustafakemalpaşa Kapalı Spor Salonu</h3>
    <p>Adres: Mustafakemalpaşa, Bursa</p>
</div>

<div class="alan">
    <h3>Harmancık Yıldırım İlkokulu</h3>
    <p>Adres: Harmancık, Bursa</p>
</div>

<div class="alan">
    <h3>Görükle Gençlik Merkezi</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Anadolu Lisesi</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Halk Kütüphanesi</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Ticaret ve Sanayi Odası</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Sıtkı Göztepe Spor Salonu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Gemlik Atatürk Parkı</h3>
    <p>Adres: Gemlik, Bursa</p>
</div>

<div class="alan">
    <h3>Osmangazi Kaymakamlığı</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Organize Sanayi Bölgesi</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Bağlarbaşı Camii</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>Görükle Camii</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Kestel Belediyesi Kapalı Düğün Salonu</h3>
    <p>Adres: Kestel, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Huzurevi</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Mustafakemalpaşa Eğitim Araştırma Hastanesi</h3>
    <p>Adres: Mustafakemalpaşa, Bursa</p>
</div>

<div class="alan">
    <h3>Karacabey Kapalı Spor Salonu</h3>
    <p>Adres: Karacabey, Bursa</p>
</div>

<div class="alan">
    <h3>Harmancık Ortaokulu</h3>
    <p>Adres: Harmancık, Bursa</p>
</div>

<div class="alan">
    <h3>Uludağ Üniversitesi</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Yıldırım Belediyesi Gençlik Merkezi</h3>
    <p>Adres: Yıldırım, Bursa</p>
</div>

<div class="alan">
    <h3>İnegöl Kız Teknik ve Meslek Lisesi</h3>
    <p>Adres: İnegöl, Bursa</p>
</div>

<div class="alan">
    <h3>Mustafakemalpaşa Merkez Camii</h3>
    <p>Adres: Mustafakemalpaşa, Bursa</p>
</div>

<div class="alan">
    <h3>Kestel Toki İlkokulu</h3>
    <p>Adres: Kestel, Bursa</p>
</div>

<div class="alan">
    <h3>Gemlik Kaymakamlığı</h3>
    <p>Adres: Gemlik, Bursa</p>
</div>

<div class="alan">
    <h3>Osmangazi Kapalı Spor Salonu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Çekirge İlkokulu</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Çocuk Evi</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>

<div class="alan">
    <h3>Kestel Eğitim ve Araştırma Hastanesi</h3>
    <p>Adres: Kestel, Bursa</p>
</div>

<div class="alan">
    <h3>Nilüfer Gençlik Merkezi</h3>
    <p>Adres: Nilüfer, Bursa</p>
</div>

<div class="alan">
    <h3>Bursa Adliyesi</h3>
    <p>Adres: Osmangazi, Bursa</p>
</div>
</div>

    </div>
 <script>
     function searchAddress() {
         var input = document.getElementById('searchInput');
         var filter = input.value.toLowerCase(); // Arama filtresi küçük harfe çevriliyor
         var container = document.getElementById('addressContainer');
         var addresses = container.getElementsByClassName('alan');

         // Tüm adresleri kontrol et
         for (var i = 0; i < addresses.length; i++) {
             var h3 = addresses[i].getElementsByTagName("h3")[0].innerHTML.toLowerCase(); // H3 metni küçük harfe çevriliyor
             var p = addresses[i].getElementsByTagName("p")[0].innerHTML.toLowerCase(); // P metni küçük harfe çevriliyor

             // Eğer h3 veya p elemanının metni arama kriterine uyuyorsa göster, değilse gizle
             if (h3.includes(filter) || p.includes(filter)) {
                 addresses[i].style.display = ""; // Göster
             } else {
                 addresses[i].style.display = "none"; // Gizle
             }
         }
     }
    </script>

    </asp:Content>