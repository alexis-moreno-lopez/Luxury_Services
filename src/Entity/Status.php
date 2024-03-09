<?php

namespace App\Entity;

use App\Repository\StatusRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: StatusRepository::class)]
class Status
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\OneToMany(targetEntity: Apply::class, mappedBy: 'status', orphanRemoval: true)]
    private Collection $Status;

    public function __construct()
    {
        $this->Status = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * @return Collection<int, Apply>
     */
    public function getStatus(): Collection
    {
        return $this->Status;
    }

    public function addStatus(Apply $status): static
    {
        if (!$this->Status->contains($status)) {
            $this->Status->add($status);
            $status->setStatus($this);
        }

        return $this;
    }

    public function removeStatus(Apply $status): static
    {
        if ($this->Status->removeElement($status)) {
            // set the owning side to null (unless already changed)
            if ($status->getStatus() === $this) {
                $status->setStatus(null);
            }
        }

        return $this;
    }
}
