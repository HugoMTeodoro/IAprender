using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Trabalho_de_Conclusão_de_Curso_2.Entities.Game1
{
    [Table("Images")]
    public class Image
    {
        public int Id { get; set; }
        public string ImageName { get; set; }
        public string BodyPart { get; set; }
        public string Humor { get; set; }
        public int Hierarchy { get; set; }
        public string ReferencePlace { get; set; }


    }
}
