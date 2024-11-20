using System.ComponentModel.DataAnnotations;

namespace EcoWatt.Models
{
    public class Consumo
    {
        [Key]
        public int ConsumoId { get; set; }

        public DateTime Data_Consumo { get; set; }  // Alterado para DateTime para armazenar data corretamente
        public int Hora_Consumo { get; set; }  // Pode ser alterado para TimeSpan se preferir uma abordagem mais específica para o tempo
        public int Quantidade_Watts { get; set; }
    }
}