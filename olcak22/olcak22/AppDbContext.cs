using Microsoft.EntityFrameworkCore;

namespace olcak2
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        }

      //  public DbSet<Customer> Customers { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<iletişim> iletisim { get; set; }
        public DbSet<home> home { get; set; }
        public DbSet<about> about { get; set; }
        public DbSet<store> store { get; set; }
        public DbSet<store2> store2 { get; set; }
 

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseMySql("Server=localhost;Database=caffe;User=root;Password=semih180;", new MySqlServerVersion(new Version(8, 0, 21)));
            }
        }
    }
}
