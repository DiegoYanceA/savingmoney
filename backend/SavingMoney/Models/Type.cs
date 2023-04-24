namespace SavingMoney;
public class Type : Audit
{
    private int Id { get; set; }
    private int Name { get; set; }
    private int Description { get; set; }
    private string? _Type { get; set; }
    private string? FontColor { get; set; }
    private string? BackgroundColor { get; set; }
    private Category? category { get; set;}
}
