<?php

namespace App\Entity;

use App\Repository\ExperienceRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ExperienceRepository::class)]
class Experience
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\OneToMany(targetEntity: Candidat::class, mappedBy: 'experience', orphanRemoval: true)]
    private Collection $duration;

    public function __construct()
    {
        $this->duration = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * @return Collection<int, Candidat>
     */
    public function getDuration(): Collection
    {
        return $this->duration;
    }

    public function addDuration(Candidat $duration): static
    {
        if (!$this->duration->contains($duration)) {
            $this->duration->add($duration);
            $duration->setExperience($this);
        }

        return $this;
    }

    public function removeDuration(Candidat $duration): static
    {
        if ($this->duration->removeElement($duration)) {
            // set the owning side to null (unless already changed)
            if ($duration->getExperience() === $this) {
                $duration->setExperience(null);
            }
        }

        return $this;
    }
}
