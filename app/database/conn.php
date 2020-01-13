<?php
class Conn{	
  protected static $db;
	protected static $host;
	protected static $dbname;
	protected static $user;
	protected static $password;
	
    private function __construct($host, $dbname, $user, $password) {
        try {
            self::$db = new PDO(
                    'mysql:host='. $host .';dbname='. $dbname, 
                    $user, 
                    $password, 
                    array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8')
               );

            self::$db->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
        }
        catch (PDOException $e) {
            die("Nous revenons.");
        }
    }

    public static function getConnection($host, $dbname, $user, $password) {
        if (!self::$db) {
            new Conn($host, $dbname, $user, $password);
        }
        return self::$db;
    }

    public static function closeConnection() {
        $db=null;
    }
}