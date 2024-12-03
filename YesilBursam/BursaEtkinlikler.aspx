<%@ Page Title="Bursa Etkinlikleri" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="BursaEtkinlikler.aspx.cs" Inherits="YesilBursam.BursaEtkinlikler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background-color: #f0f4f8;
        color: #333;
        padding: 20px;
    }
    
    .container {
        max-width: 1200px;
        margin: 20px auto;
    }

    .event-container {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: space-between;
    }

    .event-card {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 12px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        width: calc(40% - 10px);
        cursor: pointer;
    }

    .event-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    .event-title {
        font-size: 1.5rem;
        color: #1e7e34;
        margin-bottom: 10px;
    }

    .event-date {
        font-size: 1rem;
        color: #6c757d;
        margin-bottom: 15px;
    }

    .event-description {
        font-size: 1rem;
        color: #333;
        line-height: 1.6;
    }
      .event-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 15px; /* Kartlar arasındaki boşluğu azalttık */
        }


    .arama-cubugu {
        width: 100%;
        padding: 12px;
        margin-bottom: 30px;
        border-radius: 8px;
        border: 1px solid #ced4da;
    }
</style>

    <div class="container">
        <h2>Bursa Etkinlikleri</h2>
        <input type="text" id="searchInput2" class="arama-cubugu" placeholder="Etkinlik Ara..." onkeyup="searchEvent()">

        <div class="event-container" id="eventContainer">
            <asp:Repeater ID="rptBursaEtkinlikleri" runat="server">
                <ItemTemplate>
                    <div class="event-card">
                        <h3 class="event-title"><%# Eval("EtkinlikAdi") %></h3>
                        <p class="event-date"><%# Eval("Tarih", "{0:dd MMMM yyyy}") %></p>
                        <p class="event-description"><%# Eval("Aciklama") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <script>
        // Basit bir arama işlevi
        function searchEvent() {
            var input = document.getElementById('searchInput2').value.toLowerCase();
            var events = document.getElementsByClassName('event-card');

            for (var i = 0; i < events.length; i++) {
                var title = events[i].getElementsByClassName('event-title')[0].innerText.toLowerCase();
                if (title.includes(input)) {
                    events[i].style.display = '';
                } else {
                    events[i].style.display = 'none';
                }
            }
        }
    </script>
</asp:Content>