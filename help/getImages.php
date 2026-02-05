<?php
header('Access-Control-Allow-Origin: *'); // erlaubt alle Domains
header('Content-Type: application/json');

if (!isset($_GET['url'])) {
    echo json_encode(["error" => "Keine URL angegeben"]);
    exit;
}

$url = $_GET['url'];

// Webseite abrufen
$html = @file_get_contents($url);
if ($html === false) {
    echo json_encode(["error" => "Seite konnte nicht geladen werden"]);
    exit;
}

// Bilder extrahieren
$doc = new DOMDocument();
libxml_use_internal_errors(true); // Fehler ignorieren bei kaputtem HTML
$doc->loadHTML($html);
libxml_clear_errors();

$images = [];
foreach ($doc->getElementsByTagName('img') as $img) {
    $src = $img->getAttribute('src');

    // Absolute URL erzeugen, falls relativ
    if (parse_url($src, PHP_URL_SCHEME) === null) {
        $base = rtrim($url, '/');
        $src = $base . '/' . ltrim($src, '/');
    }
    
    $images[] = $src;
}

echo json_encode($images);
?>
