<?php

require_once('cls/clsDB.php');

class clsUser extends clsDB
{
	public function __construct()
	{
		parent::__construct('campaign');
	}

	public function getMyCampaignsTable($objUser)
	{
		$tblCampaign     = $this->toTableName('campaign');
		$tblCampaignUser = $this->toTableName('campaignuser');
		$tblUser         = $this->toTableName('user');

		$strCampaignID   = $this->to

		$query = "SELECT * FROM `$tblCampaign`
					INNER JONI `$tblCampaignUser` ON ".
		$objMyTable = new clsDBFancyTable('campaign', 'Create Campaign', );

	}

	public function getAllCampaignsTable()
	{
	}
}



?>
