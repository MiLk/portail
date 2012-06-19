CREATE TABLE abonnement (id BIGINT AUTO_INCREMENT, user_id BIGINT NOT NULL, asso_id BIGINT, type_publication BIGINT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX asso_id_idx (asso_id), INDEX user_id_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE activation (id BIGINT AUTO_INCREMENT, user_id BIGINT, activation_key TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
<<<<<<< HEAD
CREATE TABLE album (id BIGINT AUTO_INCREMENT, name VARCHAR(50), location VARCHAR(100), visibility BIGINT, asso_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX asso_id_idx (asso_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
=======
CREATE TABLE annonce (id BIGINT AUTO_INCREMENT, categorie_id BIGINT NOT NULL, titre VARCHAR(250) NOT NULL, texte TEXT NOT NULL, offre TINYINT(1) DEFAULT '1' NOT NULL, ville TEXT, prix FLOAT(18, 2) DEFAULT 0 NOT NULL, departement_id BIGINT, branche_id BIGINT, debut DATETIME, fin DATETIME, user_id BIGINT, email VARCHAR(100), password VARCHAR(32), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX categorie_id_idx (categorie_id), INDEX departement_id_idx (departement_id), INDEX branche_id_idx (branche_id), INDEX user_id_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE annonces_categorie (id BIGINT AUTO_INCREMENT, name VARCHAR(100) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
>>>>>>> 26ff3013cc4044e1aba25f4ae179891e3097e882
CREATE TABLE article (id BIGINT AUTO_INCREMENT, asso_id BIGINT NOT NULL, name VARCHAR(200) NOT NULL, text TEXT NOT NULL, is_weekmail TINYINT(1) DEFAULT '0', image TEXT, summary VARCHAR(150), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX asso_id_idx (asso_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE asso (id BIGINT AUTO_INCREMENT, name VARCHAR(50) NOT NULL, login VARCHAR(32) NOT NULL, pole_id BIGINT, type_id BIGINT, summary VARCHAR(150), description TEXT, logo VARCHAR(100), active TINYINT(1) DEFAULT '1' NOT NULL, passation TINYINT(1) DEFAULT '0' NOT NULL, salle VARCHAR(6), phone VARCHAR(15), facebook VARCHAR(100), joignable TINYINT(1) DEFAULT '1' NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX pole_id_idx (pole_id), INDEX type_id_idx (type_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE asso_member (id BIGINT AUTO_INCREMENT, user_id BIGINT NOT NULL, asso_id BIGINT NOT NULL, role_id BIGINT NOT NULL, semestre_id BIGINT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX asso_id_idx (asso_id), INDEX role_id_idx (role_id), INDEX user_id_idx (user_id), INDEX semestre_id_idx (semestre_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE branche (id BIGINT AUTO_INCREMENT, name VARCHAR(3), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE charte_info (id BIGINT AUTO_INCREMENT, date DATE NOT NULL, semestre_id BIGINT NOT NULL, asso_id BIGINT NOT NULL, responsable_id BIGINT NOT NULL, confirmation TINYINT(1) DEFAULT '0' NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX semestre_id_idx (semestre_id), INDEX asso_id_idx (asso_id), INDEX responsable_id_idx (responsable_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE departement (id BIGINT AUTO_INCREMENT, num SMALLINT NOT NULL, name VARCHAR(50) NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE emprunt (id BIGINT AUTO_INCREMENT, materiel_id BIGINT, user_id BIGINT, asso_id BIGINT, nombre BIGINT, recu TINYINT(1), rendu TINYINT(1), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX materiel_id_idx (materiel_id), INDEX user_id_idx (user_id), INDEX asso_id_idx (asso_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE etat (id BIGINT AUTO_INCREMENT, nom VARCHAR(100), disponible TINYINT(1), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE event (id BIGINT AUTO_INCREMENT, asso_id BIGINT NOT NULL, type_id BIGINT NOT NULL, name VARCHAR(50) NOT NULL, description TEXT NOT NULL, start_date DATETIME NOT NULL, end_date DATETIME NOT NULL, is_public TINYINT(1) DEFAULT '1', is_weekmail TINYINT(1) DEFAULT '0', place TEXT, affiche TEXT, summary VARCHAR(150), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX asso_id_idx (asso_id), INDEX type_id_idx (type_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE event_type (id BIGINT AUTO_INCREMENT, name VARCHAR(50), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE filiere (id BIGINT AUTO_INCREMENT, name VARCHAR(10), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
<<<<<<< HEAD
CREATE TABLE gallery (id BIGINT AUTO_INCREMENT, title VARCHAR(255), description TEXT, is_active TINYINT(1), private TINYINT(1) DEFAULT '0' COMMENT 'True means that this gallery has been added by the widget', created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, slug VARCHAR(255), UNIQUE INDEX gallery_sluggable_idx (slug), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE galleryne_file (id BIGINT AUTO_INCREMENT, title VARCHAR(255), description TEXT, filename VARCHAR(255), size VARCHAR(255), position INT, is_default TINYINT(1) DEFAULT '0', created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, slug VARCHAR(255), UNIQUE INDEX galleryne_file_sluggable_idx (slug), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE image (id BIGINT AUTO_INCREMENT, name VARCHAR(50), legend VARCHAR(255), album_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX album_id_idx (album_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE photos (id BIGINT AUTO_INCREMENT, title VARCHAR(255), description TEXT, filename VARCHAR(255), size VARCHAR(255), position INT, is_default TINYINT(1) DEFAULT '0', order_photo INT, gallery_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, slug VARCHAR(255), UNIQUE INDEX photos_sluggable_idx (slug), INDEX gallery_id_idx (gallery_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
=======
CREATE TABLE materiel (id BIGINT AUTO_INCREMENT, nom VARCHAR(100), asso_id BIGINT, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX asso_id_idx (asso_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
>>>>>>> 26ff3013cc4044e1aba25f4ae179891e3097e882
CREATE TABLE place (id BIGINT AUTO_INCREMENT, street TEXT, zipcode VARCHAR(10), city VARCHAR(100), country VARCHAR(100), phone VARCHAR(15), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE pole (id BIGINT AUTO_INCREMENT, asso_id BIGINT, couleur VARCHAR(7), INDEX asso_id_idx (asso_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE profile (id BIGINT AUTO_INCREMENT, user_id BIGINT, domain VARCHAR(15), nickname VARCHAR(50), birthday DATE, sexe CHAR(1), mobile VARCHAR(15), home_place BIGINT, family_place BIGINT, branche_id BIGINT, filiere_id BIGINT, semestre BIGINT, other_email TEXT, photo TEXT, weekmail TINYINT(1), autorisation_photo TINYINT(1), devise TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), INDEX home_place_idx (home_place), INDEX family_place_idx (family_place), INDEX branche_id_idx (branche_id), INDEX filiere_id_idx (filiere_id), INDEX semestre_idx (semestre), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE role (id BIGINT AUTO_INCREMENT, name VARCHAR(50), sort INT, bureau TINYINT(1) DEFAULT '0' NOT NULL, droits BIGINT DEFAULT 0 NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE semestre (id BIGINT AUTO_INCREMENT, name VARCHAR(3), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE sport (id BIGINT AUTO_INCREMENT, name VARCHAR(30) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE stock (id BIGINT AUTO_INCREMENT, materiel_id BIGINT, etat_id BIGINT DEFAULT 1 NOT NULL, nombre BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX materiel_id_idx (materiel_id), INDEX etat_id_idx (etat_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE type_asso (id BIGINT AUTO_INCREMENT, name VARCHAR(50), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
<<<<<<< HEAD
CREATE TABLE sf_guard_forgot_password (id BIGINT AUTO_INCREMENT, user_id BIGINT NOT NULL, unique_key VARCHAR(255), expires_at DATETIME NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE sf_guard_group (id BIGINT AUTO_INCREMENT, name VARCHAR(255) UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE sf_guard_group_permission (group_id BIGINT, permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(group_id, permission_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE sf_guard_permission (id BIGINT AUTO_INCREMENT, name VARCHAR(255) UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE sf_guard_remember_key (id BIGINT AUTO_INCREMENT, user_id BIGINT, remember_key VARCHAR(32), ip_address VARCHAR(50), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE sf_guard_user (id BIGINT AUTO_INCREMENT, first_name VARCHAR(255), last_name VARCHAR(255), email_address VARCHAR(255) NOT NULL UNIQUE, username VARCHAR(128) NOT NULL UNIQUE, algorithm VARCHAR(128) DEFAULT 'sha1' NOT NULL, salt VARCHAR(128), password VARCHAR(128), is_active TINYINT(1) DEFAULT '1', is_super_admin TINYINT(1) DEFAULT '0', last_login DATETIME, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX is_active_idx_idx (is_active), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE sf_guard_user_group (user_id BIGINT, group_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(user_id, group_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE sf_guard_user_permission (user_id BIGINT, permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(user_id, permission_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
=======
CREATE TABLE uv (id BIGINT AUTO_INCREMENT, code VARCHAR(4) UNIQUE, name VARCHAR(100), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE user_semestre (id BIGINT AUTO_INCREMENT, user_id BIGINT, branche_id BIGINT, num VARCHAR(4), abroad VARCHAR(30), semestre_id BIGINT, INDEX user_id_idx (user_id), INDEX branche_id_idx (branche_id), INDEX semestre_id_idx (semestre_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE user_sport (id BIGINT AUTO_INCREMENT, user_id BIGINT, sport_id BIGINT, INDEX user_id_idx (user_id), INDEX sport_id_idx (sport_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE user_uv (id BIGINT AUTO_INCREMENT, uv_id BIGINT, user_semestre_id BIGINT, note VARCHAR(2), INDEX uv_id_idx (uv_id), INDEX user_semestre_id_idx (user_semestre_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = INNODB;
CREATE TABLE sf_guard_forgot_password (id BIGINT AUTO_INCREMENT, user_id BIGINT NOT NULL, unique_key VARCHAR(255), expires_at DATETIME NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_group (id BIGINT AUTO_INCREMENT, name VARCHAR(255) UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_group_permission (group_id BIGINT, permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(group_id, permission_id)) ENGINE = INNODB;
CREATE TABLE sf_guard_permission (id BIGINT AUTO_INCREMENT, name VARCHAR(255) UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_remember_key (id BIGINT AUTO_INCREMENT, user_id BIGINT, remember_key VARCHAR(32), ip_address VARCHAR(50), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user (id BIGINT AUTO_INCREMENT, first_name VARCHAR(255), last_name VARCHAR(255), email_address VARCHAR(255) NOT NULL UNIQUE, username VARCHAR(128) NOT NULL UNIQUE, algorithm VARCHAR(128) DEFAULT 'sha1' NOT NULL, salt VARCHAR(128), password VARCHAR(128), is_active TINYINT(1) DEFAULT '1', is_super_admin TINYINT(1) DEFAULT '0', last_login DATETIME, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX is_active_idx_idx (is_active), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user_group (user_id BIGINT, group_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(user_id, group_id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user_permission (user_id BIGINT, permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(user_id, permission_id)) ENGINE = INNODB;
ALTER TABLE abonnement ADD CONSTRAINT abonnement_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id);
ALTER TABLE abonnement ADD CONSTRAINT abonnement_asso_id_asso_id FOREIGN KEY (asso_id) REFERENCES asso(id);
>>>>>>> 9a945a1ee42da6f33934b1a8509aef508f9e2e4c
ALTER TABLE activation ADD CONSTRAINT activation_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON UPDATE CASCADE;
<<<<<<< HEAD
ALTER TABLE album ADD CONSTRAINT album_asso_id_asso_id FOREIGN KEY (asso_id) REFERENCES asso(id);
=======
ALTER TABLE annonce ADD CONSTRAINT annonce_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON UPDATE CASCADE;
ALTER TABLE annonce ADD CONSTRAINT annonce_departement_id_departement_id FOREIGN KEY (departement_id) REFERENCES departement(id) ON UPDATE CASCADE;
ALTER TABLE annonce ADD CONSTRAINT annonce_categorie_id_annonces_categorie_id FOREIGN KEY (categorie_id) REFERENCES annonces_categorie(id) ON UPDATE CASCADE;
ALTER TABLE annonce ADD CONSTRAINT annonce_branche_id_branche_id FOREIGN KEY (branche_id) REFERENCES branche(id) ON UPDATE CASCADE;
>>>>>>> 26ff3013cc4044e1aba25f4ae179891e3097e882
ALTER TABLE article ADD CONSTRAINT article_asso_id_asso_id FOREIGN KEY (asso_id) REFERENCES asso(id);
ALTER TABLE asso ADD CONSTRAINT asso_type_id_type_asso_id FOREIGN KEY (type_id) REFERENCES type_asso(id);
ALTER TABLE asso ADD CONSTRAINT asso_pole_id_pole_id FOREIGN KEY (pole_id) REFERENCES pole(id);
ALTER TABLE asso_member ADD CONSTRAINT asso_member_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id);
ALTER TABLE asso_member ADD CONSTRAINT asso_member_semestre_id_semestre_id FOREIGN KEY (semestre_id) REFERENCES semestre(id);
ALTER TABLE asso_member ADD CONSTRAINT asso_member_role_id_role_id FOREIGN KEY (role_id) REFERENCES role(id);
ALTER TABLE asso_member ADD CONSTRAINT asso_member_asso_id_asso_id FOREIGN KEY (asso_id) REFERENCES asso(id);
ALTER TABLE charte_info ADD CONSTRAINT charte_info_semestre_id_semestre_id FOREIGN KEY (semestre_id) REFERENCES semestre(id) ON UPDATE CASCADE;
ALTER TABLE charte_info ADD CONSTRAINT charte_info_responsable_id_sf_guard_user_id FOREIGN KEY (responsable_id) REFERENCES sf_guard_user(id) ON UPDATE CASCADE;
ALTER TABLE charte_info ADD CONSTRAINT charte_info_asso_id_asso_id FOREIGN KEY (asso_id) REFERENCES asso(id) ON UPDATE CASCADE;
ALTER TABLE emprunt ADD CONSTRAINT emprunt_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE emprunt ADD CONSTRAINT emprunt_materiel_id_materiel_id FOREIGN KEY (materiel_id) REFERENCES materiel(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE emprunt ADD CONSTRAINT emprunt_asso_id_asso_id FOREIGN KEY (asso_id) REFERENCES asso(id) ON UPDATE CASCADE;
ALTER TABLE event ADD CONSTRAINT event_type_id_event_type_id FOREIGN KEY (type_id) REFERENCES event_type(id);
ALTER TABLE event ADD CONSTRAINT event_asso_id_asso_id FOREIGN KEY (asso_id) REFERENCES asso(id);
<<<<<<< HEAD
ALTER TABLE image ADD CONSTRAINT image_album_id_album_id FOREIGN KEY (album_id) REFERENCES album(id);
ALTER TABLE photos ADD CONSTRAINT photos_gallery_id_gallery_id FOREIGN KEY (gallery_id) REFERENCES gallery(id) ON DELETE CASCADE;
=======
ALTER TABLE materiel ADD CONSTRAINT materiel_asso_id_asso_id FOREIGN KEY (asso_id) REFERENCES asso(id) ON UPDATE CASCADE;
>>>>>>> 26ff3013cc4044e1aba25f4ae179891e3097e882
ALTER TABLE pole ADD CONSTRAINT pole_asso_id_asso_id FOREIGN KEY (asso_id) REFERENCES asso(id);
ALTER TABLE profile ADD CONSTRAINT profile_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id);
ALTER TABLE profile ADD CONSTRAINT profile_semestre_semestre_id FOREIGN KEY (semestre) REFERENCES semestre(id);
ALTER TABLE profile ADD CONSTRAINT profile_home_place_place_id FOREIGN KEY (home_place) REFERENCES place(id);
ALTER TABLE profile ADD CONSTRAINT profile_filiere_id_filiere_id FOREIGN KEY (filiere_id) REFERENCES filiere(id);
ALTER TABLE profile ADD CONSTRAINT profile_family_place_place_id FOREIGN KEY (family_place) REFERENCES place(id);
ALTER TABLE profile ADD CONSTRAINT profile_branche_id_branche_id FOREIGN KEY (branche_id) REFERENCES branche(id);
ALTER TABLE stock ADD CONSTRAINT stock_materiel_id_materiel_id FOREIGN KEY (materiel_id) REFERENCES materiel(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE stock ADD CONSTRAINT stock_etat_id_etat_id FOREIGN KEY (etat_id) REFERENCES etat(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE user_semestre ADD CONSTRAINT user_semestre_user_id_profile_id FOREIGN KEY (user_id) REFERENCES profile(id);
ALTER TABLE user_semestre ADD CONSTRAINT user_semestre_semestre_id_semestre_id FOREIGN KEY (semestre_id) REFERENCES semestre(id);
ALTER TABLE user_semestre ADD CONSTRAINT user_semestre_branche_id_branche_id FOREIGN KEY (branche_id) REFERENCES branche(id);
ALTER TABLE user_sport ADD CONSTRAINT user_sport_user_id_profile_id FOREIGN KEY (user_id) REFERENCES profile(id);
ALTER TABLE user_sport ADD CONSTRAINT user_sport_sport_id_sport_id FOREIGN KEY (sport_id) REFERENCES sport(id);
ALTER TABLE user_uv ADD CONSTRAINT user_uv_uv_id_uv_id FOREIGN KEY (uv_id) REFERENCES uv(id);
ALTER TABLE user_uv ADD CONSTRAINT user_uv_user_semestre_id_user_semestre_id FOREIGN KEY (user_semestre_id) REFERENCES user_semestre(id);
ALTER TABLE sf_guard_forgot_password ADD CONSTRAINT sf_guard_forgot_password_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_group_permission ADD CONSTRAINT sf_guard_group_permission_permission_id_sf_guard_permission_id FOREIGN KEY (permission_id) REFERENCES sf_guard_permission(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_group_permission ADD CONSTRAINT sf_guard_group_permission_group_id_sf_guard_group_id FOREIGN KEY (group_id) REFERENCES sf_guard_group(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_remember_key ADD CONSTRAINT sf_guard_remember_key_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_group ADD CONSTRAINT sf_guard_user_group_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_group ADD CONSTRAINT sf_guard_user_group_group_id_sf_guard_group_id FOREIGN KEY (group_id) REFERENCES sf_guard_group(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_permission ADD CONSTRAINT sf_guard_user_permission_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_permission ADD CONSTRAINT sf_guard_user_permission_permission_id_sf_guard_permission_id FOREIGN KEY (permission_id) REFERENCES sf_guard_permission(id) ON DELETE CASCADE;
