namespace HW1_ASP
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Guest : DbContext
    {
        public Guest()
            : base("name=Guest")
        {
        }

        public virtual DbSet<Message> Messages { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>()
                .HasMany(e => e.Messages)
                .WithRequired(e => e.User)
                .HasForeignKey(e => e.id_user)
                .WillCascadeOnDelete(false);
        }
    }
}
