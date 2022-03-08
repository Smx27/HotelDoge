<%@ Page Title="Error 404- DogeHotel" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Error404.aspx.cs" Inherits="HotelDoge.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title>Error Page- HotelDoge</title>
    <style>
        .containner {
  height: 100vh;
  width: 100%;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
}

.containner i {
  font-size: 20rem;
  font-weight: 300;
  color: #504f4f;
}

.containner h1 {
  font-family: sans-serif;
  font-size: 5rem;
  color: #504f4f;
}

.containner h3 {
  font-family: sans-serif;
  color: gray;
}

.containner p {
  font-family: sans-serif;
  color: gray;
  font-size: 1.5rem;
}

.containner a {
  text-decoration: none;
  font-weight: bold;
  color: gray;
  cursor: pointer;
}
/*# sourceMappingURL=Style.css.map */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="containner">
        <i class="las la-frown"></i>
        <h1>404</h1>
        <h3>Page Not Found</h3>
        <p>The Page you looking for doesn't exixt or other Error occured. <br>
        Go back, or head over to <a href="#">Main Page</a> to choose a new direction.</p>
    </div>
</asp:Content>
