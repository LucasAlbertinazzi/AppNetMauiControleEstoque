using System.ComponentModel;

namespace AppNetMaui.Classes.API.Auditoria
{
    public class ItensClass : INotifyPropertyChanged
    {

        private string _quantidadeUn;
        public string QuantidadeUn
        {
            get { return _quantidadeUn; }
            set
            {
                if (_quantidadeUn != value)
                {
                    _quantidadeUn = value;
                    OnPropertyChanged(nameof(QuantidadeUn));
                }
            }
        }

        private string _quantidadeCont;
        public string QuantidadeCont
        {
            get { return _quantidadeCont; }
            set
            {
                if (_quantidadeCont != value)
                {
                    _quantidadeCont = value;
                    OnPropertyChanged(nameof(QuantidadeCont));
                    OnPropertyChanged(nameof(QuantidadeUn));
                }
            }
        }

        public string QuantidadeMed { get; set; }
        public string QtdFinalIten { get; set; }

        public string estPrev { get; set; }

        public string estUnP { get; set; }

        public string estPrevUn { get; set; }

        public string estPrevUnAp { get; set; }

        public int IdItem { get; set; }

        public string IdLocal { get; set; }

        public int SkuCb { get; set; }

        public string CodItemCb { get; set; }

        public string Descricao { get; set; }
        public string estAntigo { get; set; }
        public string vendaPeriodo { get; set; }

        public decimal? Preco { get; set; }

        public int IdCategoria { get; set; }

        public int IdGrupo { get; set; }

        public int? IdSubgrupo { get; set; }

        public string Sku { get; set; }

        public decimal Volume { get; set; }

        public decimal Peso { get; set; }

        public bool? Ativo { get; set; }

        public DateTime CadastradoEm { get; set; }

        public int CadastradoPor { get; set; }

        public DateTime AtualizadoEm { get; set; }

        public int AtualizadoPor { get; set; }

        public int? IdReceita { get; set; }

        public string Codbarra { get; set; }

        public bool InclusoReserva { get; set; }

        public decimal PrecoReserva { get; set; }

        public int LimiteReserva { get; set; }

        public string DescricaoCozinha { get; set; }

        public bool RefeicaoCompleta { get; set; }

        public bool ComplementoRefeicao { get; set; }

        public bool Cozinha { get; set; }

        public bool BarPiscina { get; set; }

        public bool Drink { get; set; }

        public string Ean { get; set; }

        public string Unidade { get; set; }

        public long? IdFt { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
