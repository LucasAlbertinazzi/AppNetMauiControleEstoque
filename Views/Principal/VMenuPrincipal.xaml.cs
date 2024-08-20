using AppNetMaui.Classes.Globais;
using AppNetMaui.Services.Principal;
using AppNetMaui.Suporte;
using AppNetMaui.ViewModel.Principal;
using AppNetMaui.Classes.API.Principal;
using static MenuPrincipalClass;
using static Microsoft.Maui.Controls.Button;
using static Microsoft.Maui.Controls.Button.ButtonContentLayout;

namespace AppNetMaui.Views;

public partial class VMenuPrincipal : ContentPage
{
    #region 1- VARIAVEIS
    MenuPrincipalVModel menuPrincipalModels = new MenuPrincipalVModel();
    APIMenuPrincipal aPIMenuPrincipal = new APIMenuPrincipal();

    APIErroLog error = new();
    ExceptionHandlingService _exceptionService = new();
    #endregion

    #region 2 - METODOS CONSTRUTORES
    public VMenuPrincipal()
    {
        InitializeComponent();
        Inicializa();
    }

    private async void ContentPage_Loaded(object sender, EventArgs e)
    {
        try
        {
            LoadingIndicator.IsVisible = true;
            LoadingIndicator.IsRunning = true;

            await CreateMenu();

            LoadingIndicator.IsVisible = false;
            LoadingIndicator.IsRunning = false;
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            throw;
        }

    }

    #endregion

    #region 3- METODOS

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

    private void Inicializa()
    {
        try
        {
            App.Current.MainPage.SetValue(Shell.FlyoutBehaviorProperty, FlyoutBehavior.Flyout);
            NavigationPage.SetHasNavigationBar(this, false);
            InfoGlobal.isMenuOpen = true;
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return;
        }

    }

    private async Task CreateMenu()
    {
        try
        {
            // Crie os bot�es dinamicamente
            int rowIndex = 0;
            int columnIndex = 0;

            List<MenuItemModel> lista = await CarregaMenu();

            if (lista != null)
            {
                foreach (var item in lista)
                {
                    Button button = new Button();

                    button.Text = item.TextoBtn.ToUpper();
                    button.CommandParameter = item.NomeMetodo;
                    button.Clicked += MenuItem_Clicked;
                    button.Style = (Style)Application.Current.Resources["btnMenuPadrao"];

                    // Centralize horizontalmente e verticalmente o conte�do do bot�o
                    button.HorizontalOptions = LayoutOptions.Center;
                    button.VerticalOptions = LayoutOptions.Center;

                    // Crie o �cone usando FontImageSource
                    button.ImageSource = item.CodIcone;

                    // Defina o tamanho da fonte do texto do bot�o
                    button.FontSize = GetFontSizeForDevice();
                    button.LineBreakMode = LineBreakMode.WordWrap;

                    // Adicione margens aos bot�es
                    if (columnIndex == 0)
                    {
                        button.Margin = new Thickness(10, 10, 5, 10); // Margem dos bot�es na coluna 0
                    }
                    else if (columnIndex == 1)
                    {
                        button.Margin = new Thickness(5, 10, 10, 10); // Margem dos bot�es na coluna 1
                    }

                    // Defina o valor do Padding do bot�o
                    button.Padding = new Thickness(GetButtonPaddingForDevice());
                    button.ContentLayout = new ButtonContentLayout(ImagePosition.Bottom, 8);

                    Grid.SetRow(button, rowIndex);
                    Grid.SetColumn(button, columnIndex);

                    mainGrid.Children.Add(button);

                    // Atualize a posi��o da linha e coluna
                    columnIndex++;
                    if (columnIndex > 1)
                    {
                        columnIndex = 0;
                        rowIndex++;
                    }

                    // Verifique se h� uma nova linha a ser criada
                    if (columnIndex == 0)
                    {
                        mainGrid.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });
                    }
                }

                // Chame o m�todo mainGrid_SizeChanged para atualizar as dimens�es dos bot�es
                mainGrid_SizeChanged(null, EventArgs.Empty);
            }
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            return;
        }
    }

    private async Task<List<MenuItemModel>> CarregaMenu()
    {
        try
        {
            return await aPIMenuPrincipal.ListaMenuPrincipal(InfoGlobal.funcao);
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            return null;
        }
    }

    private double GetButtonPaddingForDevice()
    {
        try
        {
            double screenWidth = DeviceDisplay.MainDisplayInfo.Width / DeviceDisplay.MainDisplayInfo.Density;

            // Ajuste o valor de acordo com suas prefer�ncias
            double buttonPadding = screenWidth / 15;

            return buttonPadding;
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return 0;
        }
    }

    private double GetFontSizeForDevice()
    {
        try
        {
            double screenWidth = DeviceDisplay.MainDisplayInfo.Width / DeviceDisplay.MainDisplayInfo.Density;

            // Ajuste o valor de acordo com suas prefer�ncias
            double fontSize = screenWidth / 22;

            return fontSize;
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return 0;
        }

    }

    protected override bool OnBackButtonPressed()
    {
        // Impedir que a a��o padr�o do bot�o "Voltar" seja executada
        return true;
    }

    #endregion

    #region 4- EVENTOS DE CONTROLE
    private void mainGrid_SizeChanged(object sender, EventArgs e)
    {
        try
        {
            double screenWidth = DeviceDisplay.MainDisplayInfo.Width / DeviceDisplay.MainDisplayInfo.Density;
            double buttonWidth = screenWidth / 2.3;

            double screenHeight = DeviceDisplay.MainDisplayInfo.Height / DeviceDisplay.MainDisplayInfo.Density;
            double buttonHeight = screenHeight / 5;

            foreach (View child in mainGrid.Children)
            {
                if (child is Button button)
                {
                    button.WidthRequest = buttonWidth;
                    button.HeightRequest = buttonHeight;
                }
            }
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return;
        }

    }

    private async void MenuItem_Clicked(object sender, EventArgs e)
    {
        try
        {
            LoadingIndicator.IsVisible = true;
            LoadingIndicator.IsRunning = true;

            Button button = (Button)sender;
            string value = button.CommandParameter.ToString();

            await menuPrincipalModels.RedirecionaFuncao(value);

            LoadingIndicator.IsVisible = false;
            LoadingIndicator.IsRunning = false;
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
        }
    }
    #endregion
}