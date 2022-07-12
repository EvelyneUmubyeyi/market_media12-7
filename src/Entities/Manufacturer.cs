using System.ComponentModel.DataAnnotations;

namespace MarketMedia.src.Entities
{
    public class Manufacturer
    {
        [Key]
        public int ManufacturerId { get; set; }

        [Required]
        public string ManufacturerName { get; set; }

        public string Location { get; set; }

    }
}
