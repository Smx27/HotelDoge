<%@ Page Title="Welcome To HotelDoge" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HotelDoge.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css"
    />
    <link
      rel="stylesheet"
      href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css"
    />
    <link rel="stylesheet" href="CssFile/DefaultStyle.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700;900&family=Open+Sans:wght@300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <section id="home">
      <div class="IntroPage">
        <h1>Enjoy Your,</h1>
        <h1>Dream Vacation</h1>
        <p>
          We provide verious primium service at a low cost.
          <br />
          <span>Wish we serve our best❤️.</span>
        </p>
        <a href="#">Doge Hotels & Resorts</a>
      </div>
      <div class="SearchDiv flexboxallcenter">
        <div class="Facility">
          <div class="first">
            <h1>Facilities</h1>
            <a href="#">See More</a>
          </div>
          <div class="items">
            <div class="swiming flexvartical">
              <i class="las la-swimmer"></i>
              <h6>Swimming</h6>
            </div>
            <div class="flexvartical wifi">
              <i class="las la-wifi"></i>
              <h6>Free-Wifi</h6>
            </div>
            <div class="flexvartical dinner">
              <i class="las la-utensils"></i>
              <h6>Dinner</h6>
            </div>
            <div class="flexvartical Hottub">
              <i class="las la-hot-tub"></i>
              <h6>Hot-Tub</h6>
            </div>
          </div>
        </div>
        <div class="Search" runat="server">
          <h1>Search</h1>
          <div class="Searchbar">
            <label for="txtCheckin"><i class="las la-calendar"></i></label>
            <input type="date" id="txtCheckin" runat="server"/>
            <label for="txtCheckout"><i class="las la-calendar"></i></label>
            <input type="date" id="txtCheckout" runat="server" />
            <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCheckin" Display="None" ErrorMessage="Checkin Date is Empty"></asp:RequiredFieldValidator>--%>
             <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCheckout" Display="None" ErrorMessage="Checkout Date is Empty"></asp:RequiredFieldValidator>
              <asp:ValidationSummary runat="server" ShowMessageBox="true" ShowSummary="false" />--%>
            <button ID="btnSearch" runat="server" onserverclick="BtnSearchClick">
                <i runat="server" class="las la-search"></i>
            </button>
          </div>
        </div>
      </div>
    </section>
    <section class="HotelFeatures" id="HotelFeatures">
      <h1>Welcome To, Hotel Doge</h1>
      <p>
        Introducing Hotel Doge, Best class hotel you get in this area. We
        provide verious luxury facilities at a very low cost. <br />
        Book our room to get best avilable expirience.
      </p>

      <div class="Facilitiesdetails" runat="server">
        <div class="Facilityicon">
          <div class="somefacilityicon">
            <div class="jhakanakalocation flexvartical IconShadow iconSize">
              <i class="las la-map-marked"></i>
              <h6>Best<br />Site-Seeing</h6>
            </div>
            <div class="BestMeals flexvartical IconShadow iconSize">
              <i class="las la-mug-hot"></i>
              <h6>Best Meals</h6>
            </div>
            <div class="parking flexvartical IconShadow iconSize">
              <i class="las la-parking"></i>
              <h6>On-site Parking</h6>
            </div>
          </div>
          <div class="Someextrafaciliy">
            <div class="booking flexvartical IconShadow iconSize">
              <i class="las la-hotel"></i>
              <h6>Easy Booking</h6>
            </div>
            <div class="flexvartical IconShadow iconSize">
              <i class="las la-dumbbell"></i>
              <h6>
                24/7 <br />
                Avilable Gym
              </h6>
            </div>
            <div class="flexvartical IconShadow iconSize">
              <i class="las la-swimmer"></i>
              <h6>Attached Swimming Pool</h6>
            </div>
          </div>
        </div>

        <!-- Slide start from here  -->
        <div class="FacilitySlides">
          <div class="slideitems">
          <img id="slideimage" src="./Image/1.jpg" alt=""> 

          </div>
        </div>
      </div>      
    </section>
    <section class="RoomCategories" id="RoomCategories">
      <h1>Explore Our Best In Class Rooms</h1>
      <p>Our Hotel Doge provide verios type of room including Standerd room,
        Luxury Room And also Super Delux Rooms.
      </p>
      <div class="Littlebitinfo">
        <div class="mainimage">
          <img src="./Image/Interier/Gym.jpg" alt="">
          <div class="infocard">
            <h1>Excelent Service Of</h1>
            <h2>Gym,Hall and Pool</h2>
            <p>We Provide 24/7 Gym. Big pool for every premium member.
              <br> Hall for Business Meetings.
            </p>
            <label for="BtnBookNow">999/day</label>
            <%--<button id="btnbooknow" runat="server" onserverclick="booknow_click">
              book now
            </button>--%>
              <button id="btnBook" runat="server" onserverclick="BookNow_Click"> 
                  Book Now
              </button>
<%--              <asp:Button ID="btnBookNow" runat="server" Text="Book Now" OnClick="btnBookNow_Click" />--%>
          </div>
        </div>
        <div class="Extracards">
          <div class="hall">
            <img src="./Image/Interier/Hall.jpg" alt="">
            <h3>Big Hall</h3>
          </div>
          <div class="pool">
            <img src="./Image/Interier/pool.jpg" alt="">
            <h3>Swiming Pool</h3>
          </div>
        </div>
      </div>
    </section>
<!-- Customar Review -->
    <!-- Contact Us -->
    <section class="contactus" id="contactus">
      <div class="Locationimage">
        
      </div>
      <div class="Sendemails">
        <h1>Send Us feedback</h1>
        <input type="email" placeholder="Enter Your Mail">
        <button>Send</button>
      </div>
    </section>

    <%--Footer--%>
        <footer>
    <div class="footercontenner">
      <h1>Hotel<span>Doge</span></h1>
      <a id="aHome" href="#">Home</a>
      <a id="aRooms" href="#">Rooms</a>
      <a id="aFood" href="#">Food Menu</a>
      <a id="aContact" href="#">Contact</a>
   <p id="HotelDetails">
     Our Hotel Doge provide verios type of room <br> including Standerd room,
          Luxury Room And also Super Delux Rooms.
   </p> 
   <ul class="footerhome">
     <li><a href="#">Design</a></li>
     <li><a href="#">Seo</a></li>
     <li><a href="#">Development</a></li>
     <li><a href="#">Marketing</a></li>
   </ul>
     <ul class="footerRooms">
       <li><a href="#">Standerd</a></li>
       <li><a href="#">Delux</a></li>
       <li><a href="#">Luxury</a></li>
       <li><a href="#">Honeymoon Suit</a></li>
     </ul>   
     <ul class="footerfood">
       <li><a href="#">Breakfast</a></li>
       <li><a href="#">Dinner</a></li>
       <li><a href="#">Lunch</a></li>
     </ul>
     <ul class="footerContact">
       <li><a href="#">Privacy Policy</a></li>
       <li><a href="#">Trams & Conditions</a></li>
       <li><a href="#">More</a></li>
     </ul>
     
    </div>    
  </footer> 
     <p id="Author">Designed by <a href="instragram.com/smx2_7">Sumit Maiti</a></p>
    <script>
        //var today = new Date();
        //var dd = today.getDate();
        //var mm = today.getMonth() + 1; 
        //var yyyy = today.getFullYear();

        //if (dd < 10) {
        //    dd = '0' + dd;
        //}

        //if (mm < 10) {
        //    mm = '0' + mm;
        //}

        //today = yyyy + '-' + mm + '-' + dd;
        //document.getElementById("txtCheckin").setAttribute("min", today);



        const image = document.getElementById('slideimage');
        let counter = 1;

        setInterval(function slide() {
            if (counter > 6) {
                counter = 1
            }
            else {
                document.getElementById("slideimage").src = '../Image/' + counter++ + '.jpg';
            }
        }, 5000);
    </script>
</asp:Content>
