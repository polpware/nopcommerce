using Nop.Web.Framework.Mvc.Models;

namespace Polpware.NopWeb.Models.Common
{
    public partial class CurrencyModel : BaseNopEntityModel
    {
        public string Name { get; set; }

        public string CurrencySymbol { get; set; }
    }
}