using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Trabalho_de_Conclusão_de_Curso_2.Entities.Game1
{
    [Table("IArleyTraining")]
    public class IArleyTraining
    {
        public int Id { get; set; }
        public int Sobrancelha { get; set; }
        public int Olhos { get; set; }
        public int Boca { get; set; }
        public string Humor { get; set; }
        public double? HumorId { get; set; }
        public int Triste { get; set; }
        public int Neutro { get; set; }
        public int Feliz { get; set; }
        public int Raiva { get; set; }
        public bool? Desativado { get; set; }
    }
}
