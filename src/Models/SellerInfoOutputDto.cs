namespace MarketMedia.src.Models
{
    public class SellerInfoOutputDto
    {
        public int sellerId { get; set; }
        public string Name { get; set; }
        public string? location { get; set; }

        public string? category { get; set; }

        public decimal? rating { get; set; }

        public int? number_of_ratings { get; set; }
        public string? about { get; set; }
        public string? website { get; set; }
        public string? socialmedia { get; set; }


    }
}
