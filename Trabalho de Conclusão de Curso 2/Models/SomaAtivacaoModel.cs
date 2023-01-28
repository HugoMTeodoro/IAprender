using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Trabalho_de_Conclusão_de_Curso_2.Models
{
    public class SomaAtivacaoModel
    {
        public List<Result> somasEAtivacoes { get; set; }

        public int IndexList { get; set; }
        

        public SomaAtivacaoModel()
        {
            this.somasEAtivacoes = new List <Result>();
        }
    }
    public class Result
    {
        public double soma { get; set; }
        public double ativacao { get; set; }
        public string cor { get; set; }
        public string Esperado { get; set; }
        public int IdSaida { get; set; }
    }
    }
