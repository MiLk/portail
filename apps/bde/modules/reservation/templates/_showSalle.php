<p><b>Nom</b> : <?php echo $salle->getName() ?></p>
<p><b>Capacite</b> : <?php echo $salle->getCapacite() ?></p>
<p style="color:#<?php echo $salle->getCouleur() ?>"><b>Couleur</b> : <?php echo $salle->getCouleur() ?></p>
<p><b>Description</b> :<br /> <?php echo nl2br($salle->getDescription()) ?></p>
<p><b>Pole</b> : <?php echo $salle->getPole() ?></p>
