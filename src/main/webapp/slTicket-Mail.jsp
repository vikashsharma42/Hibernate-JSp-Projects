<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width,initial-scale=1.0">
  <link href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="icon" href="images/logo.png"/>
  <title>IRCTC Next Generation eTicketing System</title>
</head>
<body>
 
  <div class="train-form">
    <div class="train-form-container">
      <form action="#" method="post" style="display: flex;">
        <input type='text' name="from" id='from' class='form-control' placeholder="From*" required /> 
        <input type='text' name="to" id='to' class='form-control' placeholder="To*" required />        
        <input type='date' name="date" id='date'class='form-control'required />
         <select class="form_inp2" name="AllClass" id="trains">
              <option value="3a">AC 3 Tier (3A)</option>
              <option value="2a">AC 2 Tier (2A)</option>
              <option value="1a">AC 1 Tier (1A)</option>
              <option value="sl">Sleeper (SL)</option>
              <option value="2a">Second Sitting (2S)</option>
          </select>    
         <select class="form_inp2" name="Quota" id="Quota">
              <option value="3a">GENERAL</option>
              <option value="2a">LOWER BIRTH</option>    
          </select>
            <button class="modify-button" type="submit">Modify Search</button>
    </form>  
    </div> 
  </div>
   <div class="train-list">
  <div class="train-form-left-container">
    <img src="register/left-banner.jpeg">
  </div>
  <div class="train-form-center-container">
    <div class="train-list-span">
    <span>2 Results for <b>ANAND VIHAR TRM <i class="fa fa-arrow-right"></i> PUNE JN | Sun, 28 Jan 2024</b> For Quota | General</span>
  </div>
    <div class="train-list-details">
      <div class="train-list-details-head">
        <strong>DBRT RAJDHANI (12424)</strong>
        <span>Runs On: M T W T F S S</span>
      </div>
      <div class="train-list-details-subHead">
        <span><strong>23:45 |</strong> NEW DELHI | Sun, 28 Jan</span>
        <p>14:05</p>
        <label><b>13:50 |</b> PATLIPUTRA | Mon, 29 Jan</label>
      </div>
      <hr>
      <div class="train-list-time">
        <p><b>Sleeper (SL)</b><b style="margin-left: 6rem;">AC 3 Tier (3A)</b><b style="margin-left: 6rem;">AC 2 Tier (2A)</b><b style="margin-left: 4rem;">AC First Class (1A)</b></p>

        <div class="train-list-time-box">
        <div class="train-list-card">
          <b>Tue, 30 Jan</b>
          <strong>AVAILABLE-0009</strong>
        </div>
        <div class="train-list-card">
          <b>Tue, 30 Jan</b>
          <strong>AVAILABLE-0009</strong>
        </div>
        <div class="train-list-card">
          <b>Tue, 30 Jan</b>
          <strong>AVAILABLE-0009</strong>
        </div>
         <div class="train-list-card">
          <b>Tue, 30 Jan</b>
          <strong>AVAILABLE-0009</strong>
        </div>
      </div>
      <strong class="train-list-time-ntes">Please check <span>NTES website</span> or <span>NTES app</span> for actual time before boarding</strong>
      </div>
      <button>Book Now</button>
      <b class="train-ticket-fare">₹ 650</b>
    </div>
  </div>
</div>  
</body>
</html>