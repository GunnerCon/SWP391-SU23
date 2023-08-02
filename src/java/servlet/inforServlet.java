/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package servlet;

import dao.AccountDAO;
import dao.CarDAO;
import dao.CarOfferDAO;
import dao.OrderDAO;
import dto.Account;
import dto.Car;
import dto.CarOffer;
import dto.Order;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class inforServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            HttpSession session= request.getSession(true);
            int count =0;
            int countC=0;
            int countCof=0;
            int countCod=0;
            ArrayList<Account> countAcc= AccountDAO.getAccountByRole(2);
            ArrayList<Car> countCar= CarDAO.getAllCar();
            ArrayList<CarOffer> countCarof= CarOfferDAO.listCarOffer();
            ArrayList<Order> countCarod= OrderDAO.ListOrder();
            for (Account ac : countAcc) {
                count++;
            }   
            for (Car car : countCar) {
                countC++;
            }
            for (CarOffer carOffer : countCarof) {
                countCof++;
            }
            for (Order cod : countCarod) {
                countCod++;
            }
            session.setAttribute("count", count);
            session.setAttribute("countC", countC);
            session.setAttribute("countCof", countCof);
            session.setAttribute("countCod", countCod);
            request.getRequestDispatcher("adminPage.jsp").forward(request, response);
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
