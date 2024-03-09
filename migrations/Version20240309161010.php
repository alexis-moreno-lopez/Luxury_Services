<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240309161010 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE candidat DROP experience');
        $this->addSql('ALTER TABLE experience DROP duration');
        $this->addSql('ALTER TABLE media DROP url, DROP name');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE media ADD url VARCHAR(255) NOT NULL, ADD name VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE candidat ADD experience INT NOT NULL');
        $this->addSql('ALTER TABLE experience ADD duration VARCHAR(255) NOT NULL');
    }
}
