using AppNetMaui.Classes.Globais;
using AppNetMaui.Services.Principal;
using AppNetMaui.Suporte;
using AppNetMaui.Classes.API.Principal;
using System.Diagnostics;

namespace AppNetMaui;

public partial class App : Application
{
    #region 1- VARIAVEIS
    APIErroLog error = new();
    APIVersaoApp api_versao = new();
    ExceptionHandlingService _exceptionService = new();
    #endregion

    #region 2 - METODOS CONSTRUTORES
    public App()
    {
        InitializeComponent();
        InfoGlobal.AjustarUrlsParaDebug();
        MainPage = new AppShell();
    }

    protected async override void OnStart()
    {
        base.OnStart();
        await MonitorAppActivities();
    }

    #endregion

    #region 3- METODOS

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

    public async Task VerificarConexaoInternet()
    {
        try
        {
            while (true)
            {
                var current = Connectivity.NetworkAccess;

                if (current == NetworkAccess.Internet)
                {
                    // Mede a velocidade da internet
                    var speed = await MeasureInternetSpeed();

                    if (speed < 0.25)
                    {
                        await MostrarAlertaConexaoRuim();
                    }
                    else
                    {
                        await VerificaVersaoAPP();
                    }
                }
                else
                {
                    await MostrarAlertaSemInternet();
                }

                await Task.Delay(1000);
            }
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            return;
        }
    }

    private async Task MostrarAlertaConexaoRuim()
    {
        await Application.Current.MainPage.DisplayAlert("Conexão Ruim", "Sua conexão de internet está lenta. Conecte-se a uma rede mais rápida. Suas informações já preenchidas podem ser solicitadas novamente.", "OK");
    }

    private async Task MostrarAlertaSemInternet()
    {
        await Application.Current.MainPage.DisplayAlert("Sem Internet", "Reconecte a internet para continuar usando o aplicativo.", "OK");
    }

    public async Task<double> MeasureInternetSpeed()
    {
        try
        {
            var stopwatch = new Stopwatch();
            stopwatch.Start();
            var client = new HttpClient();
            var result = await client.GetAsync("https://github.com/sivel/speedtest-cli/raw/master/speedtest.py");
            stopwatch.Stop();

            if (result.IsSuccessStatusCode)
            {
                var bytesDownloaded = await result.Content.ReadAsByteArrayAsync();
                var timeTaken = stopwatch.Elapsed.TotalSeconds;
                var speed = (bytesDownloaded.Length / timeTaken) * 8 / 1024 / 1024; // Mbps
                return speed;
            }
            else
            {
                return 0;
            }
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            return 0;
        }
    }

    private async Task VerificaVersaoAPP()
    {
        try
        {
            if (!await api_versao.VerificarVersaoInstalada())
            {
                if (string.IsNullOrEmpty(InfoGlobal.LastVersao))
                {
                    await Application.Current.MainPage.DisplayAlert("Atualização Disponível", "Uma nova versão do aplicativo está disponível. Por favor, atualize para continuar.", "OK");
                    await Launcher.OpenAsync(InfoGlobal.apk);
                    await Task.Delay(60000);
                }
            }
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            return;
        }
    }

    private async Task MonitorAppActivities()
    {
        while (true)
        {
            await VerificarConexaoInternet();
            await Task.Delay(1000);
        }
    }
    #endregion

    #region 4- EVENTOS DE CONTROLE

    #endregion
}
