﻿using System.ComponentModel.DataAnnotations;
using Nop.Web.Framework.Models;

namespace Polpware.NopWeb.Models.Newsletter
{
    public partial class NewsletterBoxModel : BaseNopModel
    {
        [DataType(DataType.EmailAddress)]
        public string NewsletterEmail { get; set; }
        public bool AllowToUnsubscribe { get; set; }
    }
}