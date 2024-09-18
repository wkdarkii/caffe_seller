using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using System.Collections.Generic;
using olcak2;
using olcak2.Models;
using System;

namespace olcak2.Controllers
{
    public class asılController : Controller
    {

        private readonly AppDbContext _context;

        public asılController(AppDbContext context)
        {
            _context = context;
        }
        //********************************************
        public async Task<IActionResult> Index()
        {
            var home = await _context.home.ToListAsync();
            return View(home);
        }

        //********************************************
        [Route("Hakkımızda")]
        public async Task<IActionResult> about()
        {
            var about = await _context.about.ToListAsync();
            return View(about);
        }
        //********************************************


        [Route("products")]
        public async Task<IActionResult> products()
        {
            var products = await _context.Products.Where(x => x.aktif == true).ToListAsync();
            return View(products);
        }

        //********************************************

        [Route("store")]
        public async Task<IActionResult> store()
        {
            var store = await _context.store.ToListAsync();



            return View(store);
        }

        //********************************************

        [Route("İletişim")]
        public async Task<IActionResult> ıletışım()
        {
            var iletisim = await _context.iletisim.ToListAsync();
            return View(iletisim);
        }
        //********************************************


        [Route("diger")]
        public async Task<IActionResult> Diger()
        {
            var model = await _context.iletisim.FindAsync(1); // Tek bir veri çekin

            if (model == null)
            {
                return NotFound();
            }

            return View(model); // Tek bir modeli View'e geçin
        }
        //********************************************
        [Route("urun/{id}/{baslik}")]
        public async Task<IActionResult> UrunDetay(int id)
        {
            var product = await _context.Products.FindAsync(id); // ID'ye göre veriyi çekin

            if (product == null)
            {
                return NotFound();
            }

            return View(product); // Veriyi View'e geçirin
        }

    }
}
