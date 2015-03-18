<?php
$result = array();
foreach ($reservations as $res){

  if($res->getAsso()->getId()) 
    $title = $res->getAsso()->getName();
  else
    $title = $res->getUserReserve()->getUsername();

  $asso = $res->getAsso();
  $result[] = array(
    "id" => ($res->getId()),
    "title" => $title,
    "allDay" => $res->getAllday(),
    "start" => strtotime($res->getDate() . " " . $res->getheuredebut()),
    "end" => strtotime($res->getDate() . " " . $res->getheurefin()),
    "color" => "#" . $res->getSalle()->getCouleur(),
    "url" => url_for('reservation_gestion_id',array('id'=>$res->getId())),
    "className" => (!$res->getEstvalide()) ? 'opacity' : ''
  );
}
echo json_encode($result);
?>
