using Nop.Web.Framework.Mvc.Models;

namespace Polpware.NopWeb.Models.Blogs
{
    public partial class BlogPostTagModel : BaseNopModel
    {
        public string Name { get; set; }

        public int BlogPostCount { get; set; }
    }
}