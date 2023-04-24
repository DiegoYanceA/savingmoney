namespace SavingMoney;
public class Transaction : Audit
{
    public int Id { get; set; }
    public int Description { get; set; }
    public float amount { get; set; }
    public string? IsReusable { get; set; }
    public Currency? currency { get; set; }
}
