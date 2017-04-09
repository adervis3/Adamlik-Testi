<?php
/**
 * Created by PhpStorm.
 * User: erkan
 * Date: 06.04.2017
 * Time: 03:19
 *
 * Proje yöneticisi nesnesini tutan model
 */

namespace AdamlikTesti;


class ProjectManager
{
    private $projectManagerId;
    private $userId;
    private $nameSurname;
    private $mail;
    private $isCeo; //Proje yöneticisinin üstü CEO'dur. CEO ataması veritabanı üzerinde manuel yapılacak.
    private $sifre;

    public function __construct($projectManagerId, $nameSurname, $mail, $isCeo, $sifre)
    {
        $this->projectManagerId = $projectManagerId;
        $this->nameSurname = $nameSurname;
        $this->mail = $mail;
        $this->isCeo = $isCeo;
        $this->sifre = $sifre;
    }


}
