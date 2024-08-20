using AppNetMaui.Classes.Globais;
using AppNetMaui.Services.Principal;
using AppNetMaui.Classes.API.Principal;

namespace AppNetMaui.Suporte
{
    public class ImagensCache
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

        #region 2- CLASSE
        public List<string> imagePathFinal = new List<string>();

        public void ApagaCacheImagens()
        {
            try
            {
                // Verifica se a lista de caminhos de imagem não está vazia e não é nula
                if (imagePathFinal != null && imagePathFinal.Count > 0)
                {
                    foreach (var item in imagePathFinal)
                    {
                        if (File.Exists(item))
                        {
                            File.Delete(item); // Apaga o arquivo
                        }
                    }

                    imagePathFinal.Clear(); // Limpa a lista de caminhos de imagem
                }

                // Obtém o caminho completo para a pasta das imagens
                var picturesDir = FileSystem.AppDataDirectory;
                var imageFolder = Path.Combine(picturesDir, "MyAppImages");

                // Verifica se o diretório existe antes de continuar
                if (Directory.Exists(imageFolder))
                {
                    Directory.Delete(imageFolder, true); // Apaga a pasta de imagens e seu conteúdo
                }
            }
            catch (Exception ex)
            {
                MetodoErroLog(ex);
                return;
            }
        }

        public void ApagaGlobalListImagens(string item)
        {
            try
            {
                if (File.Exists(item))
                {
                    File.Delete(item);
                }

                imagePathFinal = null;
                InfoGlobal.listaImagens.Clear();
            }
            catch (Exception ex)
            {
                MetodoErroLog(ex);
                return;
            }
        }
        #endregion
    }
}
