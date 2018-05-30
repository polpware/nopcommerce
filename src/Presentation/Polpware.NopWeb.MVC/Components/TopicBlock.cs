using Microsoft.AspNetCore.Mvc;
using Polpware.NopWeb.Factories;
using Nop.Web.Framework.Components;

namespace Polpware.NopWeb.Components
{
    public class TopicBlockViewComponent : NopViewComponent
    {
        private readonly ITopicModelFactory _topicModelFactory;

        public TopicBlockViewComponent(ITopicModelFactory topicModelFactory)
        {
            this._topicModelFactory = topicModelFactory;
        }

        public IViewComponentResult Invoke(string systemName)
        {
            var model = _topicModelFactory.PrepareTopicModelBySystemName(systemName);
            if (model == null)
                return Content("");
            return View(model);
        }
    }
}
