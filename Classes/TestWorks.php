<?php
/**
 * Created by PhpStorm.
 * User: erkan
 * Date: 11.04.2017
 * Time: 13:24
 *
 * Test sırasında soru almaya ve cevapları veritabanına kaydetmeye yarayan sınıf.
 */

namespace AdamlikTesti;

class TestWorks
{
    public function __construct()
    {
    }

    public Question GetQuestion($questionId)
    {
      try
      {
        //işlem burada yapılacak.
        //return işlemi de burada.
      } catch (Exception $e) {
        echo $e->getMessage();
      }
    }

    public void PostQuestionAnswer($userId, $questionId, $firstOption, $secondOption)
    {
      
    }
}
