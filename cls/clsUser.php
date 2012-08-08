<?php

require_once('cls/clsDB.php');

class clsUser extends clsDB
{
	public function __construct()
	{
		parent::__construct('user');
	}

	/** Checks if the data loaded in this object matches anything from 
	 *  the database. */
	public function verify()
	{
		$name = $this->get('name');
		$password = $this->get('password');

		$arrResults = $this->simpleSelectQuery('`' . $this->toStoredName('name') . "` = '$name'");
		if(sizeof($arrResults) == 0)
			return false; // Username wasn't found 

		$arrResult = $arrResults[0];

		$rightPassword = $arrResult['password'];
		$salt = $arrResult['password_salt'];

		return md5($password . $salt) == $rightPassword;
	}

	/** Returns the new user object on success, or an error message (string) otherwise.  To check the
	 * return value properly, use is_string or is_object.  */
	public function attemptCreate()
	{
		$name = $this->get('name');
		$password1 = $this->get('password1');
		$password2 = $this->get('password2');

		if($password1 != $password2)
			return "Passwords don't match.";

		if($password1 == '')
			return "Please don't use a blank password.";

		$arrDuplicates = $this->simpleSelectQuery('`' . $this->toStoredName('name') . "` = '$name'");
		if(sizeof($arrDuplicates) > 0)
			return "Username is already in use.";

		$strSalt = "salt" . time(); /* Salt doesn't have to be random, just different every time. */
		$objNewUser = new clsDB('user');
		$objNewUser->set('name', $name, false);
		$objNewUser->set('password', md5($this->get('password1') . $strSalt));
		$objNewUser->set('password_salt', $strSalt);
		$objNewUser->set('created', time());
		$objNewUser->save();

		return $objNewUser;
	}

}



?>
