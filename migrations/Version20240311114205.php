<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240311114205 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE media (id INT AUTO_INCREMENT NOT NULL, url VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE candidat ADD passport_id INT DEFAULT NULL, ADD cv_id INT DEFAULT NULL, DROP passport, DROP cv, DROP profil_pic');
        $this->addSql('ALTER TABLE candidat ADD CONSTRAINT FK_6AB5B471ABF410D0 FOREIGN KEY (passport_id) REFERENCES media (id)');
        $this->addSql('ALTER TABLE candidat ADD CONSTRAINT FK_6AB5B471CFE419E2 FOREIGN KEY (cv_id) REFERENCES media (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_6AB5B471ABF410D0 ON candidat (passport_id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_6AB5B471CFE419E2 ON candidat (cv_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE candidat DROP FOREIGN KEY FK_6AB5B471ABF410D0');
        $this->addSql('ALTER TABLE candidat DROP FOREIGN KEY FK_6AB5B471CFE419E2');
        $this->addSql('DROP TABLE media');
        $this->addSql('DROP INDEX UNIQ_6AB5B471ABF410D0 ON candidat');
        $this->addSql('DROP INDEX UNIQ_6AB5B471CFE419E2 ON candidat');
        $this->addSql('ALTER TABLE candidat ADD passport INT NOT NULL, ADD cv INT NOT NULL, ADD profil_pic INT NOT NULL, DROP passport_id, DROP cv_id');
    }
}
