<?php
	
	require_once('cls/clsOverlib.php');
	require_once('cls/clsRPMenu.php');
	require_once('cls/clsTemplate.php');
	require_once('cls/clsUser.php');

	session_start();

	$arrAllowedAnonymous = array('login'=>true, 'create'=>true, 'faq'=>true, 'about'=>true);
	$strDefaultAnonymous = 'login';

	if(!isset($_REQUEST['page']))
		$page = '';
	else
		$page = $_REQUEST['page'];

	if(!isset($_SESSION['objUser']))
	{
		if(!isset($arrAllowedAnonymous[$page]) || !$arrAllowedAnonymous[$page])
			$page = 'login';

		$objUser = null;
	}
	else
	{
		$objUser = $_SESSION['objUser'];
	}

	if(!preg_match('/^[a-zA-Z0-9_-]*$/', $page))
		throw new Exception("Invalid page");


	switch($page)
	{
		case '':
		case 'default':
			require('pages/default.php');
		break;

		case 'login':
			require('pages/login.php');
		break;

		case 'create':
			require('pages/create.php');
		break;

		case 'logout':
			require('pages/logout.php');
		break;

		case 'campaigns':
			require('pages/campaigns.php');
		break;

		default:
			$objTemplate = new clsTemplate('error');
			$objTemplate->set('HEAD', clsOverlib::initialize());
			$objTemplate->set('BODY', clsOverlib::initialize2());
			$objTemplate->set('MENU', clsRPMenu::get());
			$objTemplate->set('MESSAGE', 'Unknown page');
			echo $objTemplate->get();
		break;
	}

?>
