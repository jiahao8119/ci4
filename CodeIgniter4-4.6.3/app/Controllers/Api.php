<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class Api extends ResourceController
{
    protected $format = 'json';

    public function hello()
    {
        return $this->respond([
            'status' => 200,
            'message' => 'Hello from CodeIgniter 4 API 🚀'
        ]);
    }

    public function users()
    {
        return $this->respond([
            'status' => 200,
            'data' => [
                ['id' => 1, 'name' => 'Alice'],
                ['id' => 2, 'name' => 'Bob'],
            ]
        ]);
    }
}
