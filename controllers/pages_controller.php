<?php

class PagesController extends FrontendController
{
    public $helpers = array('BeFront');
    public $uses = array() ;

    /**
     * Load common data for all frontend pages
     */
    protected function beditaBeforeFilter() {
        $this->set('feedNames', $this->Section->feedsAvailable(Configure::read('frontendAreaId')));
        $this->set('fullTree', $this->loadSectionsTree(Configure::read('frontendAreaId'), true));

        $links = $this->BeTree->getChildren(Configure::read('frontendAreaId'), null, array(
            'object_type_id' => Configure::read('objectTypes.link.id'),
        ));
        $this->set('footerLinks', ClassRegistry::init('Link')->find('all', array(
            'conditions' => array('BEObject.id' => Set::classicExtract($links, 'items.{n}.id')),
        )));
    }
}
