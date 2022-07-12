namespace MarketMedia.src.Models
{
    public class sellerProductsOutputDto
    {
        public int sellerId { get; set; }
        public int productId { get; set; }
        public string productName { get; set; }
        public string sellerName { get; set; }
        public string location { get; set; }
        public decimal rating { get; set; }
        public int number_of_ratings { get; set; }
        public string availabilityStatus { get; set; }
        public decimal discount { get; set; }
        public decimal price { get; set; }
        public decimal totalPrice { get; set; }
        public string promotion { get; set; }
    }
}
