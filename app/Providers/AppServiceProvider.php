<?php

namespace App\Providers;

use ErpNET\Migrates\Providers\ErpnetMigratesServiceProvider;
use ErpNET\Models\Providers\ErpnetModelsServiceProvider;
use ErpNET\SocialAuth\Providers\ErpnetSocialAuthServiceProvider;
use ErpNET\WidgetResource\Providers\ErpnetWidgetResourceServiceProvider;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        \App\Entities\PostEloquent::saving(function (\App\Entities\PostEloquent $post) {
            $post->titleSlug = str_slug($post->title);
            return true;
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        setlocale(LC_TIME, 'pt_BR.utf8');

        if (class_exists(ErpnetMigratesServiceProvider::class))
            $this->app->register(ErpnetMigratesServiceProvider::class);

        if (class_exists(ErpnetModelsServiceProvider::class))
            $this->app->register(ErpnetModelsServiceProvider::class);

        if (class_exists(ErpnetWidgetResourceServiceProvider::class))
            $this->app->register(ErpnetWidgetResourceServiceProvider::class);

        if (class_exists(ErpnetSocialAuthServiceProvider::class))
            $this->app->register(ErpnetSocialAuthServiceProvider::class);

        $this->app->bind(\ErpNET\Models\v1\Controllers\PostController::class, \App\Http\Controllers\PostController::class);
        $this->app->bind(\ErpNET\Models\v1\Entities\PostEloquent::class, \App\Entities\PostEloquent::class);
    }
}
