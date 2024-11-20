using System.ComponentModel.DataAnnotations;

namespace EcoWatt.Models
{
    public class Usuario
    {
        [Key]
        public int UsuarioId { get; set; }

        [Required]
        [StringLength(100)]  // Limitando o tamanho do nome
        public string Nome { get; set; } = string.Empty;

        [Required]
        [EmailAddress]  // Validando o formato do email
        public string Email { get; set; } = string.Empty;

        [Required]
        [StringLength(100)]  // Usando string para senhas mais seguras
        public String Senha { get; set; }

        [Required]
        [StringLength(8)]  // Definindo um tamanho fixo para o CEP
        public string CEP { get; set; }
    }
}