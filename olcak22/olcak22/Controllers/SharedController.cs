using Microsoft.AspNetCore.Mvc;

namespace olcak2.Controllers
{
    public class SharedController : Controller
    {
        public IActionResult NotFound()
        {
            return View();
        }
    }
}
