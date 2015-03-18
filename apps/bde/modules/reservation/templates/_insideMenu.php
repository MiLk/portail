<?php use_stylesheet("reservation.css") ?>

<ul id="menuBde">
  <?php if ($param == "salle"): ?>
  <li><a class="active" href="<?php echo url_for('reservation_salle') ?>">Gestion des salles</a></li>
  <?php else: ?>
  <li><a href="<?php echo url_for('reservation_salle') ?>">Gestion des salles</a></li>
  <?php endif; ?>
  
  <?php if ($param == "creneauoff"): ?>
  <li><a class="active" href="<?php echo url_for('reservation_creneauoff') ?>">Gestion des Creneaux Off</a></li>
  <?php else: ?>
  <li><a href="<?php echo url_for('reservation_creneauoff') ?>">Gestion des Creneaux Off</a></li>
  <?php endif; ?>
  
  <?php if ($param == "validation"): ?>
  <li><a class="active" href="<?php echo url_for('reservation_validation') ?>">Validation des reservations</a></li>
  <?php else: ?>
  <li><a href="<?php echo url_for('reservation_validation') ?>">Validation des reservations</a></li>
  <?php endif; ?>
  
  <?php if ($param == "gestion"): ?>
  <li><a class="active" href="<?php echo url_for('reservation_gestion') ?>">Gestion des reservations</a></li>
  <?php else: ?>
  <li><a href="<?php echo url_for('reservation_gestion') ?>">Gestion des reservations</a></li>
  <?php endif; ?>

  <?php if ($param == "statistiques"): ?>
  <li><a class="active" href="<?php echo url_for('reservation_statistiques') ?>">Statistiques</a></li>
  <?php else: ?>
  <li><a href="<?php echo url_for('reservation_statistiques') ?>">Statistiques</a></li>
  <?php endif; ?>
  
</ul>


