<?php

class PagesController extends FrontendController
{
    public $helpers = array('BeFront', 'FqSet');
    public $uses = array('Link');

    /**
     * Initialization hooks.
     */
    public function __construct() {
        // Remove unused Session component, and avoid troubles with cookies within the EU.
        if (in_array('Session', $this->components)) {
            unset($this->components[array_search('Session', $this->components)]);
        }

        parent::__construct();
    }

    /**
     * Load common data for all frontend pages
     */
    protected function beditaBeforeFilter() {
        $areaId = Configure::read('frontendAreaId');
        $linkOT = Configure::read('objectTypes.link.id');


        // Available feeds.
        $feedNames = $this->Section->feedsAvailable($areaId);

        // Get full tree info.
        $fullTree = $this->loadSectionsTree($areaId, 3);

        // Footer links.
        $footerLinks = $this->Link->find('all', array(
            'conditions' => array(
                'BEObject.id' => Set::classicExtract($this->BeTree->getChildren($areaId, null, array('object_type_id' => $linkOT)), 'items.{n}.id'),
            ),
        ));

        // Set view variables.
        $this->set(compact('feedNames', 'fullTree', 'footerLinks', 'galleriesIds'));
    }

    /**
     * BEdita <= 3.5.1 compatibility.
     */
    public function homePage() {
        $this->render('home_page');
    }
}
