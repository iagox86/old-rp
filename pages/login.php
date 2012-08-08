<?php

	require_once('cls/clsDB.php');
	require_once('cls/clsOverlib.php');
	require_once('cls/clsRPMenu.php');
	require_once('cls/clsTemplate.php');
	require_once('cls/clsUser.php');

	$objTemplate = new clsTemplate('login');

	$objTemplate->set('HEAD', clsOverlib::initialize());
	$objTemplate->set('BODY', clsOverlib::initialize2());
	$objTemplate->set('MENU', clsRPMenu::get());

	$objUser = new clsUser();
	$objUser->getFromRequest();

	if($objUser->exists('name'))
	{
		if($objUser->verify())
		{
			$objUser->set("last_login", time());
			$objUser->save();

			$_SESSION['objUser'] = $objUser;
			header("Location: index.php");
			exit;
		}
		else
		{
			$objTemplate->set("MESSAGE", "Incorrect username or password");
		}
	}

	$objTemplate->set("USERNAME", $objUser->getTextField('name'));
	$objTemplate->set("PASSWORD", $objUser->getPasswordField('password'));
	$objTemplate->set("SUBMIT", clsDB::getSubmit('Login', null, false));

	echo $objTemplate->get();



?>
