using System.ComponentModel.DataAnnotations;

namespace MarketMedia.src.Entities
{
    public class Cart
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public int SellerId { get; set; }
        public Seller Seller { get; set; }
        public int ProductId { get; set; }
        public Product Product { get; set; }
        public int CustomerId { get; set; }
        public Customer Customer { get; set; }



    }
}
