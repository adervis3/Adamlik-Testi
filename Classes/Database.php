<?php
/**
 * Created by PhpStorm.
 * User: erkan
 * Date: 11.04.2017
 * Time: 13:24
 *
 * Singleton tasarım modeliyle gerçekleştirilen veritabanı sınıfı
 */

namespace AdamlikTesti;

class Database
{
    private $connectionString;
    private $instance;

    private function __construct()
    {
    }

    public Database GetInstance()
    {
        if($instance==null)
          $instance=new Database();

        return $instance;
    }
}
