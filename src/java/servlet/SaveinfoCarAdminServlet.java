/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.CarDAO;
import dao.CarOfferDAO;
import dao.SellerDao;
import dto.Account;
import dto.CarOffer;
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
public class SaveinfoCarAdminServlet extends HttpServlet {

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
            int offerId = Integer.parseInt(request.getParameter("orderId"));
            String carname = request.getParameter("carname");
            String owners = request.getParameter("owner");
            int price = Integer.parseInt(request.getParameter("price"));
            String img = request.getParameter("file");
            String manufacDate = request.getParameter("date");
            String brand = request.getParameter("brand");
            int showrooms = Integer.parseInt(request.getParameter("showrooms"));
            String decs = request.getParameter("desc");
            int status = 1;
            float percentearn = 0;
            int pricebf = 0;
            int acc = 0;
            String style = request.getParameter("style");
            String km = request.getParameter("km");
            int year = Integer.parseInt(request.getParameter("year"));
            String gear = request.getParameter("gear");
            String fuel = request.getParameter("fuel");
            String origin = request.getParameter("origin");
            String colour = request.getParameter("color");
            int seats = Integer.parseInt(request.getParameter("seats"));
            CarDAO c = new CarDAO();
            c.insertCar(carname, price, img, owners, status, pricebf, manufacDate, brand, showrooms, decs, percentearn, acc);
            c.insertCarInfo(year, style, km, gear, fuel, origin, colour, seats);
            boolean co = CarOfferDAO.changeStatusCarOffer(offerId, 4);
            if (co != false) {
               ArrayList<CarOffer> caroffer = dao.CarOfferDAO.listCarOfferByStatus(2);
                session.setAttribute("listOffer", caroffer);
                request.getRequestDispatcher("CarofferApproach.jsp").forward(request, response);
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
