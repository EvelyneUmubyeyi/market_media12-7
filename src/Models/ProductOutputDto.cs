namespace MarketMedia.src.Models
{
    public class ProductOutputDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Quality { get; set; }
        public string? quantity_measurement { get; set; }
        public int quantity { get; set; }
        public int CategoryId { get; set; }
        //public string Category { get; set; }
    }
}
