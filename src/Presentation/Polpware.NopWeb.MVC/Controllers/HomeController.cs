﻿using Microsoft.AspNetCore.Mvc;
using Nop.Web.Framework.Mvc.Filters;
using Nop.Web.Framework.Security;

namespace Polpware.NopWeb.Controllers
{
    public partial class HomeController : BasePublicController
    {
        [HttpsRequirement(SslRequirement.No)]
        [NamespaceConstraint]
        public virtual IActionResult Index()
        {
            return View();
        }
    }
}