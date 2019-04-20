package com.niit.controller;


import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.niit.dao.SupplierDao;
import com.niit.model.Supplier;

@Controller
public class SupplierController 
{
	@Autowired
    SupplierDao supplierDao;
	
	
	@RequestMapping("/supplier")
	public String showSupplier(Model m)
	{
		List<Supplier> listSuppliers=supplierDao.listSuppliers();
		m.addAttribute("listSuppliers",listSuppliers);
		m.addAttribute("pageinfo","Manage Supplier");
		return "Supplier";
	}
	@RequestMapping(value="/AddSupplier",method=RequestMethod.POST)
	public String addSupplier(Model m,@RequestParam("sName")String supplierName,@RequestParam("sDesc")String supplierDesc)
	{
		Supplier supplier=new Supplier();
		supplier.setSupplierName(supplierName);
		supplier.setSupplierDesc(supplierDesc);
		supplierDao.addSupplier(supplier);
		
		List<Supplier> listSuppliers=supplierDao.listSuppliers();
		m.addAttribute("listSuppliers", listSuppliers);
		
		m.addAttribute("pageinfo","Manage Supplier");
		return "Supplier";
	}
	
	@RequestMapping(value="/deleteSupplier/{supplierId}")
	public String deleteSupplier(Model m,@PathVariable("supplierId")int supplierId)
	{
		Supplier supplier=supplierDao.getSupplier(supplierId);
		supplierDao.deleteSupplier(supplier);
		
		m.addAttribute("pageinfo","Manage Supplier");

		List<Supplier> listSuppliers=supplierDao.listSuppliers();
		m.addAttribute("listSuppliers", listSuppliers);
		
		return "Supplier";
	}
		@RequestMapping(value="/UpdateSupplier",method=RequestMethod.POST)
	public String updateSupplier(Model m,@RequestParam("sId")int supplierId,@RequestParam("sName")String supplierName,@RequestParam("sDesc")String supplierDesc)
	{
		Supplier supplier=supplierDao.getSupplier(supplierId);
		supplier.setSupplierName(supplierName);
		supplier.setSupplierDesc(supplierDesc);
		supplierDao.updateSupplier(supplier);
		
		List<Supplier> listSuppliers=supplierDao.listSuppliers();
		m.addAttribute("listSuppliers", listSuppliers);
		
		m.addAttribute("pageinfo","Manage Supplier");
		return "Supplier";
	}
		@RequestMapping(value="/editSupplier/{supplierId}")
		public String editSupplier(Model m,@PathVariable("supplierId")int supplierId)
		{
			Supplier supplier=supplierDao.getSupplier(supplierId);
			
			m.addAttribute("supplier",supplier);
			m.addAttribute("pageinfo","Manage Supplier");
			return "UpdateSupplier";
		}

}

