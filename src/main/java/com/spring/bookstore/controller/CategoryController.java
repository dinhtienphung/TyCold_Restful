//package com.spring.bookstore.controller;
//
//import com.spring.bookstore.entity.CategoryEntity;
//import com.spring.bookstore.repository.BookRepository;
//import com.spring.bookstore.repository.CategoryRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import java.util.List;
//
//import static org.springframework.web.bind.annotation.RequestMethod.GET;
//import static org.springframework.web.bind.annotation.RequestMethod.POST;
//
//@Controller
//@RequestMapping(value = "/")
//public class CategoryController {
//    @Autowired
//    BookRepository bookRepository;
//    @Autowired
//    CategoryRepository categoryRepository;
//
//
//    @RequestMapping(value = "/category",method = GET)
//    public String showCategories(Model model) {
//        model.addAttribute("type", "categories");
//        List<CategoryEntity> categoryList = (List<CategoryEntity>) categoryRepository.findAll();
//        model.addAttribute("categoryList", categoryList);
//        return "category";
//    }
//
//    @RequestMapping(value = "/category")
//    public String index(){
//        return "category";
//    }
//    @RequestMapping(value = "/newCategory", method = GET)
//    public String showNewCategory(Model model) {
//        model.addAttribute("category", new CategoryEntity());
//        model.addAttribute("msg", "Add a new category");
//        model.addAttribute("action", "newCategory");
//        model.addAttribute("type", "newCategories");
//
//        return "category";
//    }
//
//
////
//    @RequestMapping(value = "/newCategory", method = POST, produces = "text/plain;charset=UTF-8")
//    public String saveBook(CategoryEntity category) {
//        categoryRepository.save(category);
//        return "redirect:/category";
//    }
//    @RequestMapping(value = "/editCategory/{id}", method = GET)
//    public String showEditCategory(Model model, @PathVariable int id) {
//        model.addAttribute("category", categoryRepository.findById(id));
//        model.addAttribute("msg", "Update category information");
//        model.addAttribute("type", "update");
//        model.addAttribute("action", "updateCategory");
//
//        return "category";
//    }
////
//    @RequestMapping(value = "/editCategory/updateCategory", method = RequestMethod.POST)
//    public String updateCategory(@ModelAttribute CategoryEntity category) {
//        categoryRepository.save(category);
//        return "redirect:/category";
//    }
////
//    @RequestMapping(value = "/deleteCategory/{id}", method = GET)
//    public String deleteCategory(@PathVariable int id) {
//        categoryRepository.deleteById(id);
//        return "redirect:/category";
//    }
//}
