using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Trabalho_de_Conclusão_de_Curso_2.Context;
using Trabalho_de_Conclusão_de_Curso_2.Entities.Game1;
using Trabalho_de_Conclusão_de_Curso_2.Models;

namespace Trabalho_de_Conclusão_de_Curso_2.BBL
{
    public class Game1BBL
    {

        private readonly DbSQLServerContext _context;

        public Game1BBL(DbSQLServerContext context)
        {
            _context = context;
        }
        public Game1Model getModel(string referencePlace)
        {
            Game1Model model = new Game1Model();
            model.sobrancelhas = _context.Images.Where(x=> x.ReferencePlace==referencePlace && x.BodyPart=="sobrancelha").ToList();
            model.olhos = _context.Images.Where(x=> x.ReferencePlace==referencePlace && x.BodyPart=="olhos").ToList();
            model.bocas = _context.Images.Where(x=> x.ReferencePlace==referencePlace && x.BodyPart=="boca").ToList();
            model.training = _context.Trainings.ToList();
            return model;
        }

    }
}
