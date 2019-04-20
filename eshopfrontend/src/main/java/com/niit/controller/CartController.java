package com.niit.controller;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDao;
import com.niit.dao.ProductDao;
import com.niit.model.CartItem;
import com.niit.model.Product;

@Controller
public class CartController 
{

	@Autowired
	CartDao cartDao;
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping ("/cart")
	public String showCart(Model m,HttpSession session)
	{
	
	String username=(String)session.getAttribute("username");
	List<CartItem> cartItemList=cartDao.listCartItems(username);
	
	m.addAttribute("cartItemList",cartItemList);
	m.addAttribute("totalAmount",this.getTotalAmount(cartItemList));
	
	return "Cart";
	}
	
	@RequestMapping(value="/addToCart/{proId}")
	public String addToCart(@PathVariable("proId")int proId,@RequestParam("quantity")int quantity,HttpSession session,Model m)
    {
		Product product=productDao.getProduct(proId);
		
		String username=(String)session.getAttribute("username");
		
		CartItem cartItem=new CartItem();
		cartItem.setProId(product.getProId());
		cartItem.setProName(product.getProName());
		cartItem.setQuantity(quantity);
		cartItem.setProprice(product.getProprice());
		cartItem.setPaymentStatus("NP");
		cartItem.setUsername(username);
		
		cartDao.addCartItem(cartItem);
		
		List<CartItem> cartItemList=cartDao.listCartItems(username);
		
		m.addAttribute("cartItemList",cartItemList);
		m.addAttribute("totalAmount",this.getTotalAmount(cartItemList));
		
		return "Cart";
	}
	
	@RequestMapping("/updateCartItem/{cartItemId}")
	public String updateCartItem(@PathVariable("cartItemId")int cartItemId,@RequestParam("quantity")int quantity,Model m,HttpSession session)
	{
		CartItem cartItem=cartDao.getCartItem(cartItemId);
		cartItem.setQuantity(quantity);
		
		cartDao.updateCartItem(cartItem);
		
		String username=(String)session.getAttribute("username");
		List<CartItem> cartItemList=cartDao.listCartItems(username);
		
		m.addAttribute("cartItemList",cartItemList);
		m.addAttribute("totalAmount",this.getTotalAmount(cartItemList));
		
		return "Cart";
	}
	
	@RequestMapping("/deleteCartItem/{cartItemId}")
	public String deleteCartItem(@PathVariable("cartItemId")int cartItemId,Model m,HttpSession session)
	{
       CartItem cartItem=cartDao.getCartItem(cartItemId);
		
		
		cartDao.deleteCartItem(cartItem);
		
		String username=(String)session.getAttribute("username");
		List<CartItem> cartItemList=cartDao.listCartItems(username);
		
		m.addAttribute("cartItemList",cartItemList);
		m.addAttribute("totalAmount",this.getTotalAmount(cartItemList));
		
		return "Cart";
	}
	
	
	public int getTotalAmount(List<CartItem> cartList)
	{
		int totalAmount=0,count=0;
		
		while(count<cartList.size())
		{
		  totalAmount=totalAmount+(cartList.get(count).getQuantity()*cartList.get(count).getProprice());
	      count++;		
		}
		return totalAmount;
	}
}
