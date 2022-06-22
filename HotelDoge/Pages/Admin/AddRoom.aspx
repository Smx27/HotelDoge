<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRoom.aspx.cs" Inherits="HotelDoge.Pages.Admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://codepen.io/skjha5993/pen/bXqWpR.css"
    />
    <title>DogeHotel-Add Room</title>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      .datagrid {
        border: 1px solid rgb(197, 194, 194);
        border-radius: 5px;
        padding: 1% 5%;
        width: 100%;
        height: 40vh;
      }
      #GridRoomView{
          height:100%;
          width:100%;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
      <div class="datagrid col-sm-12 container-fluid">
          <asp:GridView ID="GridRoomView" runat="server" CellPadding="4" ForeColor="#6347F9" GridLines="None">
              <AlternatingRowStyle BackColor="White" />
              <EditRowStyle BackColor="#2461BF" />
              <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#EFF3FB" />
              <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#F5F7FB" />
              <SortedAscendingHeaderStyle BackColor="#6D95E1" />
              <SortedDescendingCellStyle BackColor="#E9EBEF" />
              <SortedDescendingHeaderStyle BackColor="#4870BE" />
          </asp:GridView>
      </div>
      <button class="btn btn-primary btn-block" runat="server" onserverclick="BtnClearRoom_Click">Clear Room</button>
      <form>
        <h2 class="text-center">Add Room</h2>
        <div class="row jumbotron">
          <div class="col-sm-6 form-group">
            <label for="name-f">Room Number</label>
            <input
              type="text"
              class="form-control"
              name="fname"
                runat="server"
              id="txtRoomNo"
              placeholder="Enter Room Number"
              
            />
          </div>
          <div class="col-sm-6 form-group">
            <label for="name-l">Room Type</label>
            <input
              type="text"
              class="form-control"
              name="lname"
                runat="server"
              id="txtRoomtype"
              placeholder="Enter Room Type"
              
            autocomplete="on" list="roomList" />
              <datalist id="roomList">
                  <option>General</option>
                  <option>Facebook</option>
                  <option>Instagram</option>
              </datalist>
          </div>
          <div class="col-sm-4 form-group">
            <label for="email">Room Price</label>
            <input
              type="email"
              class="form-control"
              name="email"
              id="txtRoomPrice"
                runat="server"
                
              placeholder="Room Price."
              
            />
          </div>
          <div class="col-sm-4 form-group">
            <label for="address-1">Room Capacity</label>
            <input
              type="number"
              class="form-control"
              name="Locality"
             
                runat="server"
                id="txtRoomCapacity"
              min="2"
              max="6"
              placeholder="Room Capacity"
              
            />
          </div>
          <div class="col-sm-4 form-group">
            <label for="address-2">Room Avibility</label>
            <input
              type="Number"
                runat="server"
                id="txtAvibility"
                min="0"
                max="1"
              class="form-control"
              name="address"
              placeholder="Room Avibility"
              
            />
          </div>
          <div class="col-sm-12 form-group">
            <label for="State">Room Description</label>
            <input
              type="address"
                runat="server"
                id="txtDescription"
              class="form-control"
              name="State"
              placeholder="Room Description"
              
            />
          </div>
          <div class="d-grid col-sm-12 gap-2">
            <button class="btn btn-primary btn-block" type="button" runat="server" onserverclick="BtnSubmitClick">
              Submit
            </button>
          </div>
        </div>
      </form>
    </div>
    </form>
</body>
</html>
