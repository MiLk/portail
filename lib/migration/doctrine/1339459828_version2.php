<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version2 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->createForeignKey('membres_services', 'membres_services_membre_sf_guard_user_id', array(
             'name' => 'membres_services_membre_sf_guard_user_id',
             'local' => 'membre',
             'foreign' => 'id',
             'foreignTable' => 'sf_guard_user',
             ));
        $this->createForeignKey('membres_services', 'membres_services_service_services_id', array(
             'name' => 'membres_services_service_services_id',
             'local' => 'service',
             'foreign' => 'id',
             'foreignTable' => 'services',
             ));
        $this->addIndex('membres_services', 'membres_services_membre', array(
             'fields' => 
             array(
              0 => 'membre',
             ),
             ));
        $this->addIndex('membres_services', 'membres_services_service', array(
             'fields' => 
             array(
              0 => 'service',
             ),
             ));
    }

    public function down()
    {
        $this->dropForeignKey('membres_services', 'membres_services_membre_sf_guard_user_id');
        $this->dropForeignKey('membres_services', 'membres_services_service_services_id');
        $this->removeIndex('membres_services', 'membres_services_membre', array(
             'fields' => 
             array(
              0 => 'membre',
             ),
             ));
        $this->removeIndex('membres_services', 'membres_services_service', array(
             'fields' => 
             array(
              0 => 'service',
             ),
             ));
    }
}