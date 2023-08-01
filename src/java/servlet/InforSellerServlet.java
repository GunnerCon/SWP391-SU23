/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.CarDAO;
import dao.SellerDao;
import dto.Account;
import dto.Car;
import dto.CarOffer;
import dto.Order;
import dto.Seller;
import dto.Showroom;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 *
 * @author hoang
 */
public class InforSellerServlet extends HttpServlet {

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
            HttpSession session = request.getSession(true);
            Account acc = (Account) session.getAttribute("name");
            Seller s = SellerDao.getSeller(acc.getAccID());
            ArrayList<Car> list = CarDAO.getCars(s.getShowRoomId());
            ArrayList<CarOffer> co = SellerDao.getShowroom(s.getShowRoomId());
            ArrayList<Order> o = SellerDao.getShowrooms(s.getShowRoomId());
//            ArrayList<Showroom> showrooms = SellerDao.getShowrooms(s.getShowRoomId());
            int or = 0;
            int c = 0;
            int carof = 0;
            for (Car car : list) {
                c++;
            }
            for (CarOffer carOffer : co) {
                carof++;
            }
            for (Order order : o) {
                or++;
            }
            session.setAttribute("car", c);
            session.setAttribute("carOffer", carof);
             session.setAttribute("order", or);
            request.getRequestDispatcher("seller.jsp").forward(request, response);
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
