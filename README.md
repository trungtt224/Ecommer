# 1. Install XAMP or MAMP
# 2. Install IDE 
    Installing sublime, netbean, atom or php storm (best tool)
# 3. Config setting sql
Open file `database.php`
 
```php
 'mysql' => [
            'driver' => 'mysql',
            'host' => env('DB_HOST', 'localhost'),
            'port' => env('DB_PORT', '8889'),
            'unix_socket'   => '/Applications/MAMP/tmp/mysql/mysql.sock',
            'database' => env('DB_DATABASE', 'ecom'),
            'username' => env('DB_USERNAME', 'root'),
            'password' => env('DB_PASSWORD', 'root'),
            'charset' => 'utf8',
            'collation' => 'utf8_unicode_ci',
            'prefix' => '',
        ],
```
Notice: If using window, remove unix_socket

#4. Run server

Open the command

* Run
            
        php artisan serve
