using API.Errors;
using AutoMapper;
using DAL;
using DAL.Data.Repository.Interfaces;
using DAL.Specifications;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Models.DTO;
using Models.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Reflection.Metadata.Ecma335;
using System.Runtime.InteropServices;
using System.Threading.Tasks;


namespace API.Controllers
{
    public class ProductsController : BaseApiController
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
        public async Task<ActionResult<PagedResult<ProductDTO>>> GetProducts([FromQuery] ProductSpecParams specParams)
        {
            var countSpec = new ProductWithFiltersForCountSpecification(specParams);
            var totalItems = await _productRepo.CountAsync(countSpec);

            var spec = new ProductsWithTypesAndBrandsSpecification(specParams);
            var products = await _productRepo.ListAsync(spec);
            var data = _mapper.Map<IReadOnlyList<Product>, IReadOnlyList<ProductDTO>>(products);
            return Ok(new PagedResult<ProductDTO>(specParams.PageIndex,specParams.PageSize,totalItems,data));

        }

        [HttpGet("{id}")]
        [ProducesResponseType(typeof(ApiResponse),StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(ApiResponse),StatusCodes.Status404NotFound)]
        public async Task<ActionResult<ProductDTO>> GetProduct(int id)
        {
            var spec = new ProductsWithTypesAndBrandsSpecification(id);
            var product = await _productRepo.GetEntityWithSpec(spec);
            if (product == null) return NotFound(new ApiResponse((StatusCodes.Status404NotFound)));
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
