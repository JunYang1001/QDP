using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace QDP.Entity
{
    class QDPDBContext:DbContext
    {

        public QDPDBContext()
        {

        }
        public QDPDBContext(DbContextOptions<QDPDBContext> options)
            :base(options)
        {

        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("server=.;database=QDPwebData;uid=sa;pwd=123456");
        }
        public DbSet<Project> projects { get; set; }
        public DbSet<BuildingSheet> buildingSheets { get; set; }
        public DbSet<CostSummary> costSummaries { get; set; }
        public DbSet<HighClass> highClasses { get; set; }
    }
}
