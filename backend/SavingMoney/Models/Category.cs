namespace SavingMoney;
public class Category : Audit
{
    public int Id { get; set; }
    public string? Name { get; set; }
    public string? Description { get; set; }
}
