using AppNetMaui.Classes.Globais;
using AppNetMaui.Suporte;
using AppNetMaui.Classes.API.Principal;
using Newtonsoft.Json;
using static MenuPrincipalClass;

namespace AppNetMaui.Services.Principal
{
    public class APIMenuPrincipal
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
        private HttpClient _httpClient;

        public APIMenuPrincipal()
        {
            _httpClient = new HttpClient() { Timeout = new TimeSpan(0, 0, 10) };
        }

        public async Task<List<MenuItemModel>> ListaMenuPrincipal(string departamento)
        {
            try
            {
                string uri = InfoGlobal.apiApp + "/MenuPrincipal/menu-principal?func=" + departamento + "";

                HttpResponseMessage response = await _httpClient.GetAsync(uri);

                if (response.IsSuccessStatusCode)
                {
                    var responseContent = await response.Content.ReadAsStringAsync();

                    return JsonConvert.DeserializeObject<List<MenuItemModel>>(responseContent);
                }

                return null;
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
