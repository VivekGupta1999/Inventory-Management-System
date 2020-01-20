using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Web;
using System.Web.Mvc;
using ManagementSystems;

namespace ManagementSystems.Controllers
{
    
    public class PurchaseInvoiceController : Controller
    {
        // GET: PurchaseInvoice
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Create()
        {
            
            return View();
        }
    }
}