<?php
/**
 * Created by PhpStorm.
 * User: erkan
 * Date: 05.04.2017
 * Time: 00:24
 *
 * Kullanıcı nesnelerini temsil eden model
 */

namespace AdamlikTesti;


class User
{
    private $userId;
    private $nameSurname;
    private $mail;
    private $projectManagerId;

    /**
     * User constructor.
     * @param $userId
     * @param $nameSurname
     * @param $mail
     * @param $projectManagerId
     */
    public function __construct($userId, $nameSurname, $mail, $projectManagerId)
    {
        $this->userId = $userId;
        $this->nameSurname = $nameSurname;
        $this->mail = $mail;
        $this->projectManagerId = $projectManagerId;
    } //Her kullanıcı kayıt olurken bir proje yöneticisi seçmek zorunda.
}
