using Microsoft.AspNetCore.Mvc;

namespace olcak2.Controllers
{
    public class ErrorController : Controller
    {
        [Route("Error/Error")]
        public IActionResult Error(int? statusCode = null)
        {
            if (statusCode.HasValue)
            {
                ViewData["ErrorCode"] = statusCode.ToString();
                if (statusCode == 404)
                {
                    return View("NotFound");
                }
            }

            return View();
        }

        public IActionResult ErrorNotFound()
        {

            return View();
        }
    }
}
