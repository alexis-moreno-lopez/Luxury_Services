<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240311122051 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE candidat ADD passport_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE candidat ADD CONSTRAINT FK_6AB5B471ABF410D0 FOREIGN KEY (passport_id) REFERENCES media (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_6AB5B471ABF410D0 ON candidat (passport_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE candidat DROP FOREIGN KEY FK_6AB5B471ABF410D0');
        $this->addSql('DROP INDEX UNIQ_6AB5B471ABF410D0 ON candidat');
        $this->addSql('ALTER TABLE candidat DROP passport_id');
    }
}
