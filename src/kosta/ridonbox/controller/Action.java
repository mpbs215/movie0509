package kosta.ridonbox.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;

public interface Action {
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

}