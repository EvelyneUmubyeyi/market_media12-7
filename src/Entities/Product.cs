using System.ComponentModel.DataAnnotations;

namespace MarketMedia.src.Entities
{
    public class Product
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        public string Quality { get; set; }
        public string? quantity_measurement { get; set; }
        public int quantity { get; set; }
        public int CategoryId { get; set; }
        public Category Category { get; set; }
        public string? Product_Description { get; set; }
        public int ManufacturerId { get; set; }

    }
}
