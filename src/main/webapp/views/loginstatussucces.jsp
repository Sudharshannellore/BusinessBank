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
    #iconcont{
      display: inline-flex;
      margin-top: 10px;
    }
    #con4{
		height: 290px;
		width: 500px;
		background-color:white;
		margin-top: 6%;
		margin-left: 30%;
    padding: 10px;
	}
  #con4:hover{
    box-shadow: 1px 2px 10px black;
  }

  #hypertxtcont{
    margin-top: 30px;
    padding: 10px;
    width: 98.5%;
    height: 30px;
    background-color: black;
    }
  .hypertxt{
    text-decoration: none;
    margin-left: 5%;
    color: white;
  }
      footer {
      margin-top: 3%;
      background-color:black;
      color:white;
      text-align: center;
      padding: 10px;
      height: 10px;
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
            <div style="margin-left: 500px;">
              <h4><a style="text-decoration: none; color: white;" href="javascript:history.back()">Exit</a></h4>
            </div>
          </div>
        </div>
    </header>
	<main>
    <div id="hypertxtcont">
     <div style="margin-left: 25%;">
      <a class="hypertxt" href="/checkbalance/${detail.id}">Balance</a>
      <a class="hypertxt" href="/withdraw/${detail.id}">Withdraw</a>
      <a class="hypertxt" href="/deposite/${detail.id}">Deposit</a>
      <a class="hypertxt" href="/transfer/${detail.id}">TransferAmount</a>
      <a class="hypertxt" href="/close/${detail.id}">CloseAccount</a>
     </div>
    </div>
    <div id="con4">
         <div style="text-align: center;">
          <h4>Account Id : ${detail.id}</h4>
          <h4>Name : ${detail.name}</h4>
          <h4>Email : ${detail.email}</h4>
          <h4>Mobile : ${detail.mobile}</h4>
          <h4>Pan No: ${detail.pan}</h4>
          <h4>Address : ${detail.address}</h4>
         </div>
    </div>
  </main>
    <footer>
      &copy; 2024 Business Bank. All rights reserved.
    </footer>
</body>
<script>

</script>
</html>