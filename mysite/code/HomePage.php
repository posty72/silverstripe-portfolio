<?php


class HomePage extends SiteTree {

	public static $db = array(
		);

	public static $has_one = array(
		'Image' => 'Image'
		);

	public static $has_many = array(
		);

	public static $allowed_children = array(
		'none'
		);

	function getCMSFields() {

		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', new UploadField('Image', 'Callout Image'), 'Content');

		return $fields;
	}
}

class HomePage_Controller extends Page_Controller {
   
	public static $allowed_actions = array (
	);
	
	function init() {
		parent::init();
	}

	public function LatestBlog($num=1) {

		$holder = BlogHolder::get()->First();
		return ($holder) ? BlogEntry::get()->filter('ParentID', $holder->ID)->sort('Date DESC')->limit($num) : false;

	}

	public function LatestWebsite($num=1) {

		$website = Website::get()->First();
		return ($website) ? Website::get()->sort('Date DESC')->limit($num) : false;
	}
}