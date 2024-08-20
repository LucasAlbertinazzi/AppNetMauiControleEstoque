using AppNetMaui.Classes.Globais;
using AppNetMaui.Suporte;
using AppNetMaui.Classes.API.Principal;
using Newtonsoft.Json;

namespace AppNetMaui.Services.Principal
{
    public class APIEnviaArquivos
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
        ImagensCache imagensCacheSup = new ImagensCache();
        public async Task<bool> SalvaImagens()
        {
            try
            {
                if (InfoGlobal.listaImagens != null && InfoGlobal.listaImagens.Count > 0)
                {
                    string[] parts = InfoGlobal.listaImagens[0].Split('_');

                    foreach (var item2 in InfoGlobal.listaImagens.Distinct().ToList())
                    {
                        if (!item2.Contains("_local"))
                        {
                            if (await UploadImageToServer(item2))
                            {
                                imagensCacheSup.ApagaGlobalListImagens(item2);
                                InfoGlobal.listaImagens.Remove(item2);
                            }
                        }
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return false;
            }
        }

        private async Task<bool> DeletePastas(string folderName)
        {
            try
            {
                string url = InfoGlobal.apiApp + $"/EnviaArquivos/delete/";

                using (var httpClient = new HttpClient())
                {
                    var response = await httpClient.GetAsync($"{url}{folderName}");

                    if (response.IsSuccessStatusCode)
                    {
                        return true;
                    }
                }

                return false;
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return false;
            }
        }

        private async Task<bool> UploadImageToServer(string imagePath)
        {
            try
            {
                string url = InfoGlobal.apiApp + "/EnviaArquivos/upload";

                using (var httpClient = new HttpClient())
                {
                    using (var content = new MultipartFormDataContent())
                    {
                        using (var fileStream = File.OpenRead(imagePath))
                        {
                            var streamContent = new StreamContent(fileStream);
                            content.Add(streamContent, "imageFile", Path.GetFileName(imagePath));

                            var response = await httpClient.PostAsync(url, content);

                            if (response.IsSuccessStatusCode)
                            {
                                return true;
                            }

                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return false;
            }
        }

        public async Task<List<string>> GetImagePathsFromAPI(string folderName, string itemName)
        {
            try
            {
                string url = InfoGlobal.apiApp + "/EnviaArquivos/localiza/";
                List<string> imagePaths = new List<string>();

                using (var httpClient = new HttpClient())
                {
                    var response = await httpClient.GetAsync($"{url}{folderName}/{itemName}");

                    if (response.IsSuccessStatusCode)
                    {
                        var content = await response.Content.ReadAsStringAsync();
                        imagePaths = JsonConvert.DeserializeObject<List<string>>(content);
                    }
                }

                return await SalvaImgLocalAsync(imagePaths, folderName, itemName);
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;
            }
        }

        private async Task<List<string>> SalvaImgLocalAsync(List<string> base64Images, string folderName, string itemName)
        {
            try
            {
                List<string> localPaths = new List<string>();
                string localAppDataFolder = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);

                int fotos = 0;
                foreach (var base64Image in base64Images)
                {
                    byte[] imageBytes = Convert.FromBase64String(base64Image);

                    string fileName = $"Foto_{folderName}_{itemName}_{fotos}_local.png";
                    fotos++;
                    string localImagePath = Path.Combine(localAppDataFolder, fileName);

                    using (FileStream destinationStream = new FileStream(localImagePath, FileMode.Create, FileAccess.Write))
                    {
                        await destinationStream.WriteAsync(imageBytes, 0, imageBytes.Length);
                    }

                    localPaths.Add(localImagePath);
                }

                return localPaths;
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
