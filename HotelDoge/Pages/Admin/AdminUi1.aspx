<%@ Page Title="Admin Dashbord" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUi1.aspx.cs" Inherits="HotelDoge.Pages.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link
      rel="stylesheet"
      href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
    href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700;900&family=Open+Sans:wght@300;400;500;600;700;800&display=swap"
    rel="stylesheet"
    />
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
    crossorigin="anonymous"
    />
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js" integrity="sha512-TW5s0IT/IppJtu76UbysrBH9Hy/5X41OTAbQuffZFU6lQ1rdcLHzpU5BzVvr/YFykoiMYZVWlr/PX1mDcfM9Qg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="~/CssFile/AdminUiStyle.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="chartcanvas">
          <canvas id="chart" class="divChart">
        </div>
        </canvas>
        <div class="customerchartcontainner">
          <canvas id="customarchart" class="divcustomar"></canvas>
        </div>
        <div class="divtopRooms">
          <div class="title">
            <h2>Top Products</h2>
            <p>Best Booking Rooms in Our Hotel.</p>
          </div>
          <div class="somerooms">
            <div class="room">
              <div class="image">
                <img src="https://thumbor.granitemedia.com/img/hvhyzolSAvZQcAckx3DcvHGCAHw=/500x500/filters:format(webp):quality(80)/granite-web-prod/ed/eb/edeb55b381c64e8a8b680bfa580d23bb.jpg" alt="">
              </div>
              <div class="roomno">
                <h4>R101</h4>
              </div>
              <div class="price">
                <h4>₹1299</h4>
              </div>
            </div>
            <div class="room">
              <div class="image">
                <img src="https://thumbor.granitemedia.com/img/hvhyzolSAvZQcAckx3DcvHGCAHw=/500x500/filters:format(webp):quality(80)/granite-web-prod/ed/eb/edeb55b381c64e8a8b680bfa580d23bb.jpg" alt="">
              </div>
              <div class="roomno">
                <h4>R101</h4>
              </div>
              <div class="price">
                <h4>₹1299</h4>
              </div>
            </div>
            <div class="room">
              <div class="image">
                <img src="https://thumbor.granitemedia.com/img/hvhyzolSAvZQcAckx3DcvHGCAHw=/500x500/filters:format(webp):quality(80)/granite-web-prod/ed/eb/edeb55b381c64e8a8b680bfa580d23bb.jpg" alt="">
              </div>
              <div class="roomno">
                <h4>R101</h4>
              </div>
              <div class="price">
                <h4>₹1299</h4>
              </div>
            </div>
            <div class="room">
              <div class="image">
                <img src="https://thumbor.granitemedia.com/img/hvhyzolSAvZQcAckx3DcvHGCAHw=/500x500/filters:format(webp):quality(80)/granite-web-prod/ed/eb/edeb55b381c64e8a8b680bfa580d23bb.jpg" alt="">
              </div>
              <div class="roomno">
                <h4>R101</h4>
              </div>
              <div class="price">
                <h4>₹1299</h4>
              </div>
            </div>
            <div class="room">
              <div class="image">
                <img src="https://thumbor.granitemedia.com/img/hvhyzolSAvZQcAckx3DcvHGCAHw=/500x500/filters:format(webp):quality(80)/granite-web-prod/ed/eb/edeb55b381c64e8a8b680bfa580d23bb.jpg" alt="">
              </div>
              <div class="roomno">
                <h4>R101</h4>
              </div>
              <div class="price">
                <h4>₹1299</h4>
              </div>
            </div>
            <div class="room">
              <div class="image">
                <img src="https://thumbor.granitemedia.com/img/hvhyzolSAvZQcAckx3DcvHGCAHw=/500x500/filters:format(webp):quality(80)/granite-web-prod/ed/eb/edeb55b381c64e8a8b680bfa580d23bb.jpg" alt="">
              </div>
              <div class="roomno">
                <h4>R101</h4>
              </div>
              <div class="price">
                <h4>₹1299</h4>
              </div>
            </div>
          </div>
        </div>
      </div>
     <script>
       <% var serializer = new System.Web.Script.Serialization.JavaScriptSerializer(); %>
        
        var data = <%= serializer.Serialize(GetChartData()) %>;
        const ctx = document.getElementById("chart").getContext("2d");
        const myChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: ["January", "February", "Merch"],
                datasets: [
                    {
                        label: "Total Revinue",
                        data: data,
                        borderColor: ["rgba(99, 71, 249,1)"],
                        borderWidth: 4,
                        tension: 0.3,
                    },
                ],
            },
            options: {
                maintainAspectRatio: false,

                animations: {
                    radius: {
                        duration: 700,
                        easing: "linear",
                        loop: (context) => context.active,
                    },
                },
                hoverRadius: 7,
                hoverBackgroundColor: "yellow",
                plugins: {
                    tooltip: {
                        enabled: true,
                    },
                    scales: {
                        y: {
                            suggestedMin: 200,
                            suggestedMax: 1500,
                        },
                        labels: {
                            font: {
                                size: 30,
                            },
                        },
                        ticks: {
                            font: {
                                size: 30,
                            },
                        },
                        scaleLabel: { fontSize: 16 },
                    },
                },
            },
        });

        const cschart = document.getElementById("customarchart");
        const chart = new Chart(cschart, {
            type: "doughnut",
            data: {
                labels: ["General", "Delux", "Super Delux", "Luxury", "Honeymoon Suite"],
                datasets: [
                    {
                        label: "My First Dataset",
                        data: [300, 50, 100, 150, 200],
                        backgroundColor: [
                            "rgb(255, 99, 132)",
                            "rgb(54, 162, 235)",
                            "rgb(255, 205, 86)",
                            "rgb(99, 71, 249)",
                            "rgb(31,51,71)",
                        ],
                        hoverOffset: 4,
                    },
                ],
            },
            options: {
                maintainAspectRatio: false,
                animations: {
                    radius: {
                        duration: 700,
                        easing: "linear",
                        loop: (context) => context.active,
                    },
                },
                hoverRadius: 7,
                hoverBackgroundColor: "rgba(99, 71, 249,0.3)",
                plugins: {
                    title: {
                        display: true,
                        text: "Customers Chart",
                    },
                    tooltip: {
                        enabled: true,
                    },
                },
            },
        });

     </script>

</asp:Content>
