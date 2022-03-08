<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DogeLogin.aspx.cs" Inherits="HotelDoge.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>Login</title>
        
      <link rel="stylesheet" href="../../CssFile/LoginStyleSheet.css">
      <link rel="stylesheet" href="../../CssFile/DefaultStyle.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" crossorigin="anonymous" />
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&family=Open+Sans&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div id="cntLogin" class="Login">
            <div class="loginimg">
                <img src="../../Image/Login/Login-rafiki.svg" alt="Login Image">
            </div>
            <a href="#" id="linkregister" ><b>Register</b></a>
            <div class="logincontent">
                <h1>Sign in</h1>
                <a href="#" id="Facebook"><i class="fab fa-facebook"></i></a>
                <a href="#" ><i class="fab fa-google" id="Google"></i></a>
                <a href="#" ></a><i class="fab fa-linkedin" id="linkedin"></i></a><br>
                <span>Login With</span><br>
                <input type="email" placeholder="   Email" id="txtLoginEmail" runat="server" />
                <input type="password" placeholder="   Password" id="txtLoginPassword" runat="server" />
                <BR><br>
                    <button id="btnlogin" runat="server" onserverclick="btnlogin_ServerClick">Log In</button>
                    <br>
                    <a href="#" id="Forgot">Forget your password?</a>
                </div>
           
            </div>
            <div id="cntSignup" class="Signup">
                <div class="signupcontent">
                    <h1>Sign Up</h1>
                    <a href="#" ><i class="fab fa-facebook"></i></a>
                    <a href="#" ><i class="fab fa-google" id="Google"></i></a>
                    <a href="#" ></a><i class="fab fa-linkedin" id="linkedin"></i></a><br>
                    <span>Registration</span><br>
                    <input type="text" placeholder="   Name" id="txtSignupName" runat="server"/>
                    <input type="email" placeholder="   Email" id="txtSignupEmail" runat="server"/>
                    <input type="password" placeholder="   Password" id="txtSignupPassword" runat="server" />
                    <br></br>
                    <button id="btnSignup" runat="server" onserverclick="btnSignup_ServerClick">Sign Up</button>
                    <br>
                    <a href="#" id="linksignup" runat="server" >Alredy have an Account?</a>
                </div>
                <div class="signupimg">
                <img src="../../Image/Login/Login-rafiki.svg" alt="">
                </div>
        </div>
    </div>

    <script>
    const Log=document.getElementById("linkregister");
    const SU=document.getElementById("linksignup");
    const Sig=document.getElementById("cntSignup");
    const login=document.getElementById("cntLogin");
    Log.addEventListener('click',()=>{
        Sig.style.display='flex ';
        login.style.display='none';
    });
    SU.addEventListener('click',()=>{
        Sig.style.display='none';
        login.style.display='flex';
    });
    </script>
</asp:Content>
