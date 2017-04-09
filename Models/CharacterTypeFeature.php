<?php
/**
 * Created by PhpStorm.
 * User: erkan
 * Date: 06.04.2017
 * Time: 03:17
 *
 * Karakter tiplerine ait özellikleri temsil eden model
 */

namespace AdamlikTesti;


class CharacterTypeFeature
{
    private $featureId;
    private $characterTypeId;
    private $featureText;

    /**
     * CharacterTypeFeature constructor.
     * @param $featureId
     * @param $characterTypeId
     * @param $featureText
     */
    public function __construct($featureId, $characterTypeId, $featureText)
    {
        $this->featureId = $featureId;
        $this->characterTypeId = $characterTypeId;
        $this->featureText = $featureText;
    }
}