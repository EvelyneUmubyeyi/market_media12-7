using MarketMedia.src.Entities;
using MarketMedia.src.Models;
using Microsoft.EntityFrameworkCore;

namespace MarketMedia.src.EF
{
    public class MMDbContext:DbContext
    {
        public MMDbContext(DbContextOptions<MMDbContext> options) : base(options)
        {


        }

        public MMDbContext()
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            base.OnConfiguring(options);

            // options.UseExceptionProcessor();
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Address>().ToTable(nameof(Address), Schema.Lookup);
            modelBuilder.Entity<Branch>().ToTable(nameof(Branch), Schema.Lookup);
            modelBuilder.Entity<Category>().ToTable(nameof(Category), Schema.Lookup);
            modelBuilder.Entity<Category>().ToTable(nameof(Category), Schema.Lookup);
            modelBuilder.Entity<Cell>().ToTable(nameof(Cell), Schema.Lookup);
            modelBuilder.Entity<Contact>().ToTable(nameof(Contact), Schema.Lookup);
            modelBuilder.Entity<Customer>().ToTable(nameof(Customer), Schema.Lookup);
            modelBuilder.Entity<District>().ToTable(nameof(District), Schema.Lookup);
            modelBuilder.Entity<Order>().ToTable(nameof(Order), Schema.Lookup);
            modelBuilder.Entity<Payment>().ToTable(nameof(Payment), Schema.Lookup);
            modelBuilder.Entity<Product>().ToTable(nameof(Product), Schema.Lookup);
            modelBuilder.Entity<ProductSeller>().ToTable(nameof(ProductSeller), Schema.Lookup)
                .HasKey(i => new { i.ProductId, i.SellerId });
            //modelBuilder.Entity<Address>().ToTable(nameof(Address), Schema.Lookup).HasIndex(i=>i.Details).IsUnique();
            modelBuilder.Entity<Province>().ToTable(nameof(Province), Schema.Lookup);
            modelBuilder.Entity<Sector>().ToTable(nameof(Sector), Schema.Lookup);
            modelBuilder.Entity<Seller>().ToTable(nameof(Seller), Schema.Lookup);
            modelBuilder.Entity<Village>().ToTable(nameof(Village), Schema.Lookup);
            modelBuilder.Entity<SellerInfoOutputDto>().HasNoKey();
            modelBuilder.Entity<DealsOutputDto>().HasNoKey();
            modelBuilder.Entity<SellersOfProductOutputDto>().HasNoKey();
            modelBuilder.Entity<sellerProductsOutputDto>().HasNoKey();
            modelBuilder.Entity<SearchProductOutputDto>().HasNoKey();
            modelBuilder.Entity<ProductDetailsOutputDto>().HasNoKey();
        }

        public DbSet<Address> Addresses { get; set; }
        public DbSet<Branch> Branches { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Cell> Cells { get; set; }
        public DbSet<Contact> Contacts { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<District> Districts { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<Payment> payments { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<ProductSeller> ProductSellers { get; set; }
        public DbSet<Province> Provinces { get; set; }
        public DbSet<Sector> Sectors { get; set; }
        public DbSet<Seller> Sellers { get; set; }
        public DbSet<Village> Villages { get; set; }
        public virtual DbSet<SellerInfoOutputDto> SellerInfoOutputDtos { get; set; }
        public virtual DbSet<DealsOutputDto> DealsOutputDtos { get; set; }
        public virtual DbSet<SellersOfProductOutputDto> SellersOfProductOutputDtos { get; set; }
        public virtual DbSet<sellerProductsOutputDto> sellerProductsOutputDtos { get; set; }
        public virtual DbSet<SearchProductOutputDto> SearchProductOutputDtos { get; set; }
        public virtual DbSet<ProductDetailsOutputDto> ProductDetailsOutputDtos { get; set; }


    }
}
