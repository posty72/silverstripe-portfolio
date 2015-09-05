<?php

class Website extends DataObject {

	public static $db = array(
		'Title' => 'Varchar',
		'Date' => 'Date',
		'Link' => 'Varchar',
		'Company' => 'Varchar',
		'GithubLink' => 'Varchar',
		'Content' => 'HTMLText',
		'SortID' => 'Int'
		);

	public static $has_one = array(
		'Image' => 'Image',
		'ParentPage' => 'Portfolio'
		);
	
	static $summary_fields = array(
	);

	static $default_sort = 'SortID';

	function getWebsite () {
      if($this->isAjax) { 
         return $this->renderWith("Website"); 
      } 
      else { 
         return Array(); 
      } 
   }

	function getCMSFields() {

		$fields = new FieldList(
			new TextField('Title', 'Title'),
			new DateField('Date', 'Enter a date'),
			new TextField('Link', 'Link'),
			new TextField('Company', 'Company'),
			new TextField('GithubLink', 'Link to project on Github'),
			new UploadField('Image', 'Image'),
			new HTMLEditorField('Content', 'Content')
		);

		return $fields;

	}

} 