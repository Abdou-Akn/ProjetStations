<!DOCTYPE html>
<html>
<head>
    <!--author : AKENIOUENE Abderrahmane --> 
    <meta charset="utf-8">
    <title>search for petrol station</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="lib/myProject.css">
    <link href='http://fonts.googleapis.com/css?family=Gudea' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Ubuntu+Mono&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css' />
     <link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.3/dist/leaflet.css" />
    <script src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js"></script>

    <script src="lib/jsProjet.js"></script>
 
</head>
    <body>

     <h1>Points de vente de carburants</h1>
        <form action="" method="post" autocomplete="on">
            <fieldset>
                <p> <label for="commune"> Commune </label>
                <input type="text" name="commune" id="commune" required placeholder="entrez une commune" /> </p>
            
                <p> <label for="rayon"> Rayon de recherche (Km) </label>
                <input type="number" name="rayon" id="rayon" placeholder="entrez un rayon de recherche"/></p> 
            </fieldset>  

            <fieldset id="choix">
                <p> <label for="carburant">Choix du carburant</label>
                  <input type="checkbox" name="carb0" value="All"> All 
                  <input type="checkbox" name="carb1" value="1"> Gazole 
                  <input type="checkbox" name="carb2" value="2"> SP95 
                  <input type="checkbox" name="carb3" value="3"> E85 
                  <input type="checkbox" name="carb4" value="4"> GPLc 
                  <input type="checkbox" name="carb5" value="5"> E10 
                  <input type="checkbox" name="carb6" value="6"> SP98 
                </p>
            </fieldset>
            

            <p>
                <input name="ok" value="ok" id="ok" type="submit">
                <input type="reset" value="Annuler" />
            </p>

        </form>


        <div id ="carte0">
            <div id="carte">
            </div>
        </div>     


        <section>

            <table id="communes"  style="display:none;">
                <thead>
                </thead>
                <tbody >
                        <?php 
                        require("lib/manipulationDonneesProject.php");
                        ?>
                </tbody>
            </table>
        <section>

    </body>
</html>

