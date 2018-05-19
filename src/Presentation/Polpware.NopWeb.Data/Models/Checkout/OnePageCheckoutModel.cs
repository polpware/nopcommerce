using Nop.Web.Framework.Models;

namespace Polpware.NopWeb.Models.Checkout
{
    public partial class OnePageCheckoutModel : BaseNopModel
    {
        public bool ShippingRequired { get; set; }
        public bool DisableBillingAddressCheckoutStep { get; set; }

        public CheckoutBillingAddressModel BillingAddress { get; set; }
    }
}