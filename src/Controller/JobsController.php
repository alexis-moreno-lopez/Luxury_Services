<?php

namespace App\Controller;

use App\Entity\JobCategory;
use App\Repository\JobsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class JobsController extends AbstractController
{
    #[Route('/jobs', name: 'app_jobs_index')]
    public function index(): Response
    {
        return $this->render('jobs/index.html.twig', [
            'controller_name' => 'JobsController',
        ]);
    }
    #[Route('/show', name: 'app_jobs_show')]
    public function jobsshow(): Response
    {
        return $this->render('jobs/show.html.twig', [
            'controller_name' => 'JobsController',
        ]);
    }
    #[Route('/show', name: 'app_jobs_show')]     public function selectshow(JobsRepository $jobsRepository): Response
    {
        $jobs = $jobsRepository->findAll();
        return $this->render('jobs/show.html.twig', ['jobs' => $jobs]);
    }
    #[Route("/jobs", name: "app_jobs_index")]

    public function select(JobsRepository $jobsRepository): Response
    {     // Récupérer toutes les offres d'emploi depuis le repository
        $jobs = $jobsRepository->findAll();
        //    $offers = $jobsRepository -> findAll()

        // Passer les données récupérées à la vue Twig pour affichage
        return $this->render('jobs/index.html.twig', [
            'jobs' => $jobs,
        ]);
    }
}
