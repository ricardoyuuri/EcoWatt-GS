using System.ComponentModel.DataAnnotations;

namespace EcoWatt.Models
{
    public class Eletrodomesticos
    {
        [Key]
        public int EletrodomesticosId { get; set; }

        [Required]
        [StringLength(200)]  // Definindo um tamanho máximo para o nome
        public string Nome_Aparelho { get; set; }

        [Required]
        public int Valor_Consumo_Watts { get; set; }

        [StringLength(100)]  // Definindo um tamanho máximo para a categoria
        public string Categoria { get; set; } = string.Empty;

        [StringLength(100)]  // Definindo um tamanho máximo para o modelo
        public string Modelo { get; set; } = string.Empty;
    }
}