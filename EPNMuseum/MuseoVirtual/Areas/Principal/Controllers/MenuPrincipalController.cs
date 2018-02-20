using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MuseoVirtual.Areas.Principal.Controllers
{
    public class MenuPrincipalController : Controller
    {
        // GET: Principal/MenuPrincipal
        public ActionResult IniciarMenu()
        {
            return View();
        }
    }
}