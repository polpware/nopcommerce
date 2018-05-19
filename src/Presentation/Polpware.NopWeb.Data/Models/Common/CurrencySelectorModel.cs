using System.Collections.Generic;
using Nop.Web.Framework.Models;

namespace Polpware.NopWeb.Models.Common
{
    public partial class CurrencySelectorModel : BaseNopModel
    {
        public CurrencySelectorModel()
        {
            AvailableCurrencies = new List<CurrencyModel>();
        }

        public IList<CurrencyModel> AvailableCurrencies { get; set; }

        public int CurrentCurrencyId { get; set; }
    }
}