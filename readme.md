
# Laravel PHP Framework

testesdivertidos
ssh 104.198.25.167 
rsync -rvztPhe ssh /home/luciano/code/funny-joke-v2/.env.production 104.198.25.167:code/funny-joke-v2/.env

ilhanet
ssh 104.197.251.61

cd code/funny-joke-v2 && git pull && composer install && exit

rsync -rvztPhe ssh /home/luciano/code/erpnet-widget-resource/resources/views/unversioned/home.blade.php 104.197.251.61:code/funny-joke-v2/resources/views/vendor/erpnetWidgetResource/unversioned/home.blade.php
rsync -rvztPhe ssh /home/luciano/code/erpnet-widget-resource/resources/views/unversioned/navbar.blade.php 104.197.251.61:code/funny-joke-v2/resources/views/vendor/erpnetWidgetResource/unversioned/navbar.blade.php
rsync -rvztPhe ssh /home/luciano/code/erpnet-widget-resource/resources/views/unversioned/show.blade.php 104.197.251.61:code/funny-joke-v2/resources/views/vendor/erpnetWidgetResource/unversioned/show.blade.php

rsync -rvztPhe ssh /home/luciano/code/funny-joke-v2/.env.production 104.197.251.61:code/funny-joke-v2/.env

php artisan vendor:publish --provider="ErpNET\Migrates\Providers\ErpnetMigratesServiceProvider" --force

[![Build Status](https://travis-ci.org/laravel/framework.svg)](https://travis-ci.org/laravel/framework)
[![Total Downloads](https://poser.pugx.org/laravel/framework/d/total.svg)](https://packagist.org/packages/laravel/framework)
[![Latest Stable Version](https://poser.pugx.org/laravel/framework/v/stable.svg)](https://packagist.org/packages/laravel/framework)
[![Latest Unstable Version](https://poser.pugx.org/laravel/framework/v/unstable.svg)](https://packagist.org/packages/laravel/framework)
[![License](https://poser.pugx.org/laravel/framework/license.svg)](https://packagist.org/packages/laravel/framework)

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as authentication, routing, sessions, queueing, and caching.

Laravel is accessible, yet powerful, providing tools needed for large, robust applications. A superb inversion of control container, expressive migration system, and tightly integrated unit testing support give you the tools you need to build any application with which you are tasked.

## Official Documentation

Documentation for the framework can be found on the [Laravel website](http://laravel.com/docs).

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](http://laravel.com/docs/contributions).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell at taylor@laravel.com. All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).
