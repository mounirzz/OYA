package com.net.oya.util;

import com.net.oya.model.Product;
import com.net.oya.model.User;

/**
 * Articles liés au panier d'achat
 * @author Vito
 * @version 2014/6/16
 */
public class CartItem {
    private Product product;//Produit
    private Integer total;//Total 

    public CartItem(Product product, Integer total) {
        this.product = product;
        this.total = total;
    }
    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }
}
