namespace AppNetMaui.Classes.API.Auditoria
{
    public class EstoquePreClass
    {
        public int Id { get; set; }
        public int? Iditem { get; set; }
        public int Idgrupo { get; set; }
        public int Idcategoria { get; set; }
        public int? Idsubgrupo { get; set; }
        public string Sku { get; set; }
        public string Idlocal { get; set; }
        public string Usuario { get; set; }
        public decimal? Quantidade { get; set; }
        public DateTime? Datasave { get; set; }
        public int? Idlista { get; set; }
        public string Finaliza { get; set; }
        public decimal? EstoqueAtual { get; set; }
    }
}
