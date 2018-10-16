package com.net.oya.controller;
import com.net.oya.common.Constants;
import com.net.oya.common.Page;
import com.net.oya.model.Picture;
import com.net.oya.model.Product;
import com.net.oya.model.UserAddress;
import com.net.oya.service.PictureService;
import com.net.oya.service.ProductService;
import com.net.oya.util.AdminUtil;
import com.net.oya.util.Image;
import com.net.oya.util.UserUtil;

import javax.validation.Valid;

import org.springframework.ui.ModelMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult; 
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;
/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */

@Controller
@RequestMapping(value = "/admin/product")
public class ProductAdminController {

    private static final Logger logger = LoggerFactory.getLogger(ProductAdminController.class);

    @Autowired
    ProductService productService;
    @Autowired
    PictureService pictureService;


    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView admin(ModelAndView model, HttpSession session, HttpServletRequest request) {
        Page<Product> page = new Page<Product>(request);
        productService.findProducts(page);
        //model.addObject("ListMarque", marqueService.findMarque());
	//	model.addObject("ListModel", modelService.findModel());
        model.addObject("page", page);
        model.setViewName("admin/product/productAdmin");
        return model;
    }
    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public ModelAndView newForm(ModelAndView model ,HttpSession session ) {
    //	model.addObject("ListMarque", marqueService.findMarque());
         model.setViewName("admin/product/productNew");
        if (AdminUtil.getAdminFromSession(session) == null) {
        	model.setViewName("redirect:/admin/login?error=true");
            return model;
        }
        model.setViewName("admin/product/productNew");
        return model;
    }

    @RequestMapping(value = "/new", method = RequestMethod.POST)
    public String doNew(@Valid @ModelAttribute Product product, BindingResult result  , HttpSession session,Integer id)throws Exception {
    //	Marque marque = marqueService.findById(id);
    //	product.setMarqueList(marque);
    	product.setInputUser(AdminUtil.getAdminFromSession(session));
        product.setCreateTime(new Date());
        productService.save(product);
        return "redirect:/admin/product";
    }
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(ModelAndView model, @PathVariable Integer id) {
        Product product = productService.findById(id);
        model.addObject("product", product);
        model.setViewName("admin/product/productEdit");
        return model;
    }
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public ModelAndView doEdit(ModelAndView model, Product product, HttpSession session) {
        product.setInputUser(AdminUtil.getAdminFromSession(session));
        productService.save(product);
        model.setViewName("redirect:/admin/product");
        return model;
    }
    private void uploadImage(Product product, HttpSession session, MultipartFile file) {
        String fileName = generateFileName();
        String path = generateFilePath(session);
        String serverFile = path + "/" + fileName;
        Picture picture = uploadAndSaveImg(session, file, fileName, path, serverFile);
        product.setMasterPic(picture);
    }

    private String generateFilePath(HttpSession session) {
        return session.getServletContext().getRealPath("/upload");
    }

    private String generateFileName() {
        return new Date().getTime() + ".jpg";
    }
    private Picture uploadAndSaveImg(HttpSession session, MultipartFile file, String fileName, String path, String serverFile) {
        Picture picture = new Picture();
        try {
            logger.info(path);
            if (!new File(path).exists()) {
                new File(path).mkdirs();
            }
            if (!new File(serverFile).exists()) {
                new File(serverFile).createNewFile();
            }
            byte[] bytes = file.getBytes();
            BufferedOutputStream stream =
                    new BufferedOutputStream(new FileOutputStream(new File(serverFile)));
            stream.write(bytes);
            stream.close();
            //Traitement du zoom
            Image image = new Image(serverFile);
            image.resize(Constants.IMG_WIDTH,Constants.IMG_HEIGHT);
            image.save();
        } catch (Exception e) {
            e.printStackTrace();
        }
        picture.setMemo("Téléchargement du produit");
        picture.setTitle("Titre du produit");
        picture.setUpdateTime(new Date());
        picture.setUrl("/upload/" + fileName);
        picture.setUpdateAdmin(AdminUtil.getAdminFromSession(session));
        pictureService.save(picture);
        return picture;
    }
}
