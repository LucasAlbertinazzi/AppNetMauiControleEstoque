using Android;
using Android.App;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;

namespace AppNetMaui.Platforms.Android;

[Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
public class MainActivity : MauiAppCompatActivity
{
    private const int PermissionRequestCode = 1;

    protected override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
    }

    protected override void OnStart()
    {
        base.OnStart();

        RequestPermission();
    }

    private void RequestPermission()
    {
        //Permissao Camera
        if (CheckSelfPermission(Manifest.Permission.Camera) != (int)Permission.Granted)
        {
            if (ShouldShowRequestPermissionRationale(Manifest.Permission.Camera))
            {
                // Mostrar uma explicação ao usuário, se necessário

                // Por exemplo, exibir um AlertDialog com uma mensagem explicativa
                new AlertDialog.Builder(this)
                    .SetTitle("Permissão de Câmera")
                    .SetMessage("Este aplicativo precisa da permissão para a utilização da câmera.")
                    .SetPositiveButton("OK", (dialog, which) =>
                    {
                        // Solicitar a permissão
                        RequestPermissions(new string[] { Manifest.Permission.Camera }, PermissionRequestCode);
                    })
                    .Create()
                    .Show();
            }
            else
            {
                // Solicitar a permissão diretamente
                RequestPermissions(new string[] { Manifest.Permission.Camera }, PermissionRequestCode);
            }
        }
    }

    public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Permission[] grantResults)
    {
        base.OnRequestPermissionsResult(requestCode, permissions, grantResults);

        if (requestCode == PermissionRequestCode)
        {
            if (grantResults.Length > 0 && grantResults[0] == Permission.Granted)
            {
                // A permissão foi concedida
                // Execute as ações necessárias aqui
            }
            else
            {
                // A permissão foi negada
                // Trate o caso em que o usuário nega a permissão
            }
        }
    }
}
