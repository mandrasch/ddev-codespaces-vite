<?php
require __DIR__ . '/vendor/autoload.php';
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test</title>

    <?php
    // output the vite script tag, just quick & dirty without manifest.json
    // TODO: only set if it CODESPACE_NAME is set, otherwise use DDEV PRIMARY_URL
    $viteUrl = 'https://' . $_SERVER['CODESPACE_NAME'] . '-5173.' . $_SERVER['GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN'];
    echo '<script type="text/javascript" src="'.  $viteUrl .'/src/js/app.js"></script>';
    ?>
    
</head>
<body>
    <p>Hello...</p>
    
</body>
</html>