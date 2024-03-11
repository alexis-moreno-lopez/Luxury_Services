<?php

namespace App\Entity;

use App\Repository\MediaRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: MediaRepository::class)]
class Media
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $url = null;

    #[ORM\OneToOne(mappedBy: 'passport', cascade: ['persist', 'remove'])]
    private ?Candidat $candidat = null;

    #[ORM\OneToOne(mappedBy: 'cv', cascade: ['persist', 'remove'])]
    private ?Candidat $candidatCv = null;

    #[ORM\OneToOne(mappedBy: 'profilPic', cascade: ['persist', 'remove'])]
    private ?Candidat $profilPic = null;



    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUrl(): ?string
    {
        return $this->url;
    }

    public function setUrl(string $url): static
    {
        $this->url = $url;

        return $this;
    }

    public function getCandidat(): ?Candidat
    {
        return $this->candidat;
    }

    public function setCandidat(?Candidat $candidat): static
    {
        // unset the owning side of the relation if necessary
        if ($candidat === null && $this->candidat !== null) {
            $this->candidat->setPassport(null);
        }

        // set the owning side of the relation if necessary
        if ($candidat !== null && $candidat->getPassport() !== $this) {
            $candidat->setPassport($this);
        }

        $this->candidat = $candidat;

        return $this;
    }

    public function getCandidatCv(): ?Candidat
    {
        return $this->candidatCv;
    }

    public function setCandidatCv(?Candidat $candidatCv): static
    {
        // unset the owning side of the relation if necessary
        if ($candidatCv === null && $this->candidatCv !== null) {
            $this->candidatCv->setCv(null);
        }

        // set the owning side of the relation if necessary
        if ($candidatCv !== null && $candidatCv->getCv() !== $this) {
            $candidatCv->setCv($this);
        }

        $this->candidatCv = $candidatCv;

        return $this;
    }

    public function getProfilPic(): ?Candidat
    {
        return $this->profilPic;
    }

    public function setProfilPic(?Candidat $profilPic): static
    {
        // unset the owning side of the relation if necessary
        if ($profilPic === null && $this->profilPic !== null) {
            $this->profilPic->setProfilPic(null);
        }

        // set the owning side of the relation if necessary
        if ($profilPic !== null && $profilPic->getProfilPic() !== $this) {
            $profilPic->setProfilPic($this);
        }

        $this->profilPic = $profilPic;

        return $this;
    }


}
