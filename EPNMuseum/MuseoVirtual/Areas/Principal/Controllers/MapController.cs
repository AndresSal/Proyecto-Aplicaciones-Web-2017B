using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MuseoVirtual.Areas.Principal.Controllers
{
    public class MapController : Controller
    {
        // GET: Principal/Map
        public ActionResult mostrarMapa()
        {
            return View();
        }
    }
}