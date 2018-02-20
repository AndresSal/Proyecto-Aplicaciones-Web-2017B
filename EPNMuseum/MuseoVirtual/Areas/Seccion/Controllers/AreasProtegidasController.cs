using MuseoVirtual.Areas.Seccion.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MuseoVirtual.Areas.Seccion.Controllers
{
    public class AreasProtegidasController : Controller
    {
        string cadenaConexion = "Data Source=DESKTOP-QR9THCT\\SQLSERVERANDRES;Initial Catalog=sistema;Integrated Security=True";

        // GET: Seccion/ElAngel
        public ActionResult Contenido()
        {
            List<Imagenes> imagenes = getSectionImages();
            ViewBag.Base64String1 = "data:imagen/jpg;base64," + Convert.ToBase64String(imagenes[0].Imagen, 0, imagenes[0].Imagen.Length);
            

            return View(imagenes);
        }



        private List<Imagenes> getSectionImages()
        {

            string query = "SELECT * FROM Imagenes WHERE Seccion = 'areasprote'";
            List<Imagenes> images = new List<Imagenes>();

            using (SqlConnection con = new SqlConnection(cadenaConexion))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            images.Add(new Imagenes
                            {
                                ID = Convert.ToInt32(sdr["ID"]),
                                Imagen = (byte[])sdr["Imagen"],
                                Seccion = sdr["Seccion"].ToString()
                            });
                        }
                    }
                    con.Close();
                }

                return images;
            }
        }
    }
}