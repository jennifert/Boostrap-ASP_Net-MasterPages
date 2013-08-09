<?php

function searchIMDB($fromSearchField){
	$apiQueryUrl = 'http://mymovieapi.com/?title=' . urlencode($fromSearchField).'&type=xml&plot=full&episode=0&limit=10&yg=0&mt=M&lang=en-US&offset=0&aka=simple&release=simple&business=0&tech=0';
	$temp = file_get_contents($apiQueryUrl);
 	$xmlDocument = simplexml_load_string($temp); 
	$totalNumResults= $xmlDocument->IMDBDocumentList->total_found;
	foreach ($xmlDocument->result->item as $item)
	{
	    $title = $item->title;
	    $year = $item->year;
	    $plot  = $item->plot_simple;

	    foreach($item->poster as $poster){
      	  $poster = $poster->cover;
    	}
    	$link  = $item->imdb_url;
    	$runtime  = $item->runtime->item;
		$actorlist  = $item->actors->item;
		$directorName  = $item->directors->item;
		$movieRating  = $item->rated;
		echo '

				<h4><strong><a href="'.$link .'">'.$title.'</a></strong></h4>
				<div class="row">
				  <div class="col-lg-2">
				  	<a href="#">
			             <img src="'.$poster.'" alt="Poster for: '.$title.'" class="img-thumbnail">
			        </a>

			      </div>
				  
				  <div class="col-lg-10">
				  	<p>Year: '.$year.'</p>
				  	<p>Rating: '.$movieRating.'</p>
				  	<p>Run Time: '.$runtime.'</p>
			        <p>Lead Actor: '.$actorlist.'</p>
			        <p>Director: '.$directorName.'</p>
			        <p>
			          '.$plot.'
			        </p>
			        <p><a class="btn" href="'.$link .'" target="_blank">Read more</a> (<small>Opens in new window)</small></p>
			      </div>
				</div>

				<hr>';
    }
}

?>
 