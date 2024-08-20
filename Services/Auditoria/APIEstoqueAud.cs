using AppNetMaui.Classes.API.Auditoria;
using AppNetMaui.Classes.Globais;
using AppNetMaui.Services.Principal;
using AppNetMaui.Suporte;
using AppNetMaui.Classes.API.Principal;
using Newtonsoft.Json;
using System.Text;

namespace AppNetMaui.Services.Auditoria
{
    public class APIEstoqueAud
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
        private readonly HttpClient _httpClient;

        public APIEstoqueAud()
        {
            _httpClient = new HttpClient() { Timeout = new TimeSpan(0, 0, 20) };
        }

        public async Task<bool> AtualizaContagemFull(EstoqueClass lista)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/atualiza-contagem";

                using (var cliente = new HttpClient())
                {
                    var contagem = new EstoqueClass();
                    contagem.IdCategoria = lista.IdCategoria;
                    contagem.IdGrupo = lista.IdGrupo;
                    contagem.DataFecha = lista.DataFecha;
                    contagem.UserFecha = lista.UserFecha;
                    contagem.IdLocal = lista.IdLocal;
                    contagem.Finalizado = lista.Finalizado;
                    contagem.IdCategoriaLista = lista.IdCategoriaLista;
                    contagem.IdLista = lista.IdLista;

                    string json = JsonConvert.SerializeObject(contagem);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var resposta = await cliente.PostAsync(uri, content);

                    if (resposta.IsSuccessStatusCode) { return true; } else { return false; }
                }
            }

            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return false;
            }
        }

        public async Task<bool> FinalizaItensContagemPre(int id)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/atualiza-pre-contagem-finaliza";

                using (var cliente = new HttpClient())
                {
                    var contagem = new EstoquePreClass();
                    contagem.Idlista = id;
                    contagem.Finaliza = "S";

                    string json = JsonConvert.SerializeObject(contagem);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var resposta = await cliente.PostAsync(uri, content);

                    if (resposta.IsSuccessStatusCode) { return true; } else { return false; }
                }
            }

            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return false;
            }
        }

        public async Task<bool> CriaPreviaContagemFull(EstoqueClass lista)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/criar-contagem";

                using (var cliente = new HttpClient())
                {
                    var contagem = new EstoqueClass();
                    contagem.IdCategoria = lista.IdCategoria;
                    contagem.IdLocal = lista.IdLocal;
                    contagem.IdGrupo = lista.IdGrupo;
                    contagem.DataAbre = lista.DataAbre;
                    contagem.UserAbre = lista.UserAbre;
                    contagem.UserFecha = lista.UserFecha;
                    contagem.DataFecha = lista.DataFecha;
                    contagem.IdLista = lista.IdLista;
                    contagem.Finalizado = lista.Finalizado;
                    contagem.IdCategoriaLista = lista.IdCategoriaLista;

                    string json = JsonConvert.SerializeObject(contagem);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var resposta = await cliente.PostAsync(uri, content);

                    if (resposta.IsSuccessStatusCode) { return true; } else { return false; }
                }
            }

            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return false;
            }
        }

        public async Task<bool> CriaContagemFast(List<EstoquePreClass> lista)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/criar-contagem-fast";


                using (var cliente = new HttpClient())
                {
                    List<EstoquePreClass> contagem = new List<EstoquePreClass>();

                    foreach (var item in lista)
                    {
                        contagem.Add(new EstoquePreClass
                        {
                            Iditem = item.Iditem,
                            Idgrupo = item.Idgrupo,
                            Idcategoria = item.Idcategoria,
                            Idsubgrupo = item.Idsubgrupo,
                            Idlocal = item.Idlocal,
                            Usuario = item.Usuario,
                            Quantidade = item.Quantidade,
                            Datasave = item.Datasave,
                            Sku = item.Sku,
                            Idlista = item.Idlista,
                            Finaliza = item.Finaliza
                        });
                    }

                    string json = JsonConvert.SerializeObject(contagem);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var resposta = await cliente.PostAsync(uri, content);

                    if (resposta.IsSuccessStatusCode)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }

            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return false;
            }
        }

        public async Task<bool> AtualizaItensContPre(EstoquePreClass lista)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/att-itens-cont-pre";

                using (var cliente = new HttpClient())
                {
                    var contagem = new EstoquePreClass();
                    contagem.Id = lista.Id;
                    contagem.Quantidade = lista.Quantidade;

                    string json = JsonConvert.SerializeObject(contagem);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var resposta = await cliente.PostAsync(uri, content);

                    if (resposta.IsSuccessStatusCode)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }

            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return false;
            }
        }

        public async Task<bool> AdicionaItensContPre(EstoquePreClass lista)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/adiciona-itens-cont-pre";

                using (var cliente = new HttpClient())
                {
                    var contagem = new EstoquePreClass();
                    contagem.Iditem = lista.Iditem;
                    contagem.Idgrupo = lista.Idgrupo;
                    contagem.Idcategoria = lista.Idcategoria;
                    contagem.Idsubgrupo = lista.Idsubgrupo;
                    contagem.Sku = lista.Sku;
                    contagem.Idlocal = lista.Idlocal;
                    contagem.Usuario = lista.Usuario;
                    contagem.Quantidade = lista.Quantidade;
                    contagem.Datasave = lista.Datasave;
                    contagem.Idlista = lista.Idlista;
                    contagem.Finaliza = lista.Finaliza;
                    contagem.EstoqueAtual = lista.EstoqueAtual;

                    string json = JsonConvert.SerializeObject(contagem);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var resposta = await cliente.PostAsync(uri, content);

                    if (resposta.IsSuccessStatusCode)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }

            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return false;
            }
        }

        public async Task<int> ListaIdPreItens(int iditem, int idlista)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/lista-id-pre-iten?iditem=" + iditem + "&idlista=" + idlista;

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.GetStringAsync(uri);
                    var retorno = JsonConvert.DeserializeObject<int>(resposta);
                    return retorno;
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return 0;
            }
        }

        public async Task DeletarContagemFast(int idLista, string sku)
        {
            try
            {
                string uri = $"{InfoGlobal.apiEstoque}/Estoque/deletar-item-fast?idLista={idLista}&sku={sku}";

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.DeleteAsync(uri);
                    resposta.EnsureSuccessStatusCode(); // Lança uma exceção se a resposta não for bem-sucedida (status code 2xx)
                }
            }
            catch (HttpRequestException ex)
            {
                await MetodoErroLog(ex);
                return; // Releva a exceção para o chamador lidar com ela
            }
        }

        public async Task<List<EstoqueClass>> ListaContagens()
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/lista-contagens";

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.GetStringAsync(uri);
                    return JsonConvert.DeserializeObject<EstoqueClass[]>(resposta).ToList();
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;
            }
        }

        public async Task<List<EstoqueClass>> ListaConstagensFast(string status)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/lista-contagem-fast?status=" + status;

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.GetStringAsync(uri);
                    var retorno = JsonConvert.DeserializeObject<EstoqueClass[]>(resposta).ToList();
                    List<EstoqueClass> cont = new List<EstoqueClass>();
                    cont = retorno.ToList();
                    return cont;
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;
            }
        }

        public async Task<List<EstoqueClass>> ContagensAbertas()
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/lista-contagem-aberta";

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.GetStringAsync(uri);
                    var retorno = JsonConvert.DeserializeObject<EstoqueClass[]>(resposta).ToList();
                    List<EstoqueClass> cont = new List<EstoqueClass>();
                    cont = retorno.ToList();
                    return cont;
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;
            }
        }

        public async Task<List<EstoqueClass>> ContagensFechadas(DataContagem dataContagem)
        {
            try
            {
                string json = JsonConvert.SerializeObject(dataContagem);
                HttpContent content = new StringContent(json, Encoding.UTF8, "application/json");

                string uri = InfoGlobal.apiEstoque + "/Estoque/lista-contagem-fechada";
                HttpResponseMessage response = await _httpClient.PostAsync(uri, content);

                if (response.IsSuccessStatusCode)
                {
                    var responseContent = await response.Content.ReadAsStringAsync();
                    return JsonConvert.DeserializeObject<List<EstoqueClass>>(responseContent);
                }

                return null;
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;
            }
        }

        public async Task<List<EstoquePreClass>> ListaConstagensPorId(int id)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/lista-contagem-fast-id?idCard=" + id;

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.GetStringAsync(uri);
                    var retorno = JsonConvert.DeserializeObject<EstoquePreClass[]>(resposta).ToList();
                    List<EstoquePreClass> cont = new List<EstoquePreClass>();
                    cont = retorno.ToList();
                    return cont;
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;
            }
        }

        public async Task<List<EstoquePreClass>> ContagemFastId(int id)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/lista-contagem-fast-id?idCard=" + id.ToString();

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.GetStringAsync(uri);
                    var retorno = JsonConvert.DeserializeObject<EstoquePreClass[]>(resposta).ToList();
                    List<EstoquePreClass> cont = new List<EstoquePreClass>();
                    cont = retorno.ToList();
                    return cont;
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;
            }
        }

        public async Task<int> UltimoIdLista()
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/id-ultima-lista";

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.GetStringAsync(uri);

                    return int.Parse(resposta);
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return 0;
            }
        }

        public async Task<bool> AttContagem(int id, string idlocal)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/att-contagem?id=" + id + "&local=" + idlocal + "&user=" + InfoGlobal.usuario.ToUpper();

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.PutAsync(uri, null);

                    if (resposta.IsSuccessStatusCode) { return true; } else { return false; }
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return false;
            }
        }

        public async Task<bool> ExcluiLista(int id)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/deleta-contagem?id=" + id + "&user=" + InfoGlobal.usuario.ToUpper();

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.PutAsync(uri, null);

                    if (resposta.IsSuccessStatusCode) { return true; } else { return false; }
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return false;
            }
        }

        public async Task<List<SelectEstoqueAtual>> HistoricoSelect(int idlista)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/historico-estoque-atual?idCard=" + idlista + "";

                using (var cliente = new HttpClient())
                {
                    var resposta = await cliente.GetStringAsync(uri);
                    var retorno = JsonConvert.DeserializeObject<SelectEstoqueAtual[]>(resposta).ToList();
                    return retorno.ToList();
                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return null;
            }
        }

        public async Task<bool> AttHistorico(List<SelectEstoqueAtual> lista)
        {
            try
            {
                string uri = InfoGlobal.apiEstoque + "/Estoque/att-historico";

                using (var cliente = new HttpClient())
                {
                    List<SelectEstoqueAtual> estoque = new List<SelectEstoqueAtual>();

                    foreach (var item in lista)
                    {
                        estoque.Add(new SelectEstoqueAtual
                        {
                            Atual = item.Atual,
                            IdItem = item.IdItem,
                            IdLista = item.IdLista,
                            Sku = item.Sku
                        });
                    }

                    string json = JsonConvert.SerializeObject(estoque);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var resposta = await cliente.PostAsync(uri, content);

                    if (resposta.IsSuccessStatusCode)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
            }
            catch (Exception ex)
            {
                await MetodoErroLog(ex);
                return false;
            }
        }
        #endregion
    }
}
