using System.Collections.Generic;
using Nop.Web.Framework.Models;
using Polpware.NopWeb.Models.Common;

namespace Polpware.NopWeb.Models.PrivateMessages
{
    public partial class PrivateMessageListModel : BaseNopModel
    {
        public IList<PrivateMessageModel> Messages { get; set; }
        public PagerModel PagerModel { get; set; }
    }
}