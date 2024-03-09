<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240309154645 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE candidat CHANGE gender gender_id INT NOT NULL');
        $this->addSql('ALTER TABLE candidat ADD CONSTRAINT FK_6AB5B471708A0E0 FOREIGN KEY (gender_id) REFERENCES gender (id)');
        $this->addSql('CREATE INDEX IDX_6AB5B471708A0E0 ON candidat (gender_id)');
        $this->addSql('ALTER TABLE status DROP status');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE status ADD status VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE candidat DROP FOREIGN KEY FK_6AB5B471708A0E0');
        $this->addSql('DROP INDEX IDX_6AB5B471708A0E0 ON candidat');
        $this->addSql('ALTER TABLE candidat CHANGE gender_id gender INT NOT NULL');
    }
}
