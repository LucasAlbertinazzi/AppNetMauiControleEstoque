using AppNetMaui.Services.Principal;

namespace AppNetMaui.Suporte
{

    public class ExceptionHandlingService
    {
        APIErroLog error = new();

        public async Task ReportError(Exception exception, string screenName = "", string action = "")
        {
            await LogError(exception, screenName, action);
        }

        private async Task LogError(Exception exception, string screenName, string action)
        {
            // Formata a mensagem de log com as informações adicionais
            var logMessage = $" Aparelho '{DeviceInfo.Name}': Data ={DateTime.Now}: Erro na tela '{screenName}', ação '{action}': {exception.Message}\n{exception.StackTrace}\n";

            // Caminho para o arquivo de log
            var logPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "appLog.txt");

            try
            {
                // Verifica se o arquivo de log existe de forma assíncrona
                if (File.Exists(logPath))
                {
                    // Lê o conteúdo existente do arquivo de forma assíncrona
                    using (var reader = new StreamReader(logPath))
                    {
                        var existingLogContent = await reader.ReadToEndAsync();

                        // Prepara o novo conteúdo do log colocando o log mais recente no início
                        var newLogContent = logMessage + existingLogContent;

                        // Reescreve o arquivo de log com o novo conteúdo de forma assíncrona
                        using (var writer = new StreamWriter(logPath))
                        {
                            await writer.WriteAsync(newLogContent);
                        }
                    }
                }
                else
                {
                    // Se o arquivo de log não existir, simplesmente cria um novo e adiciona o log de forma assíncrona
                    using (var writer = new StreamWriter(logPath))
                    {
                        await writer.WriteAsync(logMessage);
                    }
                }

                await error.VerficaExistenciadeLogs();
            }
            catch (Exception ex)
            {
                // Lidar com exceções ao ler/escrever arquivos, se necessário
                Console.WriteLine($"Erro ao manipular arquivo de log: {ex.Message}");
            }
        }
    }
}
