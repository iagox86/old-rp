<?php

	require_once('cls/clsDB.php');
	require_once('cls/clsOverlib.php');
	require_once('cls/clsRPMenu.php');
	require_once('cls/clsTemplate.php');

	$objTemplate = new clsTemplate('default');

	$objTemplate->set('SCRIPT', clsDB::initializeJS());

	$objTemplate->set('HEAD', clsOverlib::initialize());
	$objTemplate->set('BODY', clsOverlib::initialize2());
	$objTemplate->set('MENU', clsRPMenu::get());
	$objTemplate->set('MESSAGE', '');

	$objTemplate->set('USERNAME', $objUser->get('name'));

	echo $objTemplate->get();

?>
