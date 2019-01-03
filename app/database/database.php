<?php
require_once('conn.php');

class Database{

    static $dbh;
    static $queryCount = 0;

    public function __construct($host, $dbname, $user, $password) {
        self::$dbh = Conn::getConnection($host, $dbname, $user, $password);
       //  var_dump(self::$dbh);
    }

    public static function getQuery($query, $parameters = array()) {
        try {
            $statement = self::$dbh->prepare($query);
            $statement->execute($parameters);
            $statement->setFetchMode(PDO::FETCH_ASSOC);
            $result = $statement->fetchAll();
            self::$queryCount += 1;
            return $result;
        } catch(Exception $e) {
            die($e->getMessage());
        }
    }
	
    public static function executeQuery($query, $parameters = array()) {
        try {
            $statement = self::$dbh->prepare($query);
            $statement->execute($parameters);
            $statement->setFetchMode(PDO::FETCH_ASSOC);
			$statement->closeCursor();
        } catch(Exception $e) {
            die($e->getMessage());
        }
    }
	
	public static function executeQueryBind($query, $id, $firstEntry, $ParameterValue) {
		try {
			$statement = self::$dbh->prepare($query);
			$statement->bindValue(':id', (int)$id, PDO::PARAM_INT);
			$statement->bindValue(':firstEntry', (int)$firstEntry, PDO::PARAM_INT);
			$statement->bindValue(':paramaterValue', (int)$ParameterValue, PDO::PARAM_INT);
			$statement->execute();
			$statement->setFetchMode(PDO::FETCH_ASSOC);
			$result = $statement->fetchAll();
			self::$queryCount += 1;
			return $result;
		} catch(Exception $e) {
			die($e->getMessage());
		}
	}
	
}