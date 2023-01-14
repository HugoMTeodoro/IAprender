using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Trabalho_de_Conclusão_de_Curso_2.BBL;
using Trabalho_de_Conclusão_de_Curso_2.Models;
using Trabalho_de_Conclusão_de_Curso_2.Entities.Game1;
using Trabalho_de_Conclusão_de_Curso_2.Context;

namespace Trabalho_de_Conclusão_de_Curso_2.Controllers
{
    public class Game1Controller : Controller
    {
        private readonly DbSQLServerContext _context;
        public Game1Controller(DbSQLServerContext context)
        {
            _context = context;
        }

        public IActionResult Game1()
        {
            Game1BBL gBBl = new Game1BBL(_context);
            Game1Model model = gBBl.getModel("IArley");
            return View(model);
        }



    }
}
