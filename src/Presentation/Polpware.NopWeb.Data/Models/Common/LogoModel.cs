﻿using Nop.Web.Framework.Models;

namespace Polpware.NopWeb.Models.Common
{
    public partial class LogoModel : BaseNopModel
    {
        public string StoreName { get; set; }

        public string LogoPath { get; set; }
    }
}