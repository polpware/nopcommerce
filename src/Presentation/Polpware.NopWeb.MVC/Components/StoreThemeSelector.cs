﻿using Microsoft.AspNetCore.Mvc;
using Nop.Core.Domain;
using Polpware.NopWeb.Factories;
using Nop.Web.Framework.Components;

namespace Polpware.NopWeb.Components
{
    public class StoreThemeSelectorViewComponent : NopViewComponent
    {
        private readonly ICommonModelFactory _commonModelFactory;
        private readonly StoreInformationSettings _storeInformationSettings;

        public StoreThemeSelectorViewComponent(ICommonModelFactory commonModelFactory,
            StoreInformationSettings storeInformationSettings)
        {
            this._commonModelFactory = commonModelFactory;
            this._storeInformationSettings = storeInformationSettings;
        }

        public IViewComponentResult Invoke()
        {
            if (!_storeInformationSettings.AllowCustomerToSelectTheme)
                return Content("");

            var model = _commonModelFactory.PrepareStoreThemeSelectorModel();
            return View(model);
        }
    }
}