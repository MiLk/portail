<fieldset>
  <legend id='legende_salle'>
    <?php if ($salle)
    { 
      echo $salle->getName() ;
      echo "<p>Capacite : ". $salle->getCapacite() ." personnes<p/>";
      echo "<p>". nl2br($salle->getDescription()) ."</p>"; 
    }
    else 
      echo "Salles"; ?>
  </legend>
      <select id="selectSalle">
        <option value="<?php echo url_for('@reservation') ?>">Toutes les salles</option>
        <?php $lastIdPole = -1 ?>
        <?php foreach ($sallesUser as $salle): ?>

            <?php if ($lastIdPole != $salle->getPole()->getId()): ?>
          
              <option disabled>-----<?php echo $salle->getPole() ?>-----</option>
          
            <?php endif ?>
          
            <?php if ($salle->getID() == $idSalle) : ?>
              <option selected="true" value="<?php echo url_for('@reservation_salle?id='.$salle->getID()) ?>"><?php echo $salle->getName() ?></option>
            <?php else : ?>
              <option value="<?php echo url_for('@reservation_salle?id='.$salle->getID()) ?>"><?php echo $salle->getName() ?></option>
            <?php endif ?>

            <?php $lastIdPole = $salle->getPole()->getId() ?>
  
        <?php endforeach ?>
      </select>
</fieldset>
