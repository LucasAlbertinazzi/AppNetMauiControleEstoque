using AppNetMaui.Classes.API.Auditoria;
using AppNetMaui.Classes.Globais;
using AppNetMaui.Model.Auditoria;
using AppNetMaui.Services.Auditoria;
using AppNetMaui.Services.Principal;
using AppNetMaui.Suporte;
using AppNetMaui.Classes.API.Principal;

namespace AppNetMaui.Views;

public partial class VContagemAberta : ContentPage
{
    #region 1- VARIAVEIS
    APIEstoqueAud apiEstoque = new();
    APILocalAud apiLocal = new();
    APIErroLog error = new();
    ExceptionHandlingService _exceptionService = new();

    List<ContagemAbertaModel> card_abertas = new List<ContagemAbertaModel>();
    #endregion

    #region 2 - METODOS CONSTRUTORES
    public VContagemAberta()
    {
        InitializeComponent();

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

    private async void ContentPage_Loaded(object sender, EventArgs e)
    {
        try
        {
            await CarregaContagem();
            cvAbertas.IsEnabled = true;
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            return;
        }
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

    private async Task CarregaContagem()
    {
        try
        {
            card_abertas.Clear();
            cvAbertas.ItemsSource = null;
            cvAbertas.IsVisible = false;
            LoadingIndicator.IsVisible = true;
            LoadingIndicator.IsRunning = true;

            List<EstoqueClass> lista = await apiEstoque.ContagensAbertas();
            card_abertas = new List<ContagemAbertaModel>();

            if (lista != null && lista.Count > 0)
            {
                avisoNoList.IsVisible = false;

                for (int i = 0; i < lista.Count; i++)
                {
                    var loc = await apiLocal.Locais();
                    var local = loc.Where(x => x.IdLocal == lista[i].IdLocal).ToList();

                    card_abertas.Add(new ContagemAbertaModel
                    {
                        Id = lista[i].IdLista,
                        IdLista = "Contagem N°: \r\r" + lista[i].IdLista.ToString(),
                        Local = "Local: \r\r" + local[0].Local,
                        DataAbre = "Aberto dia: \r\r" + lista[i].DataAbre.ToShortDateString(),
                        Data = lista[i].DataAbre
                    });
                }

                cvAbertas.ItemsSource = card_abertas.OrderBy(x => x.Data);
            }
            else
            {
                avisoNoList.IsVisible = true;
            }

            cvAbertas.IsVisible = true;
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
        Especifica();
        return true; // Retornar true para indicar que o evento foi tratado
    }

    private async void Especifica()
    {
        // Ao clicar no botão, navegar de volta para a página inicial
        await Navigation.PushModalAsync(new VMenuPrincipal());
    }
    #endregion

    #region 4- EVENTOS DE CONTROLE
    private async void btnVisualizar_Clicked(object sender, EventArgs e)
    {
        try
        {
            cvAbertas.IsEnabled = false;

            Button b = (Button)sender;

            string c = b.CommandParameter.ToString().Replace("Contagem N°: \r\r", "");

            foreach (var a in card_abertas)
            {
                if (a.Id == int.Parse(c))
                {
                    await Navigation.PushModalAsync(new VNewContagem((int)a.Id, 1, a.Local));
                }
            }
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            return;
        }
    }

    private async void btnExcluir_Clicked(object sender, EventArgs e)
    {
        try
        {
            bool excluido = false;
            cvAbertas.IsEnabled = false;
            Button b = (Button)sender;
            string c = b.CommandParameter.ToString().Replace("Contagem N°: \r\r", "");

            foreach (var a in card_abertas)
            {
                if (a.Id == int.Parse(c))
                {
                    if (await DisplayAlert("AVISO", "Deseja exluir a contagem Nº: " + a.Id + " ?", "Sim", "Não"))
                    {
                        if (await apiEstoque.ExcluiLista((int)a.Id))
                        {
                            await DisplayAlert("Aviso", "Contagem excluida com sucesso!", "Ok");
                            excluido = true;
                        }
                    }
                }
            }

            if (excluido)
            {
                await CarregaContagem();
            }
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            return;
        }
    }

    #endregion
}