<?php

	/** This class creates the menu-bar along the top of the screen (commonly seen in 
	 * programs, with the File, Edit, etc.  
	 */
	require_once('cls/clsMenu.php');
	require_once('cls/clsParameters.php');

	class clsRPMenu
	{
		public function __construct()
		{
		}

		public static function get()
		{
			$blnLoggedIn = isset($_SESSION['objUser']);

			if(!$blnLoggedIn)
				$strMenu = clsRPMenu::getNotLoggedIn();
			else
				$strMenu = clsRPMenu::getLoggedIn();

			return $strMenu . "<hr>";
		}

		private static function getNotLoggedIn()
		{
			$objActions = new clsMenu('Actions');
			$objActions->addElement('Log in', 'index.php?page=login');
			$objActions->addElement('Create an Account', 'index.php?page=create');

			$objHelp = new clsMenu('Help');
			$objHelp->addElement('FAQ',       'index.php?page=faq');
			$objHelp->addElement('About',     'index.php?page=about');

			$html = "\n";
			$html .= "<table class='rpmenu_table'>\n";
			$html .= "	<tr class='rpmenu_cell'>\n";
			$html .= 		clsRPMenu::getCell('Actions', $objActions); 
			$html .= 		clsRPMenu::getCell('Help', $objHelp);
			$html .= 		clsRPMenu::getPaddingCell();
			$html .= "	</tr>\n";
			$html .= "</table>\n";

			return $html;
		}

		private static function getPaddingCell()
		{
			return "		<td class='rpmenu_paddingcell'>&nbsp;</td>\n";
		}
	
		private static function getLoggedIn()
		{
			$objActions = new clsMenu('Actions');
			$objActions->addElement('View Campaigns',    'index.php?page=campaigns');
			$objActions->addElement('Create an Account', 'index.php?page=create');
			$objActions->addSeparator();
			$objActions->addElement('Log out',           'index.php?page=logout');

			$objHelp = new clsMenu('Help');
			$objHelp->addElement('FAQ',       'index.php?page=faq');
			$objHelp->addElement('About',     'index.php?page=about');

			$html = "\n";
			$html .= "<table class='rpmenu_table'>\n";
			$html .= "	<tr class='rpmenu_cell'>\n";
			$html .= 		clsRPMenu::getCell('Actions', $objActions); 
			$html .= 		clsRPMenu::getCell('Help', $objHelp);
			$html .= 		clsRPMenu::getPaddingCell();
			$html .= "	</tr>\n";
			$html .= "</table>\n";

			return $html;
		}

		private static function getCell($strName, $objMenu)
		{
			$objParams = new clsParameters();
			$objParams->add('class', 'rpmenu_cell');

			$objParams->add('onMouseOver', "this.className='rpmenu_cell_rollover';");
			$objParams->add('onMouseOver', $objMenu->getMouseOverQuotes());

			$objParams->add('onMouseOut', "this.className='rpmenu_cell'");
			$objParams->add('onMouseOut', $objMenu->getMouseOut());

			return "		<td ".$objParams->get().">$strName</td>\n";
		}
	}

?>
