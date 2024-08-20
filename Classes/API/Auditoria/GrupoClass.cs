namespace AppNetMaui.Classes.API.Auditoria
{
    public class GrupoClass
    {
        public int IdGrupo { get; set; }
        public string Descricao { get; set; }
        public int IdCategoria { get; set; }
        public DateTime CadastradoEm { get; set; }
        public int CadastradoPor { get; set; }
    }

    public class GruposCategoria
    {
        public string grupo { get; set; }
        public string categoria { get; set; }
        public string local { get; set; }
    }
}
