namespace AppNetMaui.Classes.API.Principal
{
    public class UsuarioClass
    {
        public int IdUsuario { get; set; }

        public string Nome { get; set; } = null!;

        public string Email { get; set; }

        public string Username { get; set; }

        public string Password { get; set; }

        public DateTime DataCadastro { get; set; }

        public bool Ativo { get; set; }

        public string Cpf { get; set; }

        public int? IdFuncao { get; set; }

        public string IdLocal { get; set; }

        public bool Alterarsenha { get; set; }

        public bool Bloqueado { get; set; }

        public string CriadoPor { get; set; }

        public bool PermissaoEspecial { get; set; }
    }

    public class Login
    {
        public string usuario { get; set; }
        public string senha { get; set; }
    }
}
