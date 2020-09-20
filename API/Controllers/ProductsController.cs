using AutoMapper;
using DAL;
using DAL.Data.Repository.Interfaces;
using DAL.Specifications;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Models.DTO;
using Models.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Runtime.InteropServices;
using System.Threading.Tasks;


namespace API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ProductsController : ControllerBase
    {
        private readonly IBaseRepository<Product> _productRepo;
        private readonly IBaseRepository<ProductBrand> _brandRepo;
        private readonly IBaseRepository<ProductType> _typeRepo;
        private readonly IMapper _mapper;

        public ProductsController(IBaseRepository<Product> productRepo,
            IBaseRepository<ProductBrand> brandRepo,
            IBaseRepository<ProductType> typeRepo,
            IMapper mapper)
        {
            _productRepo = productRepo;
            _brandRepo = brandRepo;
            _typeRepo = typeRepo;
            _mapper = mapper;
        }

        [HttpGet]
        public async Task<ActionResult<IReadOnlyList<ProductDTO>>> GetProducts()
        {
            var spec = new ProductsWithTypesAndBrandsSpecification();

            var products = await _productRepo.ListAsync(spec);
            
            return Ok(_mapper.Map<IReadOnlyList<Product>, IReadOnlyList<ProductDTO>>(products));

        }

        [HttpGet("{id}")]
        public async Task<ActionResult<ProductDTO>> GetProduct(int id)
        {
            var spec = new ProductsWithTypesAndBrandsSpecification(id);
            var product = await _productRepo.GetEntityWithSpec(spec);
            return Ok(_mapper.Map<Product, ProductDTO>(product)) ;
        }

        [HttpGet("brands")]
        public async Task<ActionResult<IReadOnlyList<ProductBrand>>> GetProductBrands()
        {
            var productBrands = await _brandRepo.ListAllAsync();
            return Ok(productBrands);
        }

        [HttpGet("types")]
        public async Task<ActionResult<IReadOnlyList<ProductType>>> GetProductTypes()
        {
            var productTypes = await _typeRepo.ListAllAsync();
            return Ok(productTypes);
        }
    }
}
