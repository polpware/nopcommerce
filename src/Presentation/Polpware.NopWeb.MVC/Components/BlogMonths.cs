using Microsoft.AspNetCore.Mvc;
using Nop.Core.Domain.Blogs;
using Polpware.NopWeb.Factories;
using Nop.Web.Framework.Components;

namespace Polpware.NopWeb.Components
{
    public class BlogMonthsViewComponent : NopViewComponent
    {
        private readonly IBlogModelFactory _blogModelFactory;
        private readonly BlogSettings _blogSettings;

        public BlogMonthsViewComponent(IBlogModelFactory blogModelFactory, BlogSettings blogSettings)
        {
            this._blogModelFactory = blogModelFactory;
            this._blogSettings = blogSettings;
        }

        public IViewComponentResult Invoke(int currentCategoryId, int currentProductId)
        {
            if (!_blogSettings.Enabled)
                return Content("");

            var model = _blogModelFactory.PrepareBlogPostYearModel();
            return View(model);
        }
    }
}
