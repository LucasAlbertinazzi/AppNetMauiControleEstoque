using AppNetMaui.Classes.API.Auditoria;
using AppNetMaui.Classes.Globais;
using AppNetMaui.Services.Principal;
using AppNetMaui.Suporte;
using AppNetMaui.Classes.API.Principal;
using Newtonsoft.Json;

namespace AppNetMaui.Services.Auditoria
{
    public class APIGruposAud
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
        public async Task<List<GrupoClass>> Grupos()
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Grupo/lista-grupos";

                using (var cliente = new HttpClient())
                {
                    var resposta = cliente.GetStringAsync(uri);
                    resposta.Wait();
                    var retorno = JsonConvert.DeserializeObject<GrupoClass[]>(resposta.Result).ToList();
                    List<GrupoClass> grupo = new List<GrupoClass>();
                    grupo = retorno.ToList();
                    return grupo;
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;

            }
        }

        public async Task<List<GrupoClass>> GruposPorCategoria(int id)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Grupo/grupos-id-cat?id_cat=" + id;

                using (var cliente = new HttpClient())
                {
                    var resposta = cliente.GetStringAsync(uri);
                    resposta.Wait();

                    var grupo = JsonConvert.DeserializeObject<GrupoClass[]>(resposta.Result).ToList();

                    return grupo;
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;
            }
        }

        public async Task<List<GruposCategoria>> GrupoCategoria(string grupos, int cat, string local)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Grupo?";

                using (var cliente = new HttpClient())
                {
                    uri = uri + "IdGrupo=" + grupos + "&IdCategoria=" + cat.ToString() + "&IdLocal=" + local.ToUpper();
                    var resposta = cliente.GetStringAsync(uri);
                    resposta.Wait();
                    var dados = JsonConvert.DeserializeObject<GruposCategoria[]>(resposta.Result).ToList();

                    return dados;
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
