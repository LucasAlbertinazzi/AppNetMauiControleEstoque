using AppNetMaui.Classes.API.Auditoria;
using AppNetMaui.Classes.Globais;
using AppNetMaui.Services.Principal;
using AppNetMaui.Suporte;
using AppNetMaui.Classes.API.Principal;
using Newtonsoft.Json;

namespace AppNetMaui.Services.Auditoria
{
    public class APICategoriaAud
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
        public async Task<List<CategoriaClass>> Categorias()
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Categoria/lista-categorias";

                using (var cliente = new HttpClient())
                {
                    var resposta = cliente.GetStringAsync(uri);
                    resposta.Wait();
                    var retorno = JsonConvert.DeserializeObject<CategoriaClass[]>(resposta.Result).ToList();
                    List<CategoriaClass> cat = new List<CategoriaClass>();
                    cat = retorno.ToList();
                    return cat;
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;
            }
        }
        #endregion
    }
}
