using AppNetMaui;
using Camera.MAUI;
using Microsoft.Extensions.Logging;

namespace AppNetMaui;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();
        builder
            .UseMauiApp<App>()
            .UseMauiCameraView()
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("Roboto-Medium.ttf", "PadraoRoboto");
                fonts.AddFont("fontello.ttf", "IconsFont");
            });

#if DEBUG
        builder.Logging.AddDebug();
#endif
        return builder.Build();
    }
}
