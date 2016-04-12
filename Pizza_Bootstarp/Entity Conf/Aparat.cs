namespace Pizza_Bootstarp.Entity_Conf
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Aparat")]
    public partial class Aparat
    {
        [Key]
        public int a_id { get; set; }

        [StringLength(150)]
        public string a_ad { get; set; }

        public DateTime? a_eklenme_tarihi { get; set; }

        public double? a_fiyat { get; set; }

        public IList<Menu> Menus { get; set; }
    }
}
