package com.shop.controller;

import com.shop.model.Category;
import com.shop.model.CategoryDao;
import com.shop.model.ManufactureDao;
import com.shop.model.Manufacturer;
import com.shop.model.OrdersDao;
import com.shop.model.Product;
import com.shop.model.ProductDao;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Noko
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    CategoryDao categoryDao;

    @Autowired
    ProductDao productDao;

    @Autowired
    ManufactureDao manufactureDao;

    @Autowired
    OrdersDao ordersDao;

    @RequestMapping("/")
    public String index() {
        return "admin/index";
    }

    @RequestMapping("/products")
    public String products(@RequestParam(defaultValue = "1") Integer page, ModelMap model) {
        List<Product> products = productDao.findbyPage(page - 1);
        model.addAttribute("products", products);
        model.addAttribute("totalpages", productDao.pages());
        return "admin/products";
    }
    @RequestMapping(value ="/new_product",method = RequestMethod.GET)
    public String new_product_get(ModelMap model){
        model.addAttribute("product", new Product());
        List<Category>categorys= categoryDao.find();
        model.addAttribute("categoryes", categorys);
        List<Manufacturer> manufacturers = manufactureDao.find();
        model.addAttribute("manufacturers", manufacturers);
        return "admin/new_product";
    }
    
    @RequestMapping(value ="/new_product",method = RequestMethod.POST)
    public String new_product_post(@ModelAttribute("product") Product product,ModelMap model){
        model.addAttribute("name", product.getName());
        model.addAttribute("price", product.getPrice());
        model.addAttribute("photo", product.getPhoto());
        model.addAttribute("category", product.getCategory());
        model.addAttribute("manufacturer",product.getManufacturer());
        model.addAttribute("description", product.getDescription());
        return "admin/confirm";
    }
    
    @RequestMapping(value = "/updateproduct", method = RequestMethod.POST)
    public String updateProductPost(@RequestParam Integer id,
            @RequestParam String name,
            @RequestParam String price,
            @RequestParam Integer category,
            @RequestParam MultipartFile photo,
            ModelMap model, HttpServletRequest request) throws FileNotFoundException, IOException {
//springov sistem za upload je multipart
        Product product = productDao.getById(id);
        product.setName(name);
        product.setPrice(new BigDecimal(price));
        product.setCategory(category);

        if (photo != null && !photo.isEmpty()) {
            String filepath = request.getServletContext().getRealPath("resources/images");
            FileOutputStream fos = new FileOutputStream(filepath + "/" + photo.getOriginalFilename());
            fos.write(photo.getBytes());
            product.setPhoto(photo.getOriginalFilename());
            fos.close();
        }

        model.addAttribute("product", product);
        productDao.updateproduct(product);
        return "admin/updateproduct";
    }

    @RequestMapping(value = "/updateproduct", method = RequestMethod.GET)
    public String updateProduct(@RequestParam Integer id, ModelMap model) {
        List<Category> categories = categoryDao.find();
        model.addAttribute("categories", categories);
        Product product = productDao.getById(id);
        model.addAttribute("product", product);

        return "admin/updateproduct";
    }

    @RequestMapping("/updatecategory")
    public String updateCategory(
            @RequestParam int id,
            @RequestParam String name,
            @RequestParam String description,
            ModelMap model) {

        Category selectedCategory = categoryDao.getById(id);
        selectedCategory.setName(name);
        selectedCategory.setDescription(description);
        categoryDao.update(selectedCategory);
        List<Category> categories = categoryDao.find();
        model.addAttribute("categories", categories);
        model.addAttribute("selectedcategory", selectedCategory);

        return "admin/categories";
    }

    @RequestMapping("/categories")
    public String categories(@RequestParam(required = false) Integer id, ModelMap model) {
        List<Category> categories = categoryDao.find();
        model.addAttribute("categories", categories);
        if (id != null) {
            Category selectedCategory = categoryDao.getById(id);
            model.addAttribute("selectedcategory", selectedCategory);
        }
        return "admin/categories";
    }
}
