namespace Guest_book
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class messages
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int id_user { get; set; }

        [Column(TypeName = "ntext")]
        [Required]
        public string message { get; set; }

        [Column(TypeName = "date")]
        public DateTime messagedate { get; set; }

        public virtual users users { get; set; }
    }
}
