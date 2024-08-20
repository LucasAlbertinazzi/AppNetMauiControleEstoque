namespace AppNetMaui.Classes.API.Auditoria
{
    public class EstoqueClass
    {
        public int Id { get; set; }

        public int IdCategoria { get; set; }

        public string IdGrupo { get; set; }

        public DateTime DataAbre { get; set; }

        public DateTime? DataFecha { get; set; }

        public string UserAbre { get; set; }

        public string UserFecha { get; set; }

        public string IdLocal { get; set; }

        public string Excluir { get; set; }

        public string UserExcluir { get; set; }

        public string Finalizado { get; set; }

        public int? IdLista { get; set; }

        public string IdCategoriaLista { get; set; }
    }

    public class SelectEstoqueAtual
    {
        public string Sku { get; set; }

        public int? IdItem { get; set; }

        public int? IdLista { get; set; }

        public decimal Atual { get; set; }
    }

    public class DataContagem
    {
        public DateTime inicio { get; set; }

        public DateTime final { get; set; }
    }
}
