<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('api/hello', 'Api::hello');
$routes->get('api/users', 'Api::users');
