using AppNetMaui.Services.Principal;
using AppNetMaui.Suporte;
using AppNetMaui.Classes.API.Principal;

namespace AppNetMaui.Views.Principal;

public partial class VVisualizadorImagem : ContentPage
{
    #region 1- Variaveis
    private List<string> imagePath;
    private int currentIndex = 0;

    APIErroLog error = new();
    ExceptionHandlingService _exceptionService = new();

    ImagensCache imagensCacheSup = new ImagensCache();
    #endregion

    #region 2- Construtores
    public VVisualizadorImagem(List<string> imagePath)
    {
        InitializeComponent();

        try
        {
            // Configura��o do tamanho do CarouselView para ocupar toda a tela.
            carrocel.HeightRequest = ResponsiveAuto.Height(1);
            carrocel.WidthRequest = ResponsiveAuto.Width(1);

            this.imagePath = imagePath;
            carrocel.ItemsSource = imagePath;
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
        }

    }

    #endregion

    #region 3- Metodos
    private void VerificaImagens()
    {
        if (imagePath.Count <= 0)
        {
            OnBackButtonPressed();
        }
    }

    private async Task MetodoErroLog(Exception ex)
    {
        var erroLog = new ErrorLogClass
        {
            Erro = ex.Message, // Obt�m a mensagem de erro
            Metodo = ex.TargetSite.Name, // Obt�m o nome do m�todo que gerou o erro
            Dispositivo = DeviceInfo.Model, // Obt�m o nome do dispositivo em execu��o
            Versao = DeviceInfo.Version.ToString(), // Obt�m a vers�o do dispostivo
            Plataforma = DeviceInfo.Platform.ToString(), // Obt�m o sistema operacional do dispostivo
            TelaClasse = GetType().FullName, // Obt�m o nome da tela/classe
            Data = DateTime.Now,
        };

        await error.LogErro(erroLog);
        await _exceptionService.ReportError(ex);
    }

    #endregion

    #region 4- Eventos de Controle
    protected override bool OnBackButtonPressed()
    {
        return base.OnBackButtonPressed();
    }

    private async void OnDeleteClicked(object sender, EventArgs e)
    {
        try
        {
            if (await DisplayAlert("AVISO", "Deseja excluir essa foto?", "Sim", "N�o"))
            {
                if (currentIndex >= 0 && currentIndex < imagePath.Count)
                {
                    // Remover a imagem da lista de caminhos de imagem.
                    string imagePathToDelete = imagePath[currentIndex];
                    imagePath.RemoveAt(currentIndex);

                    // Excluir a imagem do armazenamento local.
                    if (File.Exists(imagePathToDelete))
                    {
                        File.Delete(imagePathToDelete);
                    }

                    // Atualizar o CarouselView para refletir a mudan�a na lista.
                    carrocel.ItemsSource = null;
                    carrocel.ItemsSource = imagePath;
                    imagensCacheSup.imagePathFinal = imagePath;
                }
            }

            VerificaImagens();
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            throw;
        }
    }
    #endregion
}