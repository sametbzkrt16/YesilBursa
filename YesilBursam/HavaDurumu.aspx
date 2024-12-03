<%@ Page Title="Hava Durumu" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="HavaDurumu.aspx.cs" Inherits="YesilBursam.HavaDurumu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .weather-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .weather-card {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 250px;
            text-align: center;
        }
        .weather-card h3 {
            color: #2E8B57;
            margin-bottom: 10px;
        }
        .weather-card p {
            margin: 8px 0;
        }
        .weather-card .temp {
            font-size: 24px;
            font-weight: bold;
            color: #d9534f;
        }
    </style>

    <div class="weather-container">
        <asp:Repeater ID="repeaterHavaDurumu" runat="server">
            <ItemTemplate>
                <div class="weather-card">
                    <h3><%# Eval("Tarih", "{0:dd MMMM yyyy}") %></h3>
                    <p class="temp"><%# Eval("Sıcaklık") %>°C</p>
                    <p><%# Eval("Durum") %></p>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
