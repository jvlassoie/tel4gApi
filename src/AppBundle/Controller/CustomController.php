<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use AppBundle\Entity\User;
use Symfony\Component\Serializer\Serializer;
use Symfony\Component\Serializer\Encoder\XmlEncoder;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Normalizer\ObjectNormalizer;

class CustomController extends Controller
{
	/**
     * @Route("/upload", name="test")
     * @Method({"GET", "POST", "OPTIONS"})
     */
	public function uploadAction(Request $request)
	{
		header('Access-Control-Allow-Origin: http://local.tel4g');  

				print_r($_POST);
				print_r($_FILES);
			die();
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

	/**
     * @Route("/checkmailexist/{email}", name="checkmailexist")
     * @Method({"GET", "POST", "OPTIONS"})
     */
	public function verifEmail($email){
		/*		header('Access-Control-Allow-Origin: http://local.tel4g'); */
		$repo = $this->getDoctrine()->getRepository('AppBundle:User');
		$emailBool = $repo->findByEmail($email);
		/*$encoders = array(new XmlEncoder(), new JsonEncoder());
		$normalizers = array(new ObjectNormalizer());
		$serializer = new Serializer($normalizers, $encoders);
		return new Response($serializer->serialize($emailBool,'json'),200);*/
		if (!empty($emailBool)) {
			return new Response(json_encode(['result' => true]),200);
		}else{	
			return new Response(json_encode(['result' => false]),200);
		}
	}

}