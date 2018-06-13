package com.ZL.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ZL.Dao.CityDao;
import com.ZL.pojo.city;
import com.google.gson.Gson;

@Controller
public class CityController {
	@Resource
	public CityDao dao;

	@RequestMapping(value = "/findAll")
	public String findAll(HttpSession session) {
		List<city> lsst = dao.findByAll();
		session.setAttribute("lsst", lsst);

		return "default";
	}

	@RequestMapping(value = "/del")
	public String del(HttpSession session, int ctid) {
		dao.del(ctid);

		return "redirect:findAll";
	}

	@RequestMapping(value = "/findById")
	public void findById(HttpServletResponse response, int ctid) throws IOException {
		city ct = dao.findById(ctid);
		Gson g = new Gson();
		String json = g.toJson(ct);
		response.setContentType("text/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter pw = response.getWriter();
		pw.print(json);
		pw.flush();

	}	

	@RequestMapping(value = "/update")
	public void update(HttpServletResponse response, city ct) throws IOException {
	    dao.update(ct);
		PrintWriter pw = response.getWriter();
		pw.print("1");
		pw.flush();
		
	}

	@RequestMapping(value = "/save")
	public String save(HttpSession session, city cc) {
		dao.Save(cc);

		return "redirect:findAll";
	}
}
