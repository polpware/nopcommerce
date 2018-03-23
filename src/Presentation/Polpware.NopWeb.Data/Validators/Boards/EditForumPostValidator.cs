using FluentValidation;
using Nop.Services.Localization;
using Nop.Web.Framework.Validators;
using Polpware.NopWeb.Models.Boards;

namespace Polpware.NopWeb.Validators.Boards
{
    public partial class EditForumPostValidator : BaseNopValidator<EditForumPostModel>
    {
        public EditForumPostValidator(ILocalizationService localizationService)
        {            
            RuleFor(x => x.Text).NotEmpty().WithMessage(localizationService.GetResource("Forum.TextCannotBeEmpty"));
        }
    }
}