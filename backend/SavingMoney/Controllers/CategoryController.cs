using Microsoft.AspNetCore.Mvc;

namespace SavingMoney.Controllers;

[ApiController]
[Route("[controller]")]
public class CategoryController : ControllerBase
{
    private readonly ILogger<WeatherForecastController> _logger;

    public CategoryController(ILogger<WeatherForecastController> logger)
    {
        _logger = logger;
    }

    [HttpGet("{id}")]
    public ActionResult<Category> Get(int id)
    {
        Category ca = new Category();
        ca.Description = "GAaa";
        return Ok(ca);
    }
}