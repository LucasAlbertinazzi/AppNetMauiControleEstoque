using AppNetMaui.Classes.API.Auditoria;
using AppNetMaui.Classes.Globais;
using AppNetMaui.Services.Principal;
using AppNetMaui.Suporte;
using AppNetMaui.Classes.API.Principal;
using Newtonsoft.Json;

namespace AppNetMaui.Services.Auditoria
{
    public class APIItensAud
    {
        #region 1- LOG
        APIErroLog error = new();
        ExceptionHandlingService _exceptionService = new();
        private async Task MetodoErroLog(Exception ex)
        {
            var erroLog = new ErrorLogClass
            {
                Erro = ex.Message, // Obtém a mensagem de erro
                Metodo = ex.TargetSite.Name, // Obtém o nome do método que gerou o erro
                Dispositivo = DeviceInfo.Model, // Obtém o nome do dispositivo em execução
                Versao = DeviceInfo.Version.ToString(), // Obtém a versão do dispostivo
                Plataforma = DeviceInfo.Platform.ToString(), // Obtém o sistema operacional do dispostivo
                TelaClasse = GetType().FullName, // Obtém o nome da tela/classe
                Data = DateTime.Now,
            };

            await error.LogErro(erroLog);
            await _exceptionService.ReportError(ex);

        }
        #endregion

        #region 2- API
        public async Task<List<ItensClass>> ListaItens()
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Itens";

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.GetStringAsync(uri);
                    var retorno = JsonConvert.DeserializeObject<ItensClass[]>(resposta).ToList();
                    List<ItensClass> itens = new List<ItensClass>();
                    itens = retorno.ToList();
                    return itens;
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;
            }
        }

        public async Task<List<ItensClass>> ListaItensId(int id)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Itens/itens-id?id=" + id.ToString();

                List<ItensClass> cont = new List<ItensClass>();

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.GetStringAsync(uri);
                    var retorno = JsonConvert.DeserializeObject<ItensClass[]>(resposta).ToList();
                    List<ItensClass> itens = new List<ItensClass>();
                    itens = retorno.ToList();
                    return itens;
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;
            }
        }

        public async Task<EstPrevistoClass> EstoquePrevisto(string sku)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Itens/estoque-previsto?sku=" + sku;

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.GetStringAsync(uri);
                    var resultado = JsonConvert.DeserializeObject<EstPrevistoClass>(resposta);
                    return resultado;
                }
            }
            catch (Exception ex)
            {
                // Trate o erro conforme necessário
                await MetodoErroLog(ex);
                return null;
            }
        }

        #endregion
    }
}
