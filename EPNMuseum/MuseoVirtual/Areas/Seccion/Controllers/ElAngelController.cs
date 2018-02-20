using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;
using MuseoVirtual.Areas.Seccion.Models;
using System.Collections.Generic;
using System.Configuration;
using System;

namespace MuseoVirtual.Areas.Seccion.Controllers
{
    public class ElAngelController : Controller
    {
        string cadenaConexion = "Data Source=DESKTOP-QR9THCT\\SQLSERVERANDRES;Initial Catalog=sistema;Integrated Security=True";

        // GET: Seccion/ElAngel
        public ActionResult Contenido()
        {
            List<Imagenes> imagenes = getSectionImages();
            ViewBag.Base64String1 = "data:imagen/jpg;base64," + Convert.ToBase64String(imagenes[0].Imagen, 0, imagenes[0].Imagen.Length);
            ViewBag.Base64String2 = "data:imagen/jpg;base64," + Convert.ToBase64String(imagenes[1].Imagen, 0, imagenes[1].Imagen.Length);
            ViewBag.Base64String3 = "data:imagen/jpg;base64," + Convert.ToBase64String(imagenes[2].Imagen, 0, imagenes[2].Imagen.Length);
            ViewBag.Base64String4 = "data:imagen/jpg;base64," + Convert.ToBase64String(imagenes[3].Imagen, 0, imagenes[3].Imagen.Length);
            ViewBag.Base64String5 = "data:imagen/jpg;base64," + Convert.ToBase64String(imagenes[4].Imagen, 0, imagenes[4].Imagen.Length);

            return View(imagenes);
        }

        private List<Imagenes> GetImagenes()
        {
            string query = "SELECT * FROM Imagenes";
            List<Imagenes> images = new List<Imagenes>();
            //string constr = ConfigurationManager.ConnectionStrings["sistemaEntities"].ConnectionString;

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

        private List<Imagenes> getSectionImages()
        {

            string query = "SELECT * FROM Imagenes WHERE Seccion = 'angel'";
            List<Imagenes> images = new List<Imagenes>();
            //string constr = ConfigurationManager.ConnectionStrings["sistemaEntities"].ConnectionString;

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