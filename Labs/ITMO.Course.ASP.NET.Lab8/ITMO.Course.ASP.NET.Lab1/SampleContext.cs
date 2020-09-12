using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ITMO.Course.ASP.NET.Lab1
{
    public class SampleContext : DbContext
    {
        public SampleContext() : base("SeminarBD2") { }
        public DbSet<GuestResponse> GuestResponses { get; set; }
        public DbSet<Report> Reports { get; set; }
    }
}