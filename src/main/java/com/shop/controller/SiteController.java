package com.shop.controller;

import com.shop.model.Category;
import com.shop.model.CategoryDao;
import com.shop.model.ManufactureDao;
import com.shop.model.Manufacturer;
import com.shop.model.Orders;
import com.shop.model.OrdersDao;
import com.shop.model.Product;
import com.shop.model.ProductDao;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SiteController {

    @Autowired
    CategoryDao categoryDao;

    @Autowired
    ProductDao productDao;

    @Autowired
    ManufactureDao manufactureDao;
    @Autowired
    OrdersDao ordersDao;

    @RequestMapping("/confirm")
    public String confirmOrder(@RequestParam(required = false) String name, @RequestParam(required = false) String lastname,
            @RequestParam(required = false) String address, HttpServletRequest request, ModelMap model) {
        List<Category> categories = categoryDao.find();
        model.addAttribute("categories", categories);
        List<Manufacturer> manufacturers = manufactureDao.find();
        model.addAttribute("manufacturers", manufacturers);

        if (name == null) {
            System.out.println("Invalid entry!");
        } else {
            StringBuilder sb = new StringBuilder();
            HttpSession session = request.getSession();

            HashMap<Integer, Product> sessionProducts = (HashMap<Integer, Product>) session.getAttribute("cart");
            sb.append("[");
            for (Map.Entry<Integer, Product> m : sessionProducts.entrySet()) {
//                products.add(m.getValue());
                sb.append("{\"id\":");
                sb.append(m.getValue().getId());

                sb.append("},");

            }
            String substring = sb.substring(0, sb.length() - 1);
            substring += "]";

            Orders orders = new Orders();
            orders.setOrdertime(new Date(new java.util.Date().getTime()));
            orders.setName(name);
            orders.setLastname(lastname);
            orders.setAddress(address);
            orders.setProducts(substring);
            ordersDao.save(orders);

            System.out.println(name);
            System.out.println(lastname);
            System.out.println(address);
            System.out.println(substring);
            session.removeAttribute("cart");
            return "confirmsuccessfull";
        }
        return "confirm";
    }

    @RequestMapping("/remove")
    public String remove(@RequestParam(required = true) int id, HttpServletRequest request, ModelMap model) {
        List<Category> categories = categoryDao.find();
        model.addAttribute("categories", categories);
        List<Manufacturer> manufacturers = manufactureDao.find();
        model.addAttribute("manufacturers", manufacturers);

        HttpSession session = request.getSession();
        if (session.getAttribute("cart") != null) {
            HashMap<Integer, Product> products = (HashMap<Integer, Product>) session.getAttribute("cart");
            if (products.containsKey(id)) {
                products.remove(id);
            }
        }

        return "remove";
    }

    @RequestMapping("/cart")
    public String cart(HttpServletRequest request, ModelMap model) {
        List<Category> categories = categoryDao.find();
        model.addAttribute("categories", categories);
        List<Product> products = new ArrayList<Product>();
        HttpSession session = request.getSession();
        if (session.getAttribute("cart") != null) {
            HashMap<Integer, Product> sessionProducts = (HashMap<Integer, Product>) session.getAttribute("cart");
            for (Map.Entry<Integer, Product> m : sessionProducts.entrySet()) {
                products.add(m.getValue());
            }
        }
        model.addAttribute("products", products);
        List<Manufacturer> manufacturers = manufactureDao.find();
        model.addAttribute("manufacturers", manufacturers);
        return "cart";
    }

    @RequestMapping("/addedtocart/{id}")
    public String addedtocart(@PathVariable int id, ModelMap model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        HashMap<Integer, Product> cart;
        if (session.getAttribute("cart") == null) {
            session.setAttribute("cart", new HashMap<Integer, Product>());
        }
        cart = (HashMap<Integer, Product>) session.getAttribute("cart");

        if (!cart.containsKey(id)) {
            Product product = productDao.getById(id);
           
            cart.put(id, product);

        } else {
            Product productFromCart = cart.get(id);
        }
        List<Category> categories = categoryDao.find();
        List<Manufacturer> manufacturers = manufactureDao.find();
        model.addAttribute("manufacturers", manufacturers);
        model.addAttribute("categories", categories);
        return "addedtocart";
    }

    @RequestMapping("/tocart/{id}")
    public String toCart(@PathVariable int id, ModelMap model) {
        List<Category> categories = categoryDao.find();
        List<Manufacturer> manufacturers = manufactureDao.find();
        Product product = productDao.getById(id);
        model.addAttribute("manufacturers", manufacturers);
        model.addAttribute("categories", categories);
        model.addAttribute("product", product);
        model.addAttribute("manufacturers", manufacturers);

        return "tocart";
    }

    @RequestMapping("/details/{id}")
    public String details(ModelMap model, @PathVariable Integer id) {
        Product product = productDao.getById(id);
        List<Category> categories = categoryDao.find();
        List<Manufacturer> manufacturers = manufactureDao.find();
        model.addAttribute("manufacturers", manufacturers);
        model.addAttribute("categories", categories);
        model.addAttribute("product", product);
        return "details";
    }

    @RequestMapping("/manu/{name}")
    public String byManufactur(@PathVariable String name, ModelMap model) {
        List<Category> categories = categoryDao.find();
        List<Manufacturer> manufacturers = manufactureDao.find();
        List<Product> products = productDao.findbyManufactur(name);

        model.addAttribute("manufacturers", manufacturers);
        model.addAttribute("categories", categories);
        model.addAttribute("products", products);
        return "index";
    }

    @RequestMapping("/{id}")
    public String byCategory(@PathVariable int id, ModelMap model) {
        List<Category> categories = categoryDao.find();
        List<Product> products = productDao.findbyCategory(id);
        List<Manufacturer> manufacturers = manufactureDao.find();
        model.addAttribute("manufacturers", manufacturers);
        model.addAttribute("categories", categories);
        model.addAttribute("products", products);
        return "index";
    }

    @RequestMapping("/")
    public String index(@RequestParam(defaultValue = "1") Integer page, ModelMap model) {
        List<Category> categories = categoryDao.find();
        List<Manufacturer> manufacturers = manufactureDao.find();
        model.addAttribute("manufacturers", manufacturers);
        model.addAttribute("categories", categories);
        List<Product> products = productDao.findbyPage(page - 1);
        model.addAttribute("products", products);
        model.addAttribute("totalpages", productDao.pages());
        int items = productDao.items();
        model.addAttribute("items", items);
        return "index";
    }

}
