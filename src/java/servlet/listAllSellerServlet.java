/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.CarDAO;
import dao.OrderDAO;
import dao.SellerDao;
import dto.Account;
import dto.Car;
import dto.CarOffer;
import dto.Order;
import dto.Seller;
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
public class listAllSellerServlet extends HttpServlet {

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
            String list = request.getParameter("list");
            Seller s = SellerDao.getSeller(acc.getAccID());
            ArrayList<Car> listCar = CarDAO.getCars(s.getShowRoomId());
            ArrayList<CarOffer> caroffer = new ArrayList<>();
            ArrayList<Order> order = new ArrayList<>();
            if (list.equals("listCar")) {
                session.setAttribute("listC", listCar);
                request.getRequestDispatcher("CarSeller.jsp").forward(request, response);
            }

            if (list.equals("listOffer")) {
                caroffer = dao.CarOfferDAO.listCarOfferByStatusSeller(1, s.getShowRoomId(), s.getSellerId());
                session.setAttribute("listOffer", caroffer);
                request.getRequestDispatcher("CarofferSeller.jsp").forward(request, response);
            }
            if (list.equals("listOfferApproach")) {
                caroffer = dao.CarOfferDAO.listCarOfferByStatusSeller(2, s.getShowRoomId(),s.getSellerId());
                session.setAttribute("listOffer", caroffer);
                request.getRequestDispatcher("CarofferApproachSeller.jsp").forward(request, response);
            }
            if (list.equals("listOfferReject")) {
                caroffer = dao.CarOfferDAO.listCarOfferByStatusSeller(3, s.getShowRoomId() ,s.getSellerId());
                session.setAttribute("listOffer", caroffer);
                request.getRequestDispatcher("CarofferRejectSeller.jsp").forward(request, response);
            }
            if (list.equals("listOfferSuccess")) {
                caroffer = dao.CarOfferDAO.listCarOfferByStatusSeller(4, s.getShowRoomId(),s.getSellerId());
                session.setAttribute("listOffer", caroffer);
                request.getRequestDispatcher("CarofferApproachAddCarSeller.jsp").forward(request, response);
            }

            if (list.equals("listOrder")) {

                order = SellerDao.getShowroomsSeller(s.getShowRoomId(), 1,s.getSellerId());
                session.setAttribute("listOrder", order);
                request.getRequestDispatcher("CarOrderSeller.jsp").forward(request, response);
            }
            if (list.equals("listOrderDone")) {
              order = SellerDao.getShowroomsSeller(s.getShowRoomId(), 2,s.getSellerId());
                session.setAttribute("listOrderDone", order);
                request.getRequestDispatcher("CarOrderDoneSeller.jsp").forward(request, response);
            }
            if (list.equals("listOrderFail")) {
                 order = SellerDao.getShowroomsSeller(s.getShowRoomId(), 3,s.getSellerId());
                session.setAttribute("listOrderFail", order);
                request.getRequestDispatcher("CarOrderFailSeller.jsp").forward(request, response);
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
