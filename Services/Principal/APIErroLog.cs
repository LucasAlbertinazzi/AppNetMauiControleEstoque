using AppNetMaui.Classes.API.Principal;
using AppNetMaui.Classes.Globais;
using Newtonsoft.Json;
using System.Net.Http.Headers;
using System.Text;

namespace AppNetMaui.Services.Principal
{
    public class APIErroLog
    {
        private HttpClient _httpClient;

        public APIErroLog()
        {
            _httpClient = new HttpClient() { Timeout = new TimeSpan(0, 0, 2) };
        }

        public async Task<bool> LogErro(ErrorLogClass erro)
        {
            try
            {
                // Serialize o objeto versionInfo para JSON
                string json = JsonConvert.SerializeObject(erro);
                HttpContent content = new StringContent(json, Encoding.UTF8, "application/json");

                // Faça uma requisição POST para a rota "inserir-versao" na sua API

                string url = InfoGlobal.apiApp + "/Log/erro";
                HttpResponseMessage response = await _httpClient.PostAsync(url, content);

                // Verifique se a resposta foi bem-sucedida
                response.EnsureSuccessStatusCode();

                await Application.Current.MainPage.DisplayAlert("Erro", "Ocorreu um erro ao executar está ação, por favor, tente novamente mais tarde!", "OK");

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public async Task VerficaExistenciadeLogs()
        {
            var filePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "AppNetMauiLog.txt");

            if (File.Exists(filePath))
            {
                using (var _content = new MultipartFormDataContent())
                {
                    // Adiciona o arquivo ao conteúdo da requisição
                    var fileContent = new ByteArrayContent(File.ReadAllBytes(filePath));
                    fileContent.Headers.ContentDisposition = new ContentDispositionHeaderValue("form-data")
                    {
                        Name = "file", // O nome do campo deve corresponder ao nome esperado pela API
                        FileName = Path.GetFileName(filePath)
                    };

                    _content.Add(fileContent);

                    // Serialize o objeto versionInfo para JSON
                    string json = JsonConvert.SerializeObject(_content);
                    HttpContent content = new StringContent(json, Encoding.UTF8, "application/json");

                    string url = InfoGlobal.apiApp + "/Log/erro-file";
                    HttpResponseMessage response = await _httpClient.PostAsync(url, content);

                    // Verifique se a resposta foi bem-sucedida
                    response.EnsureSuccessStatusCode();

                    // Verifique a resposta
                    if (response.IsSuccessStatusCode)
                    {
                        File.Delete(filePath);
                    }
                }
            }
        }
    }
}
