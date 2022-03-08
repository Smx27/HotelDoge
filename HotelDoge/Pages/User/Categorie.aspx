<%@ Page Title="Room Categorie-HotelDoge" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Categorie.aspx.cs" Inherits="HotelDoge.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link
      rel="stylesheet"
      href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css"
    />
    <link rel="stylesheet" href="../../CssFile/categorieStyle.css" />
     <link rel="stylesheet" href="../../CssFile/DefaultStyle.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700;900&family=Open+Sans:wght@300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="containner">
      <div class="General">
        <div class="image">
          <img id="GenroomImg" src="../../Image/RoomImage/General/1.jpg" alt="Room Image" />
          <div>
            <i id="btnPrevgen" class="las la-angle-left"></i>
            <i id="btnNextgen" class="las la-angle-right"></i>
          </div>
        </div>
        <div class="description">
          <div class="😒">
            <h1>General Room</h1>
            <ul class="stars">
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star-half"></i></li>
            </ul>
            <ul class="Hotelservices">
              <table>
                <tr>
                  <td>
                    <li>Air Conditioning</li>
                    <li>Room Service</li>
                  </td>
                  <td>
                    <li>Mineral Water</li>
                    <li>Queen Size Bed</li>
                  </td>
                  <td>
                    <!-- <li>Housekeeping</li> -->
                    <!-- <li>In-room Dining</li> -->
                  </td>
                </tr>
              </table>
            </ul>
            <ul class="😁">
              <!-- <i class="las la-check-circle"></i> -->
              <table>
                <tr>
                  <td>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Refundable</p>
                    </li>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Late check-out</p>
                    </li>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Late check-out</p>
                    </li>
                  </td>
                  <td>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Early Check in</p>
                    </li>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Free Lunch& Dinner</p>
                    </li>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Free Breakfast</p>
                    </li>
                  </td>
                </tr>
              </table>
            </ul>
          </div>
          <div class="cardrating">
            <h2>Review & Ratings</h2>
            <div class="points">3.5/5</div>
            <div class="pointsMark">
              <h3>Great</h3>
              <p><b>36 </b>User Review and <b>60</b> Ratings</p>
            </div>
            <div class="expirience1">
                <h2>4.5</h2>
                <p>Host responsiveness</p>
            </div>
            <div class="expirience2">
                <h2>4.7</h2>
                <p>Check-in Expirience</p>
            </div>
            <div class="expirience3">
                <h2>4.3</h2>
                <p>Food Arrangement</p>
            </div>
            <div class="expirience4">
                <h2>4</h2>
                <p>Room Capacity</p>
            </div>
            <div class="Sefty">
                <h4>Sefty and Hygine</h4>
                <h4>4.6</h4>
                <span></span>
            </div>
            <div class="Security">
                <h4>Security</h4>
                <h4>4.8</h4>
                <span></span>
            </div>
            <div class="Cleanliness">
                <h4>Cleanliness</h4>
                <h4>4.7</h4>
                <span></span>
            </div>
            <div class="Host">
                <h4>Host</h4>
                <h4>4.5</h4>
                <span></span>
            </div>
            <button runat="server" onServerclick="GenerelBtnBookNow_Click">Book Now</button>
          </div>
        </div>
      </div>
      <div class="General">
        <div class="image">
          <img id="LuxroomImg" src="../../Image/RoomImage/Luxury/1.jpg" alt="Room Image" />
          <div>
            <i id="btnPrevlux" class="las la-angle-left"></i>
            <i id="btnNextlux" class="las la-angle-right"></i>
          </div>
        </div>
        <div class="description">
          <div class="😒">
            <h1>Luxury Room</h1>
            <ul class="stars">
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star-half"></i></li>
            </ul>
            <ul class="Hotelservices">
              <table>
                <tr>
                  <td>
                    <li>Air Conditioning</li>
                    <li>Room Service</li>
                  </td>
                  <td>
                    <li>Mineral Water</li>
                    <li>Laundry Service</li>
                  </td>
                  <td>
                    <li>Housekeeping</li>
                    <li>In-room Dining</li>
                  </td>
                </tr>
              </table>
            </ul>
            <ul class="😁">
              <!-- <i class="las la-check-circle"></i> -->
              <table>
                <tr>
                  <td>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Refundable</p>
                    </li>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Late check-out</p>
                    </li>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Late check-out</p>
                    </li>
                  </td>
                  <td>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Early Check in</p>
                    </li>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Free Lunch& Dinner</p>
                    </li>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Free Breakfast</p>
                    </li>
                  </td>
                </tr>
              </table>
            </ul>
          </div>
          <div class="cardrating">
            <h2>Review & Ratings</h2>
            <div class="points">4.5/5</div>
            <div class="pointsMark">
              <h3>Great</h3>
              <p><b>36 </b>User Review and <b>60</b> Ratings</p>
            </div>
            <div class="expirience1">
                <h2>4.7</h2>
                <p>Host responsiveness</p>
            </div>
            <div class="expirience2">
                <h2>4.7</h2>
                <p>Check-in Expirience</p>
            </div>
            <div class="expirience3">
                <h2>4.4</h2>
                <p>Food Arrangement</p>
            </div>
            <div class="expirience4">
                <h2>3</h2>
                <p>Room Capacity</p>
            </div>
            <div class="Sefty">
                <h4>Sefty and Hygine</h4>
                <h4>4.6</h4>
                <span></span>
            </div>
            <div class="Security">
                <h4>Security</h4>
                <h4>4.8</h4>
                <span></span>
            </div>
            <div class="Cleanliness">
                <h4>Cleanliness</h4>
                <h4>4.7</h4>
                <span></span>
            </div>
            <div class="Host">
                <h4>Host</h4>
                <h4>4.5</h4>
                <span></span>
            </div>
            <button runat="server" ID="btnLuxuryBookNow" onServerclick="btnLuxuryBookNow_Click">Book Now</button>
          </div>
        </div>
      </div> 
      <div class="General">
        <div class="image">
          <img id="DeroomImg" src="../../Image/RoomImage/Delux/1.jpg" alt="Room Image" />
          <div>
            <i id="btnPrevde" class="las la-angle-left"></i>
            <i id="btnNextde" class="las la-angle-right"></i>
          </div>
        </div>
        <div class="description">
          <div class="😒">
            <h1>Delux Room</h1>
            <ul class="stars">
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
            </ul>
            <ul class="Hotelservices">
              <table>
                <tr>
                  <td>
                    <li>Air Conditioning</li>
                    <li>Room Service</li>
                  </td>
                  <td>
                    <li>Mineral Water</li>
                    <li>Laundry Service</li>
                  </td>
                  <td>
                    <li>Housekeeping</li>
                    <li>In-room Dining</li>
                  </td>
                </tr>
              </table>
            </ul>
            <ul class="😁">
              <!-- <i class="las la-check-circle"></i> -->
              <table>
                <tr>
                  <td>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Refundable</p>
                    </li>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Late check-out</p>
                    </li>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Late check-out</p>
                    </li>
                  </td>
                  <td>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Early Check in</p>
                    </li>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Free Lunch& Dinner</p>
                    </li>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Free Breakfast</p>
                    </li>
                  </td>
                </tr>
              </table>
            </ul>
          </div>
          <div class="cardrating">
            <h2>Review & Ratings</h2>
            <div class="points">4/5</div>
            <div class="pointsMark">
              <h3>Great</h3>
              <p><b>36 </b>User Review and <b>60</b> Ratings</p>
            </div>
            <div class="expirience1">
                <h2>4.5</h2>
                <p>Host responsiveness</p>
            </div>
            <div class="expirience2">
                <h2>4.7</h2>
                <p>Check-in Expirience</p>
            </div>
            <div class="expirience3">
                <h2>4.3</h2>
                <p>Food Arrangement</p>
            </div>
            <div class="expirience4">
                <h2>3</h2>
                <p>Room Capacity</p>
            </div>
            <div class="Sefty">
                <h4>Sefty and Hygine</h4>
                <h4>4.6</h4>
                <span></span>
            </div>
            <div class="Security">
                <h4>Security</h4>
                <h4>4.8</h4>
                <span></span>
            </div>
            <div class="Cleanliness">
                <h4>Cleanliness</h4>
                <h4>4.7</h4>
                <span></span>
            </div>
            <div class="Host">
                <h4>Host</h4>
                <h4>4.5</h4>
                <span></span>
            </div>
            <button runat="server" id="btnDeluxBookNow" onServerclick="btnDeluxBookNow_Click">Book Now</button>
          </div>
        </div>
      </div>
      <div class="General">
        <div class="image">
          <img id="SdroomImg" src="../../Image/RoomImage/Superdelux/1.jpg" alt="Room Image" />
          <div>
            <i id="btnPrevsde" class="las la-angle-left"></i>
            <i id="btnNextsde" class="las la-angle-right"></i>
          </div>
        </div>
        <div class="description">
          <div class="😒">
            <h1>Super Delux Room</h1>
            <ul class="stars">
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
            </ul>
            <ul class="Hotelservices">
              <table>
                <tr>
                  <td>
                    <li>Air Conditioning</li>
                    <li>Room Service</li>
                  </td>
                  <td>
                    <li>Mineral Water</li>
                    <li>Laundry Service</li>
                  </td>
                  <td>
                    <li>Housekeeping</li>
                    <li>In-room Dining</li>
                  </td>
                </tr>
              </table>
            </ul>
            <ul class="😁">
              <!-- <i class="las la-check-circle"></i> -->
              <table>
                <tr>
                  <td>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Refundable</p>
                    </li>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Late check-out</p>
                    </li>
                    <li>
                      <i class="las la-times-circle"></i>
                      <p>Late check-out</p>
                    </li>
                  </td>
                  <td>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Early Check in</p>
                    </li>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Free Lunch& Dinner</p>
                    </li>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Free Breakfast</p>
                    </li>
                  </td>
                </tr>
              </table>
            </ul>
          </div>
          <div class="cardrating">
            <h2>Review & Ratings</h2>
            <div class="points">4/5</div>
            <div class="pointsMark">
              <h3>Great</h3>
              <p><b>149 </b>User Review and <b>160</b> Ratings</p>
            </div>
            <div class="expirience1">
                <h2>4.9</h2>
                <p>Host responsiveness</p>
            </div>
            <div class="expirience2">
                <h2>4.7</h2>
                <p>Check-in Expirience</p>
            </div>
            <div class="expirience3">
                <h2>4.3</h2>
                <p>Food Arrangement</p>
            </div>
            <div class="expirience4">
                <h2>4</h2>
                <p>Room Capacity</p>
            </div>
            <div class="Sefty">
                <h4>Sefty and Hygine</h4>
                <h4>4.6</h4>
                <span></span>
            </div>
            <div class="Security">
                <h4>Security</h4>
                <h4>4.8</h4>
                <span></span>
            </div>
            <div class="Cleanliness">
                <h4>Cleanliness</h4>
                <h4>4.7</h4>
                <span></span>
            </div>
            <div class="Host">
                <h4>Host</h4>
                <h4>4.5</h4>
                <span></span>
            </div>
            <button runat="server" id="btnSuperdeluxBookNow" onServerclick="btnSuperdeluxBookNow_Click">Book Now</button>
          </div>
        </div>
      </div>
      <div class="General">
        <div class="image">
          <img id="HsroomImg" src="../../Image/RoomImage/Honeymoon Sweet/1.jpg" alt="Room Image" />
          <div>
            <i id="btnPrevhs" class="las la-angle-left"></i>
            <i id="btnNexths" class="las la-angle-right"></i>
          </div>
        </div>
        <div class="description">
          <div class="😒">
            <h1>Honeymoon Suite Room</h1>
            <ul class="stars">
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
              <li><i class="las la-star"></i></li>
            </ul>
            <ul class="Hotelservices">
              <table>
                <tr>
                  <td>
                    <li>Air Conditioning</li>
                    <li>Room Service</li>
                  </td>
                  <td>
                    <li>Champain</li>
                    <li>Candle Light Dinner</li>
                  </td>
                  <td>
                    <li>2 Seater Acrelic Jacuzzi</li>
                    <li>In-room Dining</li>
                  </td>
                </tr>
              </table>
            </ul>
            <ul class="😁">
              <!-- <i class="las la-check-circle"></i> -->
              <table>
                <tr>
                  <td>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Refundable</p>
                    </li>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Late check-out</p>
                    </li>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Late check-out</p>
                    </li>
                  </td>
                  <td>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Early Check in</p>
                    </li>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Free Lunch& Dinner</p>
                    </li>
                    <li>
                      <i class="las la-check-circle"></i>
                      <p>Free Breakfast</p>
                    </li>
                  </td>
                </tr>
              </table>
            </ul>
          </div>
          <div class="cardrating">
            <h2>Review & Ratings</h2>
            <div class="points">5/5</div>
            <div class="pointsMark">
              <h3>Great</h3>
              <p><b>108 </b>User Review and <b>90</b> Ratings</p>
            </div>
            <div class="expirience1">
                <h2>4.5</h2>
                <p>Host responsiveness</p>
            </div>
            <div class="expirience2">
                <h2>4.9</h2>
                <p>Check-in Expirience</p>
            </div>
            <div class="expirience3">
                <h2>4.8</h2>
                <p>Food Arrangement</p>
            </div>
            <div class="expirience4">
                <h2>2</h2>
                <p>Room Capacity</p>
            </div>
            <div class="Sefty">
                <h4>Sefty and Hygine</h4>
                <h4>4.9</h4>
                <span></span>
            </div>
            <div class="Security">
                <h4>Security</h4>
                <h4>5</h4>
                <span></span>
            </div>
            <div class="Cleanliness">
                <h4>Cleanliness</h4>
                <h4>5</h4>
                <span></span>
            </div>
            <div class="Host">
                <h4>Host</h4>
                <h4>4.7</h4>
                <span></span>
            </div>
            <button runat="server" id="btnHoneymoonBookNow" onServerclick="btnHoneymoonBookNow_Click">Book Now</button>
          </div>
        </div>
      </div>
    </div>

    <script>
        // For general room image 
        const btnPrev = document.getElementById("btnPrevgen");
        const btnNext = document.getElementById("btnNextgen");
        // luxury
        const btnPrevlux = document.getElementById("btnPrevlux");
        const btnNextlux = document.getElementById("btnNextlux");
        // delux
        const btnPrevde = document.getElementById("btnPrevde");
        const btnNextde = document.getElementById("btnNextde");
        // super delux
        const btnPrevsde = document.getElementById("btnPrevsde");
        const btnNextsde = document.getElementById("btnNextsde");
        // honeymoon
        const btnPrevhs = document.getElementById("btnPrevhs");
        const btnNexths = document.getElementById("btnNexths");
        // gen image id
        const image = document.getElementById("GenroomImg");
        const luximage = document.getElementById("LuxroomImg");
        const deimage = document.getElementById("DeroomImg");
        const sdimage = document.getElementById("SdroomImg");
        const hsimage = document.getElementById("HsroomImg");

        let counter = 1;

        btnPrevlux.addEventListener('click', () => {
            if (counter <= 1) {
                counter = 1;
                console.log('If' + counter);
            }
            else {
                luximage.src = '../../Image/RoomImage/Luxury/' + counter-- + '.jpg';
            }
        });
        btnNextlux.addEventListener('click', () => {
            if (counter >= 5) {
                console.log('If' + counter);
                counter = 1;
            }
            else {
                luximage.src = '../../Image/RoomImage/Luxury/' + counter++ + '.jpg';
            }
        });
        btnPrevde.addEventListener('click', () => {
            if (counter <= 1) {
                counter = 1;
            }
            else {
                deimage.src = '../../Image/RoomImage/Delux/' + counter-- + '.jpg';
            }
        });
        btnNextde.addEventListener('click', () => {
            if (counter >= 5) {
                console.log('If' + counter);
                counter = 1;
            }
            else {
                deimage.src = '../../Image/RoomImage/Delux/' + counter++ + '.jpg';
            }
        });
        btnPrevsde.addEventListener('click', () => {
            if (counter <= 1) {
                counter = 1;
            }
            else {
                sdimage.src = '../../Image/RoomImage/Superdelux/' + counter-- + '.jpg';
            }
        });
        btnNextsde.addEventListener('click', () => {
            if (counter >= 5) {
                console.log('If' + counter);
                counter = 1;
            }
            else {
                sdimage.src = '../../Image/RoomImage/Superdelux/' + counter++ + '.jpg';
            }
        });
        btnPrevhs.addEventListener('click', () => {
            if (counter <= 1) {
                counter = 1;
            }
            else {
                hsimage.src = '../../Image/RoomImage/Honeymoon Sweet/' + counter-- + '.jpg';
            }
        });
        btnNexths.addEventListener('click', () => {
            if (counter >= 5) {
                counter = 1;
            }
            else {
                hsimage.src = '../../Image/RoomImage/Honeymoon Sweet/' + counter++ + '.jpg';
                console.log('else' + counter);
            }
        });
        btnPrev.addEventListener('click', () => {
            if (counter <= 1) {
                counter = 1;
            }
            else {
                image.src = '../../Image/RoomImage/General/' + counter-- + '.jpg';
            }
        });
        btnNext.addEventListener('click', () => {
            if (counter >= 5) {
                console.log('If' + counter);
                counter = 1;
            }
            else {
                image.src = '../../Image/RoomImage/General/' + counter++ + '.jpg';
            }
        });
    </script>


</asp:Content>
