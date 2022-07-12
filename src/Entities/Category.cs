using System.ComponentModel.DataAnnotations;

namespace MarketMedia.src.Entities
{
    public class Category
    {
        public int? parentId { get; set; }

        [Key]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; }
        public byte[]? CategoryImg { get; set; }
    }
}
