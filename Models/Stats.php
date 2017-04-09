<?php
/**
 * Created by PhpStorm.
 * User: erkan
 * Date: 06.04.2017
 * Time: 03:20
 *
 * Kullanıcının verdiği cevapların istatistiğini tutan model
 */

namespace AdamlikTesti;


class Stats
{
    private $statsId;
    private $userId;
    private $aPoint;
    private $bPoint;
    private $cPoint;
    private $dPoint;

    /**
     * Stats constructor.
     * @param $statsId
     * @param $userId
     * @param $aPoint
     * @param $bPoint
     * @param $cPoint
     * @param $dPoint
     */
    public function __construct($statsId, $userId, $aPoint, $bPoint, $cPoint, $dPoint)
    {
        $this->statsId = $statsId;
        $this->userId = $userId;
        $this->aPoint = $aPoint;
        $this->bPoint = $bPoint;
        $this->cPoint = $cPoint;
        $this->dPoint = $dPoint;
    }
}