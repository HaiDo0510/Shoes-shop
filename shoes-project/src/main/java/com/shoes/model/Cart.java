package com.shoes.model;

import java.util.ArrayList;

public class Cart {
	private ArrayList<ProductID> cart;
    
    public Cart(){
    	cart=new ArrayList<ProductID>();
    }
    
    public void ThemHang(ProductID mh){
        //Nếu món hàng đã có trong giỏ
        //thì cập nhập lại số lượng
    	int dem=0;
    	for(ProductID i:cart) {
    		if(i.getId()==mh.getId()) {
    			i.setQuantity(i.getQuantity()+1);
    			dem=1;
    			break;
    		}
    	}
        
        if(dem==0){//còn không thì thêm mới
            cart.add(mh);
        }
    }
     
    public int Tongtien(){
        int tien=0;
        for(ProductID mh:cart){
            tien+=mh.getPrice()*mh.getQuantity();
        }
        return tien;
    }
     
    public ArrayList<ProductID> getGH(){
        return cart;
    }
}
