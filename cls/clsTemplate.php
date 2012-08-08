<?php

class clsTemplate
{
	private $strTemplateFolder;
	private $strTemplateSuffix = '.html';

	private $strFilename;
	private $arrReplacements = array();

	private $strReplaceBefore = '%%%';
	private $strReplaceAfter = '%%%';

	public function __construct($strTemplateName, $strTemplateFolder = 'templates/')
	{
		$strFilename = $strTemplateFolder . $strTemplateName . $this->strTemplateSuffix;

		if(!file_exists($strFilename))
			throw new Exception("No such template: $strFilename");

		$this->strFilename = $strFilename;
		$this->strTemplateFolder = $strTemplateFolder;
	}

	public function set($strName, $strData)
	{
		if(isset($this->arrReplacements[$strName]))
			$this->arrReplacements[$strName] .= "\n$strData";
		else
			$this->arrReplacements[$strName] = $strData;
	}

	public function get()
	{
		$strFile = file_get_contents($this->strFilename);

		if(!$strFile)
			throw new Exception("Unable to open template file: " . $this->strFileName);

		foreach($this->arrReplacements as $key=>$value)
		{
			$strToReplace = $this->strReplaceBefore . $key . $this->strReplaceAfter;

			$strFile = str_replace($strToReplace, $value, $strFile);
		}

		/* Search for page references */
		$strFile = preg_replace('/%%%PAGE:([a-zA-Z0-9]*?)%%%/', 'index.php?page=$1', $strFile);

		/* Replace any left-over tags that they didn't fill out */
		$strFile = preg_replace('/%%%[a-zA-Z0-9]*?%%%/', '', $strFile);

		return $strFile;
	}
}

?>
