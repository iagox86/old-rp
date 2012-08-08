<?php

	require_once('cls/clsDB.php');
	require_once('cls/clsOverlib.php');
	require_once('cls/clsRPMenu.php');
	require_once('cls/clsTemplate.php');
	require_once('cls/clsUser.php');

	$objTemplate = new clsTemplate('create');

	$objTemplate->set('SCRIPT', clsDB::initializeJS());
	$objTemplate->set('HEAD', clsOverlib::initialize());
	$objTemplate->set('BODY', clsOverlib::initialize2());
	$objTemplate->set('MENU', clsRPMenu::get());

	$objUser = new clsUser();
	$objUser->getFromRequest();

	if($objUser->exists('name'))
	{
		$result = $objUser->attemptCreate();

		if(is_object($result))
		{
			$objUser = $result;
			$objUser->set("last_login", time());
			$objUser->save();

			$_SESSION['objUser'] = $objUser;
			header("Location: index.php");
			exit;
		}
		else
		{
			$objTemplate->set("MESSAGE", $result);
		}
	}

	$objTemplate->set("USERNAME", $objUser->getTextField('name'));
	$objTemplate->set("PASSWORD1", $objUser->getPasswordField('password1'));
	$objTemplate->set("PASSWORD2", $objUser->getPasswordField('password2'));
	$objTemplate->set("SUBMIT", clsDB::getSubmit("Login"));

	echo $objTemplate->get();



?>
