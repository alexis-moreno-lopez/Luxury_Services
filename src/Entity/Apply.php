<?php

namespace App\Entity;

use App\Repository\ApplyRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ApplyRepository::class)]
class Apply
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $createdAt = null;

    #[ORM\Column(length: 255)]
    private ?string $adminNote = null;



    #[ORM\ManyToOne(inversedBy: 'applies')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Jobs $jobs = null;



    #[ORM\ManyToOne(inversedBy: 'applies')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Candidat $candidat = null;

    #[ORM\ManyToOne(inversedBy: 'applies')]
    private ?Status $status = null;



    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCandidat(): ?Candidat
    {
        return $this->candidat;
    }

    public function setCandidat(?Candidat $candidat): static
    {
        $this->candidat = $candidat;

        return $this;
    }



    public function getCreatedAt(): ?\DateTimeImmutable
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeImmutable $createdAt): static
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getAdminNote(): ?string
    {
        return $this->adminNote;
    }

    public function setAdminNote(string $adminNote): static
    {
        $this->adminNote = $adminNote;

        return $this;
    }


    public function getJobs(): ?Jobs
    {
        return $this->jobs;
    }

    public function setJobs(?Jobs $jobs): static
    {
        $this->jobs = $jobs;

        return $this;
    }

    public function getStatus(): ?Status
    {
        return $this->status;
    }

    public function setStatus(?Status $status): static
    {
        $this->status = $status;

        return $this;
    }

}
