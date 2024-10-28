<?php

$mode = getenv("APP_MODE");
$key = getenv("API_KEY");

if($mod=="prod") 
{
    echo "Wersja produkcyjna"; 
}
else
{
    echo "Wersja deweloperska";
}
?>