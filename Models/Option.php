<?php
/**
 * Created by PhpStorm.
 * User: erkan
 * Date: 05.04.2017
 * Time: 00:22
 *
 * Sorulara ait yanıt nesnelerine ait model
 */

namespace AdamlikTesti;


class Option
{
    private $optionId;
    private $questionId;
    private $optionText;
    private $characterTypeId;

    /**
     * Option constructor.
     * @param $optionId
     * @param $questionId
     * @param $optionText
     * @param $characterTypeId
     */
    public function __construct($optionId, $questionId, $optionText, $characterTypeId)
    {
        $this->optionId = $optionId;
        $this->questionId = $questionId;
        $this->optionText = $optionText;
        $this->characterTypeId = $characterTypeId;
    }
}