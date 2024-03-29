﻿/*Creator: Jeffrey Mohler
Date: 12/11/19
Description: This is a restaurant review site made for the IS 403 final project. It allows third party authenication as well as use of roles. 

Review CRUD requires any user account.
Restaurant CRUD requires the Admin role. The admin account is as follows:

username: admin@admin.com
password: @Adm1n     

There is also a search bar on home page. The functionality currently only allows exact user entry for it to work. ex. "Wendy's" NOT "wendys"   */


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Project1_403.DAL;
using Project1_403.Models;

namespace Project1_403.Controllers
{
    public class HomeController : Controller
    {
        private RestaurantContext db = new RestaurantContext();

        public ActionResult Index(bool? Error)
        {
            if (Error == true)
            {
                ViewBag.Search = "";
                ViewBag.Error = "Could not find restaurant. Please try again.";
            }
            else
            {
                ViewBag.Error = "";
                ViewBag.Search = "Search for a Restaurant";
            }
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        // GET: Home
        public ActionResult Login()
        {
            ViewBag.Login = "";
            return View();
        }

        //The next two methods are for the authentication I used before enabling third party. google is taking care of it now in other controllers
        [HttpPost]
        public ActionResult Login(FormCollection form, bool rememberMe = false)
        {
            String email = form["Email address"].ToString();
            String password = form["Password"].ToString();
            Users oUser = db.users.Find(email);

            if (oUser != null)
            {
                if (oUser.UserPassword == password)
                {
                    ViewBag.Login = "";
                    FormsAuthentication.SetAuthCookie(email, rememberMe);

                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ViewBag.Login = "<p style='color: red'>The username or password is incorrect";
                    return View();
                }
            }
            else
            {
                ViewBag.Login = "The username or password is incorrect";
                return View();
            }
        }

        public ActionResult CreateUser()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateUser(Users newUser)
        {
            if (ModelState.IsValid)
            {
                db.users.Add(newUser);
                db.SaveChanges();

                return RedirectToAction("Login");
            }
            else
            {
                return View(newUser);
            }
        }

        [Authorize(Roles = "Admin")]
        public ActionResult Admin()
        {
            return View(db.restaurants.ToList());
        }
    }
}