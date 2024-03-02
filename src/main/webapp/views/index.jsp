<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Business Bank</title>
  <link rel="shortcut icon" href="/image/favicon-32x32.png" type="image/x-icon">
  <style>
    body{
      margin: 0%;
    }
    header{
      width: 100%;
      height: 100px;
      background-color: black;
      box-shadow: 4px 2px 4px rgb(0, 0, 0);
      color: white;
    }
    .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            z-index: 1000;
        }
        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 999;
        }
        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
            width: 10px;
            height: 15px;
            padding: 6px;
        }
        .close-btn:hover{
          background-color: red;
          color: white;
        }
    #iconcont{
      display: inline-flex;
      margin-top: 10px;
    }
      .maincont{
        display: flex;
        justify-content: center;
         margin-top: 7%;
        padding: 1%;  
      }
      .maintext{
        width: 500px;
        height: 300px;
      }
      .Getbut{
        width: 80px;
        height: 20px;
        margin-left: 13%;
        margin-top: 10px;
        background-color: black;
        padding: 10px;
        font-weight: bolder;
        border-radius: 10px;
      }
      #cont2{
        margin-top: 7%;
        text-align: center;
      }
      #cont3{
        margin-top: 5%;
        text-align: center;
      }
      #Getbut1{
        width: 80px;
        height: 20px;
        background-color: black;
        color: white;
        text-decoration: none;
        padding: 10px;
        font-weight: bolder;
        border-radius: 10px;
      }
      #protect, #loan{
        display: flex;
        justify-content: center;
         margin-top: 7%;
        padding: 1%;
      }
      #contactbut{
        width: 60px;
        height: 16px;
        margin-left: 46%;
        margin-top: 10px;
        background-color: black;
        color: white;
        padding: 10px;
        font-weight: bolder;
        border-radius: 10px;
        cursor: pointer;
      }
      footer {
      margin-top: 3%;
      background-color:black;
      color: white;
      text-align: center;
      padding: 10px;
      height: 30px;
      position: fixed;
      bottom: 0;
      width: 100%;
    }
  </style>
</head>
<body>
    <header>
        <div>
          <div id="iconcont">
            <img src="/image/favicon-32x32.png" alt="BusinessBank" style="width: 50px; height: 50px; margin-top: 10px; margin-right: 20px; margin-left: 10px;"/>
            <h2>Business Bank</h2>
            <div style="display: inline-flex; margin-left: 400px; cursor: pointer;">
            </div>
          </div>
        </div>
    </header>
    <main>
      <div class="maincont">
        <div  class="maintext">
          <h1>Secure, Convenient,</h1>
          <h1>Online Banking Anywhere</h1>
          <br>
          <br>
          <h5>Secure, Convenient, Online Banking Anywhere</h5>
        </div>
        <div>
          <img src="/image/pwkof2rkm42dyzsxg6jh.jpg" alt="BusinessBank" width="500px" height="300px"/>
        </div>
      </div>
      <div class="Getbut">
        <a style="text-decoration: none; color: white;" href="/register">Get Started</a>
      </div>
      <div id="cont2">
        <h1>Why Business Bank ?</h1>
      </div>
      <div id="cont3">
        <div>
          <h1>Taking Online Banking Forward</h1>
        </div>
        <div>
          <h5>Experience the future od financial transactions with Business Bank innovative features such as instant</h5>
          <h5>Payments Withdrawals, Check Balance, Deposit Amount, Fastest Transactions and Real-Time Tracking</h5>
        </div>
        <div style="margin-top: 50px;">
          <a id="Getbut1" href="/register">Get Started</a>
        </div>
      </div>
      <div id="protect">
        <div>
          <h1>Advance Account Protection</h1>
          <h5>Business Bank leverages multi-factor authentication and continuous monitoring</h5>
          <h5>to guard against unauthorized access and fraud</h5>
        </div>
        <div>
          <img src="/image/sqkrc3jcx7hhhieik2jg.jpg" alt="BankProtection" width="500px" height="300px" style="margin-left: 100px;"/>
        </div>
      </div>
      <div style="text-align: center; margin-top: 5%;">
        <h1>Business Bank's efficiency and customer </h1>
        <h1>service have revolutionized the way I handle</h1>
        <h1>my finances</h1>
        <h5>Sudharshan, Business Owner</h5>
      </div>
      <div id="loan">
        <div>
          <img src="/image/pqvrhvcvs4bi0oljh4i9.jpg" alt="Loan" width="500px" height="300px" style="margin-right: 100px;"/>
        </div>
        <div>
          <h1>Instant Loan Decisions</h1>
          <h5>Get immediate feedback on loan applications with our quick decision</h5>
          <h5>algorithms, saving you time and hassle</h5>
        </div>
      </div>
      <div style="text-align: center; margin-top: 50px;">
        <h1>24/7 Customer Support</h1>
        <h5>Our dedicated team is always online to provide you with support guidance for any banking queries you</h5>
        <h5>may have</h5>
      </div>
      <div id="contactbut">
        <a onclick="openPopup()">Contact</a>
      </div>
      <div id="popup" class="popup">
        <span class="close-btn" onclick="closePopup()">X</span>
        <h2>Business Bank</h2>
        <p>+91 1234567890</p>
        <p>businessbank@gmail.com</p>
    </div>
    <div id="overlay" class="overlay" onclick="closePopup()"></div>
    <div class="maincont">
      <div class="maintext">
        <h1>Streamlined Transfers</h1>
        <h5>Effortlessly send and receive funds with Business Bank Streamlined transfer </h5>
        <h5>system that's built for speed and convenience</h5>
      </div>
      <div>
          <img src="/image/u2zw5r1hn15iusmkci7t.jpg" alt="transfer" width="500px" height="300px"/>
      </div>
    </div>
    <div style="text-align: center; margin-top: 5%;">
      <div>
        <h1>Navigating the banking service at</h1>
        <h1>Business Bank is immensely intuitive and</h1>
        <h1>user-friendly</h1>
        <h5>Sai, Freelancer</h5>
      </div>
    </div>
    <div class="maincont">
      <div  class="maintext">
       <h1>Business Bank</h1>
       <h5>Leaders in secure digital banking, making your</h5>
       <h5>financial life simpler</h5>
      </div>
      <div>
        <img src="/image/h8hoxtveoj7madoowgqc.jpg" alt="Thank You"  width="500px" height="300px"/>
      </div>
    </div>
    </main>
    <footer>
      &copy; 2024 Business Bank. All rights reserved.
    </footer>
</body>
<script>
  function openPopup() {
      document.getElementById('popup').style.display = 'block';
      document.getElementById('overlay').style.display = 'block';
  }

  function closePopup() {
      document.getElementById('popup').style.display = 'none';
      document.getElementById('overlay').style.display = 'none';
  }
</script>
</html>