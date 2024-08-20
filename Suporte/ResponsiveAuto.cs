namespace AppNetMaui.Suporte
{
    public static class ResponsiveAuto
    {
        public static double Height(double valor)
        {
            try
            {
                double screen = DeviceDisplay.MainDisplayInfo.Height / DeviceDisplay.MainDisplayInfo.Density;
                double iconSize = screen / valor;

                return iconSize;
            }
            catch (Exception)
            {
                return valor;
            }
        }

        public static double Width(double valor)
        {
            try
            {
                double screen = DeviceDisplay.MainDisplayInfo.Height / DeviceDisplay.MainDisplayInfo.Density;
                double iconSize = screen / 1.7;

                return iconSize;
            }
            catch (Exception)
            {
                return valor;
            }
        }
    }
}
