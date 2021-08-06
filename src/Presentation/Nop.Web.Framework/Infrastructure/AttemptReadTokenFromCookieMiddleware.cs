using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace Nop.Web.Framework.Infrastructure
{
    public class AttemptReadTokenFromCookieMiddleware
    {

        private readonly RequestDelegate _next;

        public AttemptReadTokenFromCookieMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        private const string CookieName = "AuthToken";

        public Task Invoke(Microsoft.AspNetCore.Http.HttpContext context)
        {
              var authorizationHeader = context.Request.Headers["Authorization"].FirstOrDefault();

            if (authorizationHeader == null)
            {
                var cookie = context.Request.Cookies[CookieName];
                if (cookie != null)
                {
                    // Set up the authorization header
                    context.Request.Headers["Authorization"] = "Bearer " + cookie;
                }
            }
            return _next(context);
        }
    }
}
