namespace HW1_ASP
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Message
    {
        public int id { get; set; }

        public int id_user { get; set; }

        [Column("Message")]
        public string Message1 { get; set; }

        [StringLength(50)]
        public string Message_Date { get; set; }

        public virtual User User { get; set; }
    }
}
