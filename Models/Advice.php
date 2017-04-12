<?php
/**
 * Created by PhpStorm.
 * User: erkan
 * Date: 11.04.2017
 * Time: 12:08
 *
 * Kullanıcının belli bir soruya verdiği yanıtı tutan nesnenin modeli
 */

namespace AdamlikTesti;


class Advice
{
    private $adviceId;
    private $adviceText;
    private $characterTypeId;

    public function __construct($adviceId, $adviceText,$characterTypeId)
    {
        $this->adviceId = $adviceId;
        $this->adviceText = $adviceText;
        $this->characterTypeId = $characterTypeId;
    }


}
