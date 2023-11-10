using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using Api.Models;

namespace Api;

[ApiController]
[Route("[controller]")]
public class RolesController : ControllerBase
{
    [HttpGet]
    public ActionResult<Role> Get() {
        var result = new Role() { RoleId = 1, RoleName = "TestRole"};
        return Ok(result);
    }
}
