package springweb.demo;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("customer")
public class CustomerController {
	@Autowired
	private CustomerRepo customerRepo;
	
	@GetMapping("/")
	public ModelAndView getstudent() {
		List<Customer> l = customerRepo.findAll();
		HashMap<String, List<Customer>> m = new HashMap<>();
		m.put("mycustomer", l);
		return new ModelAndView("customer",m);
	}

	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public ModelAndView getform() {
		return new ModelAndView("form");
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView edit() {
		return new ModelAndView("edit");
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String updatestudent(HttpServletRequest req) {
		long id = Long.parseLong(req.getParameter("id"));
		String name = req.getParameter("name");
		System.out.println(name);
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		Optional<Customer> s = customerRepo.findById(id);
		Customer stu = s.get();
		stu.setName(name);
		stu.setPhone(phone);
		stu.setAddress(address);
		customerRepo.save(stu);
		
		return "redirect:/customer/";
	}
	@RequestMapping(value = "/form",  method = RequestMethod.POST)
	public String addstudent(HttpServletRequest req) {
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		Customer s = new Customer(name,phone,address);
		customerRepo.save(s);
		
		return "redirect:/customer/";
	}
	
	@RequestMapping(value = "/delete/{id}" , method = RequestMethod.GET)
	public String delcustomer(@PathVariable("id") long id) {
		
		customerRepo.deleteById(id);
		return "redirect:/customer/";
	}
	
}
