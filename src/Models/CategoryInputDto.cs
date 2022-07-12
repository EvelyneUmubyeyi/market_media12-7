using System.ComponentModel.DataAnnotations.Schema;

namespace MarketMedia.src.Models
{
    public class CategoryInputDto
    {
        public int? parentId { get; set; }
        public string Name { get; set; }
        [NotMapped]
        public IFormFile? CategoryImg { get; set; }

    }
}
