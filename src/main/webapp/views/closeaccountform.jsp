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
		height: 250px;
		width: 500px;
		background-color:white;
		margin-top: 6%;
		margin-left: 30%;
	}
  #con4:hover{
    box-shadow: 1px 2px 10px black;
  }
	#form1{
		padding: 20px;
	}
    .group{
		margin: 10px;
	}
	.label1{
           font-weight: bold;
           margin-bottom: 5px;
	}
	.in{
         width: 100%;
         padding: 10px;
         box-sizing: border-box;
         margin-bottom: 10px;
         height: 40px;
         border-radius: 10px;
         border-style: none;
	}
  .in:hover{
    box-shadow: 1px 2px 4px black;
  }
	#bot{
		    background-color: white;
            color: black;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bolder;
            margin-left: 180px;
	}
#bot:hover{
  background-color: black;
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
    <div id="con4">
      <form id="form1" action="/closeaccount/${detail.id}" method="post">
               <div class="group">
          <label class="label1">Password :</label>
          <input class="in" type="password" name="password" placeholder="Enter password"/>
        </div>
         <div>
          <button id="bot" type="submit">Confirm</button>								
         </div>
      </form>
    </div>
  </main>
    <footer>
      &copy; 2024 Business Bank. All rights reserved.
    </footer>
</body>
<script>

</script>
</html>