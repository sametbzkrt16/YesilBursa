<%@ Page Title="Belediye Etkinlikleri" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="BelediyeEtkinlikler.aspx.cs" Inherits="YesilBursam.BelediyeEtkinlikler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f4f8;
            color: #333;
            padding: 20px;
        }

        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 1000px;
            margin: 20px auto;
        }

        .arama-cubugu {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 8px;
            border: 1px solid #ced4da;
        }
     
        .event-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
}

.event-card {
    background-color: #ffffff;
    border: 1px solid #e0e0e0;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    cursor: pointer;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    height: 180px; /* Kare görünüm için sabit yükseklik */
}

.event-card:hover {
    transform: translateY(-8px); /* Hover animasyonu */
    box-shadow: 0 12px 16px rgba(0, 0, 0, 0.15);
}

.event-title {
    font-size: 1.2rem;
    font-weight: bold;
    color: #006400;
}

.event-date {
    font-size: 1rem;
    color: #555;
}

.event-description {
    font-size: 0.9rem;
    line-height: 1.4;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 4; /* Kart içeriğini 4 satırla sınırlamak için */
    -webkit-box-orient: vertical;
}

    
        @media (max-width: 768px) {
            .event-grid {
                grid-template-columns: 1fr; /* Küçük ekranlarda tek sütuna geçiş yap */
            }
        }
    </style>

    <div class="container">
        <h2>Belediye Etkinlikleri</h2>
        <input type="text" id="searchInput1" class="arama-cubugu" placeholder="Etkinlik Ara..." onkeyup="searchEvent()">

        <!-- Etkinlik Kartları -->
        <div id="eventContainer" class="event-grid"></div>
    </div>

    <script>
        // Etkinlikleri filtreleme fonksiyonu
        function searchEvent() {
            const input = document.getElementById('searchInput1').value.toLowerCase();
            const cards = document.querySelectorAll('.event-card');

            cards.forEach(card => {
                const title = card.querySelector('.event-title').innerText.toLowerCase();
                const description = card.querySelector('.event-description').innerText.toLowerCase();

                if (title.includes(input) || description.includes(input)) {
                    card.style.display = '';
                } else {
                    card.style.display = 'none';
                }
            });
        }

        // Sayfa yüklenince etkinlikleri ekrana getirme
        document.addEventListener("DOMContentLoaded", function () {
            loadEvents();
        });

        // C# koduyla doldurulacak etkinlikleri getirir
        function loadEvents() {
            const events = <%= GetBelediyeEtkinlikleri() %>;
            const eventContainer = document.getElementById('eventContainer');

            events.forEach(event => {
                const card = document.createElement('div');
                card.className = 'event-card';
                card.innerHTML = `
                    <div class="event-title">${event.EtkinlikAdi}</div>
                    <div class="event-date">Tarih: ${event.Tarih}</div>
                    <div class="event-description">${event.Aciklama}</div>
                `;
                eventContainer.appendChild(card);
            });
        }
    </script>
</asp:Content>
