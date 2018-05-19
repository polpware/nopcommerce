using System.Collections.Generic;
using Nop.Web.Framework.Models;
using Polpware.NopWeb.Models.Common;

namespace Polpware.NopWeb.Models.Profile
{
    public partial class ProfilePostsModel : BaseNopModel
    {
        public IList<PostsModel> Posts { get; set; }
        public PagerModel PagerModel { get; set; }
    }
}