using Nop.Web.Framework.Models;
using Polpware.NopWeb.Models.Common;

namespace Polpware.NopWeb.Models.Customer
{
    public partial class CustomerAddressEditModel : BaseNopModel
    {
        public CustomerAddressEditModel()
        {
            this.Address = new AddressModel();
        }
        
        public AddressModel Address { get; set; }
    }
}