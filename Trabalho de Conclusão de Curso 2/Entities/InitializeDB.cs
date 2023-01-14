using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Trabalho_de_Conclusão_de_Curso_2.Context;
using Trabalho_de_Conclusão_de_Curso_2.Entities.Game1;

namespace Trabalho_de_Conclusão_de_Curso_2.Models
{
    public class InitializeDB
    {
        public static void Initialize(DbSQLServerContext context)
        {
            context.Database.EnsureCreated();
            if (context.Images.Any())
            {
                return;
            }
            else
            {
                var imagens = new Image[]
                {
                    new Image{ ImageName="sobrancelha neutra", BodyPart="sobrancelha", Humor="neutra",  Hierarchy=100 },
                    new Image{ ImageName="sobrancelha feliz", BodyPart="sobrancelha",  Humor="feliz", Hierarchy=200 },
                    new Image{ ImageName="sobrancelha triste", BodyPart="sobrancelha",  Humor="triste", Hierarchy=300 },
                    new Image{ ImageName="sobrancelha raiva", BodyPart="sobrancelha",  Humor="raiva",Hierarchy= 400 }
                };
                foreach (Image i in imagens)
                {
                    context.Images.Add(i);
                }
                context.SaveChanges();
            }
        }
    }
}
