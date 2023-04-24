namespace SavingMoney;
public class TypeTransaction : Audit
{
    private int Id { get; set; }
    private int Name { get; set; }
    private int Description { get; set; }
    private string? FontColor { get; set; }
    private string? BackgroundColor { get; set; }
    private Transaction? Transaction { get; set;}
    public Type? Type { get; set; }
    public Period? Period { get; set; }
}
