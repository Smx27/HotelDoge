<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin Ui.aspx.cs" Inherits="HotelDoge.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <link rel="stylesheet" href="CssFile/AdminUiStyle.css" />
    <title>Admin - DogeHotel</title>
</head>
<body>
    <div class="Dashbord">
        <div class="side_panel">
          <h1>Hotel<span>Doge</span></h1>
          <ul class="menu">
            <li class="menu_items"><i class="las la-icons"></i>Overview</li>
            <li class="menu_items"><i class="las la-hotel"></i>Rooms</li>
            <li class="menu_items"><i class="las la-users"></i>Customars</li>
            <li class="menu_items">
              <i class="las la-hand-holding-usd"></i>Earnings
            </li>
          </ul>
          <ul>
            <li><i class="las la-exclamation-circle"></i>Help Center</li>
            <li><i class="las la-cog"></i>Settings</li>
            <li><i class="las la-sign-out-alt"></i>Logout</li>
          </ul>
        </div>
        
        <div class="top_nav">
          <div class="search">
            <h1>Dashbord</h1>
            <input
            class="form-control me-2"
            type="search"
            placeholder="Search"
            aria-label="Search"
            />
            <button class="btn btn-outline-success" type="submit">
              <i class="las la-search"></i>
            </button>
          </div>
          <div class="admin_info">
            <img
            src="data:image/jpeg;base64,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"
            alt="Logo"
            />
            <label>Sumit Maiti <i class="las la-angle-down"></i></label>
          </div>
        </div>
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
</body>
</html>
