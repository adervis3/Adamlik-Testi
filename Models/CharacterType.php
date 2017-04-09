<?php
/**
 * Created by PhpStorm.
 * User: erkan
 * Date: 06.04.2017
 * Time: 03:13
 *
 * Karakter tiplerini temsil edecek model
 */

namespace AdamlikTesti;


class CharacterType
{
    private $characterId;
    private $characterColor;
    private $characterTypeName;

    /**
     * CharacterType constructor.
     * @param $characterId
     * @param $characterColor
     * @param $characterTypeName
     */
    public function __construct($characterId, $characterColor, $characterTypeName)
    {
        $this->characterId = $characterId;
        $this->characterColor = $characterColor;
        $this->characterTypeName = $characterTypeName;
    }
}