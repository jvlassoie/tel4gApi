<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;

class CustomController extends Controller
{
	/**
     * @Route("/tester", name="test")
     * @Method({"GET", "POST", "OPTIONS"})
     */
	public function uploadAction(Request $request)
	{
		header('Access-Control-Allow-Origin: http://local.tel4g');  

		if (!empty($_FILES)&&!empty($_POST)){
			$nameImg = uniqid();
			$upload_image = $this->container->getParameter('upload_image');
			$ext = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);
			move_uploaded_file(
				$_FILES['file']['tmp_name'], 
				$upload_image.'/'.$nameImg.'.'.$ext
				);
			return new Response('ok',201);
		}
		return new Response('error',500);

	}
}