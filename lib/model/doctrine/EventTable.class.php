<?php

/**
 * EventTable
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class EventTable extends Doctrine_Table
{

  /**
   * Returns an instance of this class.
   *
   * @return object EventTable
   */
  public static function getInstance()
  {
    return Doctrine_Core::getTable('Event');
  }

  /**
   * 
   * Fetch the list of all events sorted by date.
   * 
   * @param int $asso_id
   */
  public function getEventsList($asso = null)
  {
    $q = $this->createQuery('a')
            ->select('a.*, as.id, p.couleur')
            ->leftJoin('a.Asso as')
            ->leftJoin('as.Pole p')
            ->addOrderBy('a.created_at DESC');

    if(!is_null($asso))
    {
    /* if($asso->isPole())
      $q = $q->leftJoin('Asso as')->where("as.pole_id = ?",$asso->getPrimaryKey());
      else */
      $q = $q->where("a.asso_id = ?", $asso->getPrimaryKey());
      if($asso->getLogin() == 'picasso')
        $q = $q->orWhere('a.type_id = ?',2);
    }

    return $q;
  }

  /**
   * 
   * Fetch the list of all events in future.
   *  
   */
  public function getFutureEventsList()
  {
    $q = $this->createQuery('a')
            ->addOrderBy('a.start_date ASC');
    $q = $q->where("a.end_date > NOW()");

    return $q;
  }

  public function getLastEvents($count = 3)
  {
    $q = $this->getEventsList()
            ->limit($count);
    return $q;
  }

  public function getEventsFollowed($user_id){
  $q = $this->createQuery('ev')
        ->select ('as.name, ev.*')
        ->where('ev.asso_id = as.id')
        ->andWhere('ab.user_id = ?', $user_id)
        ->leftJoin('ev.Asso as')
        ->leftJoin('as.Abonnement ab')
        ->orderBy('ev.updated_at desc')
        ->limit(3);            
  return $q;
  }
}
