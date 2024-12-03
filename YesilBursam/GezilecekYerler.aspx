<%@ Page Title="Gezilecek Yerler" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="GezilecekYerler.aspx.cs" Inherits="YesilBursam.GezilecekYerler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            width: 100%;
        }

        .container {
            max-width: 2000px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .gridview-container {
            display: flex;
            flex-wrap: wrap; /* İçeriğin bir sonraki satıra geçmesini sağlar */
            justify-content: space-between; /* Öğeler arasına boşluk bırakır */
            margin-top: 20px;
            gap: 20px; /* Kutular arasındaki boşluk */
        }

        .place-box {
            color: white;
            border-radius: 8px;
            padding: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 40%; /* İki kutuyu yan yana getirecek genişlik */
            margin-bottom: 20px; /* Satır arası boşluk */
            transition: transform 0.3s ease-in-out; /* Hareket için animasyon */
        }

        .place-box img {
            width: 90%;
            height: 150px;
            object-fit: cover;
            border-radius: 8px;
        }

        .place-name {
            margin: 10px 0;
            font-weight: bold;
            font-size: 1.2em;
                        color: black; /* Metin rengi */

        }

        .place-description {
            font-size: 14px;
            text-align: center;
        }

        .place-box:hover {
            transform: translateY(-10px); /* Yer değiştirme: Yukarıya kaydırma */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); /* Gölgeyi artırarak etkisi pekiştirir */
        }

    .auto-style1 {
        color: #339933;
    }

    </style>

    <div class="container">
        <h2 class="auto-style1">Gezilecek Yerler</h2>
        <div class="gridview-container">
            <asp:Repeater ID="GezilecekYerRepeater" runat="server">
                <ItemTemplate>
                    <div class="place-box">
                        <asp:Image ID="imgResim" runat="server" ImageUrl='<%# Eval("ResimYolu") %>' AlternateText="Resim Yok" />
                        <div class="place-name"><%# Eval("YerAdi") %></div>
                        <div class="place-description"><%# Eval("Aciklama") %></div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
