namespace MarketMedia.src.Models
{
    public class CategoryOutputDto
    {
        public int? parentId { get; set; }

        public int Id { get; set; }

        public string Name { get; set; }
        public string? CategoryImg { get; set; }
    }
}
