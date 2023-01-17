using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Trabalho_de_Conclusão_de_Curso_2.Entities.Game1;

namespace Trabalho_de_Conclusão_de_Curso_2.Context
{
    public class DbSQLServerContext : DbContext
    {

        public DbSQLServerContext(DbContextOptions<DbSQLServerContext> options) : base(options)
        {
            
        }
        public DbSet<Image> Images { get; set; }
        public DbSet<IArleyTraining> Trainings { get; set; }
    }
}
