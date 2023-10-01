using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Trabalho_de_Conclusão_de_Curso_2.BBL;
using Trabalho_de_Conclusão_de_Curso_2.Models;
using Trabalho_de_Conclusão_de_Curso_2.Context;

namespace Trabalho_de_Conclusão_de_Curso_2.Controllers
{
    public class Game2Controller : Controller
    {
        private readonly DbSQLServerContext _context;
        public Game2Controller(DbSQLServerContext context)
        {
            _context = context;
        }

        public IActionResult Game2()
        {
            Game2BBL gBBl = new Game2BBL(_context);
            Game2Model model = gBBl.getModel("IArley");
            return View(model);
        }



    }
}
