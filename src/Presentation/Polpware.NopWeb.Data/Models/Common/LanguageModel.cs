using Nop.Web.Framework.Models;

namespace Polpware.NopWeb.Models.Common
{
    public partial class LanguageModel : BaseNopEntityModel
    {
        public string Name { get; set; }

        public string FlagImageFileName { get; set; }
    }
}