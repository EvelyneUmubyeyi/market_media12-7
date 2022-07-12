using System.ComponentModel.DataAnnotations;

namespace MarketMedia.src.Entities
{
    public class SubCategory
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        public Category Category { get; set; }

    }
}
