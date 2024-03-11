<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240311115634 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE candidat ADD profil_pic_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE candidat ADD CONSTRAINT FK_6AB5B471EFAE74C3 FOREIGN KEY (profil_pic_id) REFERENCES media (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_6AB5B471EFAE74C3 ON candidat (profil_pic_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE candidat DROP FOREIGN KEY FK_6AB5B471EFAE74C3');
        $this->addSql('DROP INDEX UNIQ_6AB5B471EFAE74C3 ON candidat');
        $this->addSql('ALTER TABLE candidat DROP profil_pic_id');
    }
}
