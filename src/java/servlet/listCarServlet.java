/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.OrderDAO;
import dto.Account;
import dto.Car;
import dto.CarOffer;
import dto.Order;
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
public class listCarServlet extends HttpServlet {

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
            String list = request.getParameter("list");
            ArrayList<Account> acc = new ArrayList<>();
            ArrayList<Car> car = new ArrayList<>();
            ArrayList<CarOffer> caroffer = new ArrayList<>();
            ArrayList<Order> order = new ArrayList<>();
            if (list.equals("listSeller")) {
                acc = dao.AccountDAO.getAccountByRole(3);
                session.setAttribute("listSeller", acc);
                request.getRequestDispatcher("Sellers.jsp").forward(request, response);
            }
            if (list.equals("listCustomer")) {
                acc = dao.AccountDAO.getAccountByRole(2);
                session.setAttribute("listCustomer", acc);
                request.getRequestDispatcher("customer.jsp").forward(request, response);
            }
            if (list.equals("listCar")) {
                car = dao.CarDAO.getAllCar();
                session.setAttribute("listCar", car);
                request.getRequestDispatcher("car.jsp").forward(request, response);
            }
            if (list.equals("listOfferApproach")) {
                caroffer = dao.CarOfferDAO.listCarOfferByStatus(2);
                session.setAttribute("listOffer", caroffer);
                request.getRequestDispatcher("CarofferApproach.jsp").forward(request, response);
            }
            if (list.equals("listOfferReject")) {
                caroffer = dao.CarOfferDAO.listCarOfferByStatus(3);
                session.setAttribute("listOffer", caroffer);
                request.getRequestDispatcher("CarofferReject.jsp").forward(request, response);
            }
            if (list.equals("listOfferSuccess")) {
                caroffer = dao.CarOfferDAO.listCarOfferByStatus(4);
                session.setAttribute("listOffer", caroffer);
                request.getRequestDispatcher("CarofferApproachAddCar.jsp").forward(request, response);
            }
            if (list.equals("listOffer")) {
                caroffer = dao.CarOfferDAO.listCarOfferByStatus(1);
                session.setAttribute("listOffer", caroffer);
                request.getRequestDispatcher("Caroffer.jsp").forward(request, response);
            }
            if (list.equals("listOrder")) {

                order = OrderDAO.ListOrderByStatus(1);
                session.setAttribute("listOrder", order);
                request.getRequestDispatcher("CarOrder.jsp").forward(request, response);
            }
            if (list.equals("listOrderDone")) {
                order = OrderDAO.ListOrderByStatus(2);
                session.setAttribute("listOrderDone", order);
                request.getRequestDispatcher("CarOrderDone.jsp").forward(request, response);
            }
            if (list.equals("listOrderFail")) {
                order = OrderDAO.ListOrderByStatus(3);
                session.setAttribute("listOrderFail", order);
                request.getRequestDispatcher("CarOrderFail.jsp").forward(request, response);
            }
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
