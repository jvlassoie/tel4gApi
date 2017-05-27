<?php

namespace AppBundle\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Symfony\Component\Serializer\Annotation\Groups;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use AppBundle\Entity\Brand;
use AppBundle\Entity\Operating_System;


/**
 * Phone
 *
 * @ApiResource(attributes={"pagination_client_items_per_page"=true, "normalization_context"={"groups"={"phone"}}})
 * @ORM\Entity
 */
class Phone
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @Groups({"phone"})
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="model", type="string", length=50)
     * @Groups({"phone"})
     */
    private $model;

    /**
     * @var float
     *
     * @ORM\Column(name="price", type="float")
     * @Groups({"phone"})
     */
    private $price;

    /**
     * @var string
     *
     * @ORM\Column(name="picture", type="string", length=255)
     * @Groups({"phone"})
     */
    private $picture;

    /**
     * @var float
     *
     * @ORM\Column(name="weight", type="float")
     * @Groups({"phone"})
     */
    private $weight;

    /**
     * @var float
     *
     * @ORM\Column(name="height", type="float")
     * @Groups({"phone"})
     */
    private $height;

    /**
     * @var float
     *
     * @ORM\Column(name="width", type="float")
     * @Groups({"phone"})
     */
    private $width;

    /**
     * @var float
     *
     * @ORM\Column(name="thickness", type="float")
     * @Groups({"phone"})
     */
    private $thickness;

    /**
     * @var int
     *
     * @ORM\Column(name="autonomy", type="integer")
     * @Groups({"phone"})
     */
    private $autonomy;

    /**
     * @var float
     *
     * @ORM\Column(name="memory", type="float")
     * @Groups({"phone"})
     */
    private $memory;

    /**
     * @var bool
     *
     * @ORM\Column(name="memory_extension", type="boolean")
     * @Groups({"phone"})
     */
    private $memoryExtension;

    /**
     * @var bool
     *
     * @ORM\Column(name="standard_4g", type="boolean")
     * @Groups({"phone"})
     */
    private $standard4g;

    /**
     * 
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Brand")
     * @ORM\JoinColumn(name="brand_id", referencedColumnName="id")  
     * @Groups({"phone"})
     */
    private $brand;
    
    /**
     * 
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Operating_System")
     * @ORM\JoinColumn(name="os_id", referencedColumnName="id")
     * @Groups({"phone"})
     * 
     */
    private $os;


    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set model
     *
     * @param string $model
     *
     * @return Phone
     */
    public function setModel($model)
    {
        $this->model = $model;

        return $this;
    }

    /**
     * Get model
     *
     * @return string
     */
    public function getModel()
    {
        return $this->model;
    }

    /**
     * Set price
     *
     * @param float $price
     *
     * @return Phone
     */
    public function setPrice($price)
    {
        $this->price = $price;

        return $this;
    }

    /**
     * Get price
     *
     * @return float
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Set picture
     *
     * @param string $picture
     *
     * @return Phone
     */
    public function setPicture($picture)
    {
        $this->picture = $picture;

        return $this;
    }

    /**
     * Get picture
     *
     * @return string
     */
    public function getPicture()
    {
        return $this->picture;
    }

    /**
     * Set weight
     *
     * @param float $weight
     *
     * @return Phone
     */
    public function setWeight($weight)
    {
        $this->weight = $weight;

        return $this;
    }

    /**
     * Get weight
     *
     * @return float
     */
    public function getWeight()
    {
        return $this->weight;
    }

    /**
     * Set height
     *
     * @param float $height
     *
     * @return Phone
     */
    public function setHeight($height)
    {
        $this->height = $height;

        return $this;
    }

    /**
     * Get height
     *
     * @return float
     */
    public function getHeight()
    {
        return $this->height;
    }

    /**
     * Set width
     *
     * @param float $width
     *
     * @return Phone
     */
    public function setWidth($width)
    {
        $this->width = $width;

        return $this;
    }

    /**
     * Get width
     *
     * @return float
     */
    public function getWidth()
    {
        return $this->width;
    }

    /**
     * Set thickness
     *
     * @param float $thickness
     *
     * @return Phone
     */
    public function setThickness($thickness)
    {
        $this->thickness = $thickness;

        return $this;
    }

    /**
     * Get thickness
     *
     * @return float
     */
    public function getThickness()
    {
        return $this->thickness;
    }

    /**
     * Set autonomy
     *
     * @param integer $autonomy
     *
     * @return Phone
     */
    public function setAutonomy($autonomy)
    {
        $this->autonomy = $autonomy;

        return $this;
    }

    /**
     * Get autonomy
     *
     * @return integer
     */
    public function getAutonomy()
    {
        return $this->autonomy;
    }

    /**
     * Set memory
     *
     * @param float $memory
     *
     * @return Phone
     */
    public function setMemory($memory)
    {
        $this->memory = $memory;

        return $this;
    }

    /**
     * Get memory
     *
     * @return float
     */
    public function getMemory()
    {
        return $this->memory;
    }

    /**
     * Set memoryExtension
     *
     * @param boolean $memoryExtension
     *
     * @return Phone
     */
    public function setMemoryExtension($memoryExtension)
    {
        $this->memoryExtension = $memoryExtension;

        return $this;
    }

    /**
     * Get memoryExtension
     *
     * @return boolean
     */
    public function getMemoryExtension()
    {
        return $this->memoryExtension;
    }

    /**
     * Set standard4g
     *
     * @param boolean $standard4g
     *
     * @return Phone
     */
    public function setStandard4g($standard4g)
    {
        $this->standard4g = $standard4g;

        return $this;
    }

    /**
     * Get standard4g
     *
     * @return boolean
     */
    public function getStandard4g()
    {
        return $this->standard4g;
    }

    /**
     * Set brand
     *
     * @param \AppBundle\Entity\Brand $brand
     *
     * @return Phone
     */
    public function setBrand(\AppBundle\Entity\Brand $brand = null)
    {
        $this->brand = $brand;

        return $this;
    }

    /**
     * Get brand
     *
     * @return \AppBundle\Entity\Brand
     */
    public function getBrand()
    {
        return $this->brand;
    }

    /**
     * Set os
     *
     * @param \AppBundle\Entity\Operating_System $os
     *
     * @return Phone
     */
    public function setOs(\AppBundle\Entity\Operating_System $os = null)
    {
        $this->os = $os;

        return $this;
    }

    /**
     * Get os
     *
     * @return \AppBundle\Entity\Operating_System
     */
    public function getOs()
    {
        return $this->os;
    }
}
