<?php

namespace App\Controller\Admin;

use App\Entity\Candidat;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class CandidatCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Candidat::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [

           // TextField::new('title'),
            TextField::new('firstname'),
            TextField::new('lastname'),
            AssociationField::new('gender'),
            TextField::new('country'),
            TextField::new('nationality'),
            DateTimeField::new('birthdate'),
            TextField::new('birthPlace'),
            TextField::new('shortDescription'),
            DateTimeField::new('createdAt'),
            DateTimeField::new('updatedAt'),
            DateTimeField::new('deletedAt'),
            IntegerField::new('jobCategory'),
            TextField::new('adminNote'),
            IntegerField::new('experience'),
            TextField::new('adress'),
            AssociationField::new('passport'),
            AssociationField::new('cv'),
            AssociationField::new('profilPic'),
            IntegerField::new('user'), // pas sur


        ];
    }
    
}
