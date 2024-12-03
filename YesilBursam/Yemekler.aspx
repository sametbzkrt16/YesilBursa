<%@ Page Title="Yemekler" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YesilBursam.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .gridview-container {
            display: flex;
            flex-wrap: wrap; /* İçeriğin bir sonraki satıra geçmesini sağlar */
            justify-content: space-between; /* Öğeler arasına boşluk bırakır */
            margin-top: 20px;
            gap: 20px; /* Kutular arasındaki boşluk */
        }

        .food-box {

            
            color: black;
            border-radius: 8px;
            padding: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 40%; /* İki kutuyu yan yana getirecek genişlik */
            margin-bottom: 20px; /* Satır arası boşluk */
            transition: transform 0.3s ease-in-out; /* Hareket için animasyon */
        }

        .food-box img {
            width: 90%;
            height: 150px;
            object-fit: cover;
            border-radius: 8px;
        }

        .food-info {
            margin-top: 10px; /* Bilgiler arasında boşluk bırak */
            font-weight: bold; /* Metin kalın olsun */
            color: black; /* Metin rengi */
        }

        .food-box:hover {
            transform: translateY(-10px); /* Yer değiştirme: Yukarıya kaydırma */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); /* Gölgeyi artırarak etkisi pekiştirir */
        }

    </style>

    <h2>Yemekler</h2>
    <div class="gridview-container">
        <asp:Repeater ID="RepeaterYemekler" runat="server">
            <ItemTemplate>
                <div class="food-box">
                    <asp:Image ID="imgYemek" runat="server" ImageUrl='<%# Eval("ResimYolu") %>' />
                    <div class="food-info"><%# Eval("YemekAdi") %></div>
                    <div class="food-info"><%# Eval("Aciklama") %></div>
                    <div class="food-info"><%# Eval("Fiyat") %> ₺</div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
