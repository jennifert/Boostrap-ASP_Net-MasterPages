<?php
include('imdb.php');
 if(isset($_POST['submit'])) 
            { 
                $movieTitle = strip_tags(trim($_POST['movieSearch']));
                $searchValue='value="'.$movieTitle.'"';
            } else {
              $searchValue = '';
            }
?>
<!DOCTYPE html>
<html>
  <head>
    <title>Based off Bootstrap 101 Template from 3 RC 1</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/css/bootstrap.min.css">
     <link rel="stylesheet" href="../css/bootstrap-glyphicons.css">
  </head>
  <body>
    <div class="container">
        <h1>Movie Search</h1>
        <P class="lead">This demo uses the <a href="http://mymovieapi.com/" target="_blank">My Movie Api</a>, which is a simple way to query the IMDB database. Check out their site for more details. </p>
        <form class="form-inline" name="MovieForm"  method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <div class="form-group">
<!--              <label for="movieSearch">Enter Movie Title:</label> -->
              <input type="text" id="movieSearch" name="movieSearch"  class="form-control" placeholder="Type title here." <?php echo $searchValue;?>>
            </div>
              <input type="hidden" id="submit" name="submit"  value="submit">
              <button type="submit" class="btn btn-default btn-xs" name="submit"><i class="glyphicon glyphicon-search"></i> Search IMDB</button>

      </form>
        <?php
          if(isset($_POST['submit'])) 
            { 
                echo '<h3>Results ...</h3>';
                echo searchIMDB($movieTitle);
            } 
          //echo searchIMDB('Pirates of the Caribbean');

        ?>
    </div>

<!--    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/js/bootstrap.min.js"></script>-->

    <!-- Enable responsive features in IE8 with Respond.js (https://github.com/scottjehl/Respond)
    <script src="js/respond.js"></script> -->
  </body>
</html>
