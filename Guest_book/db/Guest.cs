namespace Guest_book
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

        public virtual DbSet<messages> messages { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<users> users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<users>()
                .Property(e => e.name)
                .IsFixedLength();

            modelBuilder.Entity<users>()
                .Property(e => e.pwd)
                .IsFixedLength();

            modelBuilder.Entity<users>()
                .HasMany(e => e.messages)
                .WithRequired(e => e.users)
                .HasForeignKey(e => e.id_user)
                .WillCascadeOnDelete(false);
        }
    }
}
