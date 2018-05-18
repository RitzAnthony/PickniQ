using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PickNick.Startup))]
namespace PickNick
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
