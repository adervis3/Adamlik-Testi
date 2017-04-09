<?php
/**
 * Created by PhpStorm.
 * User: erkan
 * Date: 06.04.2017
 * Time: 03:21
 *
 * Kullanıcının belli bir soruya verdiği yanıtı tutan nesnenin modeli
 */

namespace AdamlikTesti;


class Answer
{
    private $answerId;
    private $userId;
    private $questionId;
    private $firstOption;
    private $secondOption;

    /**
     * Answer constructor.
     * @param $answerId
     * @param $userId
     * @param $questionId
     * @param $firstOption
     * @param $secondOption
     */
    public function __construct($answerId, $userId, $questionId, $firstOption, $secondOption)
    {
        $this->answerId = $answerId;
        $this->userId = $userId;
        $this->questionId = $questionId;
        $this->firstOption = $firstOption;
        $this->secondOption = $secondOption;
    }


}