<?php

// Project constants
define('PROJECT_NAME', 'Autoportaal');
define('DEFAULT_CONTROLLER', 'welcome');
define('DEBUG', false);

// Load app
require 'system/classes/Application.php';
$app = new Application;
