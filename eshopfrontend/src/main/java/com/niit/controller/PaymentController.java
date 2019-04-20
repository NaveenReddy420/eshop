package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDao;
import com.niit.dao.OrderDao;
import com.niit.dao.ProductDao;
import com.niit.dao.UserDao;
import com.niit.model.CartItem;
import com.niit.model.OrderDetail;
import com.niit.model.UserInfo;

@Controller
public class PaymentController 
{
	@Autowired
	CartDao cartDao;
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	OrderDao orderDao;
	
	@RequestMapping("/checkout")
	public String checkout(Model m,HttpSession session)
	{
		String username=(String)session.getAttribute("username");
		List<CartItem> cartItemList=cartDao.listCartItems(username);
		
		m.addAttribute("cartItemList",cartItemList);
		m.addAttribute("totalAmount",this.getTotalAmount(cartItemList));
		
		String address=userDao.getUser(username.trim()).getCustomerAddr();
		m.addAttribute("addr",address);
		
		return "OrderConfirm";
	}
	
	@RequestMapping(value="/updateAddress",method=RequestMethod.POST)
	public String updateAddress(@RequestParam("addr")String addr,Model m,HttpSession session)
	
	{
		String username=(String)session.getAttribute("username");
		List<CartItem> cartItemList=cartDao.listCartItems(username);
		
		m.addAttribute("cartItemList",cartItemList);
		m.addAttribute("totalAmount",this.getTotalAmount(cartItemList));
		
		UserInfo userInfo=userDao.getUser(username);
		userInfo.setCustomerAddr(addr);
		userDao.updateAddress(userInfo);	
		
		String address=userInfo.getCustomerAddr();
		m.addAttribute("addr",address);
		return "OrderConfirm";
	}
	
	@RequestMapping(value="/payment")
	public String paymentPage(Model m,HttpSession session)
	{
		
		return "Payment";
	}
	
	@RequestMapping(value="/receipt",method=RequestMethod.POST)
	public String generateReceipt(@RequestParam("pmode")String pmode,Model m,HttpSession session)
	{
		String username=(String)session.getAttribute("username");
		
		OrderDetail orderDetail=new OrderDetail();
		orderDetail.setOrderDate(new java.util.Date());
		orderDetail.setShippingAddr(userDao.getUser(username).getCustomerAddr());
		orderDetail.setTranType(pmode);
		orderDetail.setUsername(username);
		
        List<CartItem> cartItemList=cartDao.listCartItems(username);
		
		m.addAttribute("cartItemList",cartItemList);
		m.addAttribute("totalAmount",this.getTotalAmount(cartItemList));
		
		UserInfo userInfo=userDao.getUser(username);
		
		orderDetail.setFinalAmount(this.getTotalAmount(cartDao.listCartItems(username)));
		
		orderDao.saveOrder(orderDetail);
		orderDao.updateCart(username);
		
		m.addAttribute("orderDetail",orderDetail);
		
		
		return "Receipt";
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
