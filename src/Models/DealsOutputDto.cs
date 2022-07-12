namespace MarketMedia.src.Models
{
    public class DealsOutputDto
    {
        public string name { get; set; }
        public string sellerName { get; set; }
        public decimal discount { get; set; }
        public decimal price { get; set; }
        public decimal totalPrice { get; set; }
        public string promotion { get; set; }
        public decimal rating { get; set; }
        public int number_of_ratings { get; set; }
    }
}
