<?php
/**
 * Created by PhpStorm.
 * User: erkan
 * Date: 05.04.2017
 * Time: 00:14
 *
 * Soruları temsil eden model
 */

namespace AdamlikTesti;


class Question
{
    private $questionId;
    private $questionText;

    /**
     * Question constructor.
     * @param $questionId
     * @param $questionText
     */
    public function __construct($questionId, $questionText)
    {
        $this->questionId = $questionId;
        $this->questionText = $questionText;
    }

}