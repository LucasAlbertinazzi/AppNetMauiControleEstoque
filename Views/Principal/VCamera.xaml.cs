using AppNetMaui.Classes.Globais;
using AppNetMaui.Services.Principal;
using AppNetMaui.Suporte;
using AppNetMaui.Classes.API.Principal;

namespace AppNetMaui.Views.Principal;

public partial class VCamera : ContentPage
{
    #region 1- PERMISSOES

    #endregion

    #region 2- VARIAVEIS

    ImagensCache imagensCacheSup = new ImagensCache();

    private List<string> galeriaImagens = new List<string>();
    private List<string> galeriaImagensLocal = new List<string>();

    private int IdContagem;
    private int IdItem;
    private bool useglobal;
    private bool camera;

    APIEnviaArquivos apiEnviaArquivos = new APIEnviaArquivos();
    APIErroLog error = new();
    ExceptionHandlingService _exceptionService = new();
    #endregion

    #region 3- CLASSES

    #endregion

    #region 4- METODOS CONSTRUTORES
    public VCamera(int item, int contagem, bool _useglobal, bool _camera)
    {
        InitializeComponent();

        try
        {
            IdItem = item;
            IdContagem = contagem;
            useglobal = _useglobal;
            camera = _camera;

            App.Current.MainPage.SetValue(Shell.FlyoutBehaviorProperty, FlyoutBehavior.Disabled);
            NavigationPage.SetHasNavigationBar(this, false);
            InfoGlobal.isMenuOpen = false;
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return;
        }
    }

    private async void ContentPage_Loaded(object sender, EventArgs e)
    {
        await MetodosIniciais();
    }

    #endregion

    #region 5- METODOS

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

    private async Task CarregaGaleria()
    {
        try
        {
            List<string> imgServerPaths = new List<string>();
            imgServerPaths = await apiEnviaArquivos.GetImagePathsFromAPI(IdContagem.ToString(), IdItem.ToString());

            galeriaImagens.Clear();

            if (imgServerPaths.Count > 0)
            {
                galeriaImagens.AddRange(imgServerPaths);
            }

            if (galeriaImagensLocal.Count > 0)
            {
                galeriaImagens.AddRange(galeriaImagensLocal);
            }

            if (galeriaImagens.Count > 0)
            {
                stackGaleria.IsVisible = true;
                var ultimaImagem = galeriaImagens[galeriaImagens.Count - 1];

                imgGaleria.Source = ImageSource.FromFile(ultimaImagem);
            }
            else
            {
                stackGaleria.IsVisible = false;
            }
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            return;
        }

    }

    private void MostraGaleria()
    {
        try
        {
            if (galeriaImagens.Count == 0)
            {
                stackGaleria.IsVisible = false;
            }
            else
            {
                stackGaleria.IsVisible = true;
                var ultimaImagem = galeriaImagens[galeriaImagens.Count - 1];

                // Use FFImageLoading para exibir a imagem.
                imgGaleria.Source = ImageSource.FromFile(ultimaImagem);
            }
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return;
        }
    }

    private async Task MetodosIniciais()
    {
        try
        {
            App.Current.MainPage.SetValue(Shell.FlyoutBehaviorProperty, FlyoutBehavior.Disabled);
            NavigationPage.SetHasNavigationBar(this, false);

            cameraView.HeightRequest = ResponsiveAuto.Height(1);
            cameraView.WidthRequest = ResponsiveAuto.Width(2);

            if (!camera)
            {
                btnFoto.IsEnabled = false;
            }

            stackGaleria.IsVisible = false;
            LoadingIndicator.IsVisible = true;
            LoadingIndicator.IsRunning = true;

            CarregaImagemLocal();
            await CarregaGaleria();

            if (!useglobal)
            {
                if (imagensCacheSup.imagePathFinal != null)
                {
                    if (imagensCacheSup.imagePathFinal.Count <= 0)
                    {
                        stackGaleria.IsVisible = false;
                    }
                    else
                    {
                        stackGaleria.IsVisible = true;
                        galeriaImagens = imagensCacheSup.imagePathFinal;
                    }
                }
            }

            if (galeriaImagens != null)
            {
                stackGaleria.IsVisible = true;
                imagensCacheSup.imagePathFinal.AddRange(galeriaImagens);
            }

            stackGaleria.IsVisible = true;
            LoadingIndicator.IsVisible = false;
            LoadingIndicator.IsRunning = false;
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            return;
        }
    }

    protected override bool OnBackButtonPressed()
    {
        try
        {
            imagensCacheSup.imagePathFinal.AddRange(galeriaImagens);
            imagensCacheSup.imagePathFinal.AddRange(galeriaImagensLocal);

            if (imagensCacheSup.imagePathFinal != null)
            {
                if (imagensCacheSup.imagePathFinal.Count > 0)
                {
                    InfoGlobal.listaImagens.AddRange(imagensCacheSup.imagePathFinal);
                    InfoGlobal.IdItemCamera = IdItem;
                }
            }

            App.Current.MainPage.SetValue(Shell.FlyoutBehaviorProperty, FlyoutBehavior.Flyout);
            NavigationPage.SetHasNavigationBar(this, false);
            InfoGlobal.isMenuOpen = true;

            return base.OnBackButtonPressed();
        }

        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return base.OnBackButtonPressed();
        }
    }

    private byte[] GetImageBytes(ImageSource imageSource)
    {
        try
        {
            using (MemoryStream ms = new MemoryStream())
            {
                var streamImageSource = (StreamImageSource)imageSource;
                var cancellationToken = System.Threading.CancellationToken.None;
                var task = streamImageSource.Stream(cancellationToken);
                task.ContinueWith(t =>
                {
                    using (Stream stream = t.Result)
                    {
                        stream.CopyTo(ms);
                    }
                }, cancellationToken).Wait();

                return ms.ToArray();
            }

        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return null;
        }
    }

    private void CarregaImagemLocal()
    {
        try
        {
            var picturesDir = FileSystem.AppDataDirectory;
            var imageFolder = System.IO.Path.Combine(picturesDir, "MyAppImages");

            galeriaImagensLocal.Clear();

            if (Directory.Exists(imageFolder))
            {
                var imageFiles = Directory.GetFiles(imageFolder, $"*_{IdContagem}_Item_{IdItem}_*.png");

                if (imageFiles.Length > 0)
                {
                    foreach (var imagePath in imageFiles)
                    {
                        galeriaImagensLocal.Add(imagePath);
                    }
                }
            }
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return;
        }
    }
    #endregion

    #region 6- EVENTOS DE CONTROLE

    private void btnFoto_Clicked(object sender, EventArgs e)
    {
        try
        {
            DateTime currentTime = DateTime.Now;
            var imageName = $"Foto_{IdContagem}_Item_{IdItem}_{currentTime:yyyyMMdd_HHmmss}.png";
            var imageBytes = GetImageBytes(cameraView.GetSnapShot(Camera.MAUI.ImageFormat.PNG));

            var picturesDir = FileSystem.AppDataDirectory;
            var imageFolder = System.IO.Path.Combine(picturesDir, "MyAppImages");
            Directory.CreateDirectory(imageFolder);

            string imagePath = System.IO.Path.Combine(imageFolder, imageName);

            File.WriteAllBytes(imagePath, imageBytes);

            galeriaImagens.Add(imagePath);

            MostraGaleria();
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return;
        }
    }

    private void cameraView_CamerasLoaded(object sender, EventArgs e)
    {
        try
        {
            cameraView.Camera = cameraView.Cameras.FirstOrDefault();

            MainThread.BeginInvokeOnMainThread(async () =>
            {
                await cameraView.StopCameraAsync();
                var result = await cameraView.StartCameraAsync();
            });
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return;
        }
    }

    private void btnGaleria_Clicked(object sender, EventArgs e)
    {
        try
        {
            var visualizadorImagem = new VVisualizadorImagem(FiltroImagens());
            Navigation.PushModalAsync(visualizadorImagem);
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return;
        }
    }

    private List<string> FiltroImagens()
    {
        try
        {
            List<string> galeriaVisualiza = new List<string>();

            foreach (string imagem in galeriaImagens)
            {
                if (imagem.Contains($"_{IdContagem}_") && imagem.Contains($"_{IdItem}_"))
                {
                    galeriaVisualiza.Add(imagem);
                }
            }

            foreach (string imagemLocal in galeriaImagensLocal)
            {
                if (imagemLocal.Contains($"_{IdContagem}_") && imagemLocal.Contains($"_{IdItem}_"))
                {
                    galeriaVisualiza.Add(imagemLocal);
                }
            }

            // Remover itens duplicados usando Distinct()
            galeriaVisualiza = galeriaVisualiza.Distinct().ToList();

            return galeriaVisualiza;
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return null;
        }
    }
    #endregion
}