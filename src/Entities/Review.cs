using System.ComponentModel.DataAnnotations;

namespace MarketMedia.src.Entities
{
    public class Review
    {
        [Key]
        public int Id { get; set; }
        public string CustomerReview { get; set; }
        public decimal Rating { get; set; }
        public int ProductId { get; set; }
        public Product Product { get; set; }
        public int CustomerId { get; set; }
        public Customer Customer { get; set; }
        public int SellerId { get; set; }
        public Seller Seller { get; set; }
    }
}
