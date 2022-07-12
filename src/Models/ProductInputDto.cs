namespace MarketMedia.src.Models
{
    public class ProductInputDto
    {
        public string Name { get; set; }
        public string Quality { get; set; }
        public string? quantity_measurement { get; set; }
        public int quantity { get; set; }
        public int CategoryId { get; set; }
    }
}
