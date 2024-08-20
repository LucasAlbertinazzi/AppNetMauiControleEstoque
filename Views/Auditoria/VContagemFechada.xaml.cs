using AppNetMaui.Classes.API.Auditoria;
using AppNetMaui.Classes.Globais;
using AppNetMaui.Model.Auditoria;
using AppNetMaui.Services.Auditoria;
using AppNetMaui.Services.Principal;
using AppNetMaui.Suporte;
using AppNetMaui.Classes.API.Principal;

namespace AppNetMaui.Views;

public partial class VContagemFechada : ContentPage
{
    #region 1- VARIAVEIS
    APIEstoqueAud apiEstoque = new();
    APILocalAud apiLocal = new();
    APIErroLog error = new();
    ExceptionHandlingService _exceptionService = new();

    List<ContagemAbertaModel> card_fechadas = new List<ContagemAbertaModel>();
    #endregion

    #region 2 - METODOS CONSTRUTORES
    public VContagemFechada()
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

    private void ContentPage_Loaded(object sender, EventArgs e)
    {
        try
        {
            DatasInicial();
            cvFechadas.IsEnabled = true;
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
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

    private void DatasInicial()
    {
        try
        {
            dpInicial.Date = DateTime.Now.AddDays(1);
            dpFinal.Date = DateTime.Now.AddDays(-30);
        }
        catch (Exception ex)
        {
            MetodoErroLog(ex);
            return;
        }
    }

    private async Task CarregaContagem()
    {
        try
        {
            cvFechadas.IsVisible = false;
            LoadingIndicator.IsVisible = true;
            LoadingIndicator.IsRunning = true;

            DataContagem dataContagem = new DataContagem { inicio = dpInicial.Date, final = dpFinal.Date };

            List<EstoqueClass> lista = new List<EstoqueClass>();

            lista = await apiEstoque.ContagensFechadas(dataContagem);
            card_fechadas = new List<ContagemAbertaModel>();
            card_fechadas.Clear();
            cvFechadas.ItemsSource = null;

            if (lista != null && lista.Count > 0)
            {
                avisoNoList.IsVisible = false;

                for (int i = 0; i < lista.Count; i++)
                {
                    var loc = await apiLocal.Locais();
                    var local = loc.Where(x => x.IdLocal == lista[i].IdLocal).ToList();

                    card_fechadas.Add(new ContagemAbertaModel
                    {
                        Id = lista[i].IdLista,
                        IdLista = "Contagem N°: \r\r" + lista[i].IdLista.ToString(),
                        Local = "Local: \r\r" + local[0].Local,
                        DataAbre = "Aberto dia: \r\r" + lista[i].DataAbre.ToShortDateString(),
                    });
                }

                cvFechadas.ItemsSource = card_fechadas.OrderByDescending(x => x.Id);
            }
            else
            {
                avisoNoList.IsVisible = true;
            }

            cvFechadas.IsVisible = true;
            LoadingIndicator.IsVisible = false;
            LoadingIndicator.IsRunning = false;
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            return;
        }
    }

    #endregion

    #region 4- EVENTOS DE CONTROLE
    private async void btnVisualizar_Clicked(object sender, EventArgs e)
    {
        try
        {
            cvFechadas.IsEnabled = false;

            Button b = (Button)sender;

            string c = b.CommandParameter.ToString().Replace("Contagem N°: \r\r", "");

            foreach (var a in card_fechadas)
            {
                if (a.Id == int.Parse(c))
                {
                    await Navigation.PushModalAsync(new VNewContagem((int)a.Id, 2, a.Local));
                }
            }
        }
        catch (Exception ex)
        {
            await MetodoErroLog(ex);
            return;
        }
    }

    private async void dpFinal_DateSelected(object sender, DateChangedEventArgs e)
    {
        await CarregaContagem();
    }
    #endregion
}