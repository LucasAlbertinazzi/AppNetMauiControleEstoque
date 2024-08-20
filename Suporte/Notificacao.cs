using AppNetMaui.Classes.API.Principal;
using AppNetMaui.Services.Principal;
using AppNetMaui.Classes.API.Principal;
using Plugin.LocalNotification;
using Plugin.LocalNotification.AndroidOption;

namespace AppNetMaui.Suporte
{
    public class Notificacao
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
        public async Task EnviaNotificacao(NotificacaoClass infoNotifica)
        {
            try
            {
                var request = new NotificationRequest
                {
                    NotificationId = infoNotifica.NotificationId,
                    Title = infoNotifica.Title,
                    Subtitle = infoNotifica.Subtitle,
                    Description = infoNotifica.Description,
                    BadgeNumber = 10,
                    CategoryType = NotificationCategoryType.Status,
                    Schedule = new NotificationRequestSchedule
                    {
                        NotifyTime = DateTime.Now.AddSeconds(5),
                    },
                    Android = new AndroidOptions
                    {
                        Priority = AndroidPriority.Max,
                        VibrationPattern = new long[] { 0, 200, 100, 200, 100, 200 },
                    }
                };

                await LocalNotificationCenter.Current.Show(request);
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return;
            }
        }
        #endregion
    }
}
