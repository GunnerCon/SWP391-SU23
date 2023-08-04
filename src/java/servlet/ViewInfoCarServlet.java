/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.CarDAO;
import dao.ShowRoomDAO;
import dto.Car;
import dto.CarInfo;
import dto.ImgCar;
import dto.Showroom;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;



/**
 *
 * @author hoang
 */
public class ViewInfoCarServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          int carinfo = Integer.parseInt(request.getParameter("carId")) ;
            String brandId = request.getParameter("brandId");
            int room =Integer.parseInt(request.getParameter("rooms")) ;
            ArrayList<CarInfo> c = CarDAO.getAllCarInfo(carinfo);
            ArrayList<Car> c1 = CarDAO.getCar(carinfo);
            ArrayList<ImgCar> img = CarDAO.getImgCar(carinfo);
            ArrayList<Car> c2 = CarDAO.getCarB(brandId);
            ArrayList<Showroom> s = ShowRoomDAO.getShowrooms(room);
            request.setAttribute("room", s);
            request.setAttribute("ci", c);
            request.setAttribute("car", c1);
            request.setAttribute("bId", c2);
            request.setAttribute("imgCar", img);
            request.getRequestDispatcher("ViewInfoCar.jsp").forward(request, response);
        
                  
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
