<?php


class Portfolio extends SiteTree {

	public static $db = array(
		);

	public static $has_many = array(
		'Websites' => 'Website'
		);

	static $allowed_children = array(
		'none');

	function getCMSFields() {

		$fields = parent::getCMSFields();

		// products GridField config
		$WebsiteConfig = GridFieldConfig::create()->addComponents(
			new GridFieldToolbarHeader(),
			new GridFieldSortableHeader(),      
			new GridFieldAddNewButton('toolbar-header-right'),
			new GridFieldDataColumns(),
			new GridFieldPaginator(20),
			new GridFieldEditButton(),
			new GridFieldDeleteAction(),
			new GridFieldDetailForm(),
			new GridFieldSortableRows('SortID')
		);
		
		// team members tab
		$Website = new GridField("Websites", "Websites", $this->Websites(), $WebsiteConfig);
		$fields->addFieldToTab("Root.Websites", $Website);

		return $fields;
	}
}

class Portfolio_Controller extends Page_Controller {
   
	public static $allowed_actions = array (
	);
	
	function init() {
		parent::init();
	}

}