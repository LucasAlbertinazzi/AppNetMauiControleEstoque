using System.Diagnostics;

namespace AppNetMaui.Classes.Globais
{
    public static class InfoGlobal
    {
        public static string LastVersao;

        public static string usuario = string.Empty;

        public static string senha = string.Empty;

        public static string funcao = string.Empty;

        public static bool statusCode;

        public static bool isMenuOpen;

        public static int IdItemCamera = 0;

        public static List<string> listaImagens = new List<string>();

        public static string apiAppDev = "http://192.168.10.94:5000/api";
        public static string apiEstoqueDev = "http://192.168.10.94:5001/api";

        public static string apiApp = "http://192.168.85.3:6565/api";
        public static string apiEstoque = "http://192.168.85.3:6566/api";

        public static string apk = "http://192.168.85.3:25434/";

        // Método para ajustar as URLs das APIs com base no ambiente de execução
        public static void AjustarUrlsParaDebug()
        {
            // Verifica se o aplicativo está em modo de depuração
            if (Debugger.IsAttached)
            {
                // Altera as URLs das APIs para as URLs de desenvolvimento
                apiApp = apiAppDev;
                apiEstoque = apiEstoqueDev;
            }
        }

        public static void ClearData()
        {
            usuario = string.Empty;
            senha = string.Empty;
            funcao = string.Empty;
            statusCode = false;
        }
    }
}
