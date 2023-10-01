using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Trabalho_de_Conclusão_de_Curso_2.Context;
using Trabalho_de_Conclusão_de_Curso_2.Models;

namespace Trabalho_de_Conclusão_de_Curso_2.BBL
{
    public class Game2BBL
    {

        private readonly DbSQLServerContext _context;

        public Game2BBL(DbSQLServerContext context)
        {
            _context = context;
        }
        public Game2Model getModel(string referencePlace)
        {
            Game2Model model = new Game2Model();
            model.sobrancelhas = _context.Images.Where(x=> x.ReferencePlace==referencePlace && x.BodyPart=="sobrancelha" && x.Desativado == null).ToList();
            model.olhos = _context.Images.Where(x=> x.ReferencePlace==referencePlace && x.BodyPart=="olhos" && x.Desativado == null).ToList();
            model.bocas = _context.Images.Where(x=> x.ReferencePlace==referencePlace && x.BodyPart=="boca" && x.Desativado==null).ToList();
            model.training = _context.Trainings.Where(x=> x.Desativado ==null).ToList();
            return model;
        }

    }
}
