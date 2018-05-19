using System.Collections.Generic;
using Nop.Web.Framework.Models;
using Polpware.NopWeb.Models.Common;

namespace Polpware.NopWeb.Models.Customer
{
    public partial class CustomerAddressListModel : BaseNopModel
    {
        public CustomerAddressListModel()
        {
            Addresses = new List<AddressModel>();
        }

        public IList<AddressModel> Addresses { get; set; }
    }
}