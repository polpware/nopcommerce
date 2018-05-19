using Nop.Web.Framework.Models;

namespace Polpware.NopWeb.Models.Catalog
{
    public partial class ProductTagModel : BaseNopEntityModel
    {
        public string Name { get; set; }

        public string SeName { get; set; }

        public int ProductCount { get; set; }
    }
}