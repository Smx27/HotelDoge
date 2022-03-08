<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="HotelDoge.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../CssFile/Payment.css" />
    <link rel="stylesheet" href="../../CssFile/DefaultStyle.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400&family=Open+Sans:wght@300;400;600;700;800&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container1">
            <div class="row">
                <h1></h1>
            </div>
            <div class="info">
                <div class="Doge">
                    <h1>Hotel Doge</h1>
                    <p>Digha,West Bengal,721441,Near Neheru Market</p>
                </div>
                <div class="infoinput">
                    <%--Text will be inputed into text boxand the label will contains the value name--%>
                    <label for="" id="Checkin"></label>
                    <input runat="server" id="txtCheckin" type="text" disabled required class="name" placeholder="Check in">
                    <label for="" id="Checkout"></label>
                    <input id="txtCheckout" runat="server" type="text" disabled required class="name" placeholder="Check out">
                    <label for="" id="People"></label>
                    <input id="txtNumofPeople" runat="server" type="number " disabled required class="name" placeholder="No Of People">
                    <label for="" id="NoofRoom"></label>
                    <input type="text" runat="server" id="txtRoomNumber" required class="name" placeholder="Room Number ">
                    <br>
                </div>
                <div class="Informatiostoknow">
                    <br>
                    <div class="DogeRules">
                        <h2>Hotel Rules</h2>
                    </div>
                    <br>
                    <ul>
                        <li>Mandatory RTPCR Required</li>
                        <li>It is Mandatory for guest travelling From outside the state to be Fully vaccinated, need to
                        carry a negative RT-PCR certificate not older than 72 hrs.</li>
                        <li>Pets are not allowed.</li>
                        <li>Unmarried couples allowed</li>
                        <li>Credit/debit cards are accepted</li>
                    </ul>
                    <br>
                </div>
            </div>
            <div class="price">
                <div class="Pay">
                    <h1>Payment</h1>
                </div>
                <div class="RoomP">
                    <label id="RoomPl">1 Room x 1 Night</label>
                    <label runat="server" id="lblRoomPrice">₹</label>
                    <input type="text" runat="server" disabled required class="name" id="txtRoomPrice">
                </div>
                <div class="Dis">
                    <label for="" id="Disl">Discount 5%</label>
                    <label for="" id="Discount">₹199</label>
                    <input type="text" disabled required class="name" id="Dis">
                </div>
                <div class="Roomt">
                    <label for="" id="Roomtl">Taxes & Service fees</label>
                    <label for="" id="Tax">₹499</label>
                    <input type="text" disabled required class="name" id="Roomt">
                </div>
                <div class="Covid">
                    <label runat="server" id="Covidl">Donation for Covid 19</label>
                    <label for="" id="Covid19">₹20</label>
                    <input type="text" disabled required class="name" id="Covid">
                </div>
                <label id="TotalPl"><b>Total Payable Amount</b> </label>
                <label runat="server" id="txtTotalPrice">₹</label>
            </div>
        </div>
        <div class="container2">
            <div class="GuestDetails">
                <h1>GUEST DETAILS</h1>
                <div class="DogeDetails">
                    <h2><span>Please </span>fill your details</h2>
                </div>
                <div class="Fname">
                    <label for="Name" id="Title">Select title</label>
                    <select name="" id="Title1" aria-placeholder="Title">
                        <option value="Mr">Mr</option>
                        <option value="Mrs">Mr.s</option>
                    </select>
                    <label for="FName">Enter Full Name</label>
                    <input type="text" runat="server" id="txtFname" required class="name"><br>
                </div>
                <div class="mailAAno">
                    <label for="Name">Enter Your Email</label>
                    <input type="email" runat="server" id="txtmail" required class="name"><br>
                    <label for="Name">Enter Aadhaar No</label>
                    <input type="text" runat="server" id="txtAadhaarNo" required class="name"><br>
                </div>
                <div class="conadd">
                    <label for="Name">Enter Your Contact No</label>
                    <input type="number" runat="server" id="txtPhno" required class="name"><br>
                    <label for="Name">Enter Your Address</label>
                    <input type="text" runat="server" id="txtAddress" required class="name">
                </div>
            </div>

            <!-- Payment details -->

            <div class="sheet">
                <div class="DogePaymentDetails">
                    <h1>Payment Details</h1>
                </div>

                <div class="input-group">
                    <div class="input-box">
                        <h4>Room Details</h4>
                        <div class="input-group">
                            <div class="input-box">
                                <i class="fas fa-hotel"></i>
                                <label for="Room no" required class="name" id="RoomNo2">Room No</label>
                                <input type="text" runat="server" id="txtRoomNo2" disabled required class="name">
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="input-box">
                                <label for="Room Price" id="RoomPrice">Room Price</label>
                                <input type="text" runat="server" id="txtxRoomPrice" disabled required class="name">

                                <i class="fas fa-tag"></i>


                            </div>
                        </div>
                        <div class="input-group">
                            <div class="input-box">
                                <i class="fas fa-restroom"></i>
                                <label for="Room Type" id="RoomType">Room Type</label>
                                <input type="text" runat="server" id="txtRoomType" disabled required class="name">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="input-group">
                    <div class="input-box">
                        <h4>Payment Method</h4>
                        <div class="input-group">
                            <div class="input-box">
                                <label for="Payment Id" id="PaymentId">Payment Id</label>
                                <i class="fas fa-credit-card-blank"></i>
                                <input type="text" runat="server" id="txtxPaymentId" disabled required class="name">
                            </div>
                        </div>

                        <div class="input-group">
                            <div class="input-box">
                                <label for="Transaction Id" id="transactionId">Transaction Id</label>
                                <i class="fas fa-receipt"></i>
                                <input type="text" runat="server" id="txtTransactionId" disabled required class="name">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="input-group">
                    <div class="input-box">
                        <button runat="server" onserverclick="PayNow_Click" type="submit">PAY NOW</button>
                    </div>
                </div>
        </div>

</asp:Content>
