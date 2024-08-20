namespace AppNetMaui.Suporte
{
    public class CalculadoraVolume
    {
        public static string DefineQuantidadeTotal(string qtMed, string qtdUn, string unVolume)
        {
            // Verificando se as strings estão vazias ou nulas
            if (string.IsNullOrEmpty(qtMed) || string.IsNullOrEmpty(qtdUn) || string.IsNullOrEmpty(unVolume))
            {
                return "0";
            }

            // Substituindo ',' por '.' se existir
            qtMed = qtMed.Replace('.', ',');

            qtdUn = qtdUn.Replace('.', ',');

            // Convertendo para double
            if (!double.TryParse(qtMed, out double quantidadeMedida) ||
                !double.TryParse(qtdUn, out double quantidadeUnidades) ||
                !double.TryParse(unVolume, out double volumeItem))
            {
                return "0";
            }

            // Calculando a quantidade final
            double quantidadeFinal = 0.00;

            if (quantidadeMedida > 0 && quantidadeUnidades > 0)
            {
                quantidadeFinal = quantidadeUnidades * volumeItem + quantidadeMedida;
            }
            else if (quantidadeMedida > 0 && quantidadeUnidades == 0)
            {
                quantidadeFinal = quantidadeMedida;
            }
            else if (quantidadeMedida == 0 && quantidadeUnidades > 0)
            {
                quantidadeFinal = quantidadeUnidades * volumeItem;
            }

            return quantidadeFinal.ToString("F3");
        }

        public static string DefineUnidade(string unMed, string volume)
        {
            // Verificando se as strings estão vazias ou nulas
            if (string.IsNullOrEmpty(unMed) || string.IsNullOrEmpty(volume))
            {
                return "0";
            }

            // Substituindo ',' por '.' se existir
            unMed = unMed.Replace('.', ',');

            // Convertendo para double
            if (!double.TryParse(unMed, out double quantidadeMedida) ||
                !double.TryParse(volume, out double volumeItem))
            {
                return "0";
            }

            quantidadeMedida = quantidadeMedida / volumeItem;

            return quantidadeMedida.ToString("F1");
        }

        public static string DefineUnMed(string qtMed, string unVolume)
        {
            // Verificando se as strings estão vazias ou nulas
            if (string.IsNullOrEmpty(qtMed) || string.IsNullOrEmpty(unVolume))
            {
                return "0";
            }

            // Substituindo ',' por '.' se existir
            qtMed = qtMed.Replace('.', ',');

            // Convertendo para double
            if (!double.TryParse(qtMed, out double quantidadeMedida) ||
                !double.TryParse(unVolume, out double volumeItem))
            {
                return "0";
            }

            return quantidadeMedida.ToString("F3");
        }
    }
}