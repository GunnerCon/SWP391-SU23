/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

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
public class UpdateSatusOffer extends HttpServlet {

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
            int ofid = Integer.parseInt(request.getParameter("ofid"));
            HttpSession session = request.getSession(true);
            ArrayList<CarOffer> offer = new ArrayList<>();

            String sta = request.getParameter("sta");
            if (sta.equals("ac")) {
                boolean cof = dao.CarOfferDAO.changeStatusCarOffer(ofid, 2);
                if (cof != false) {
                    offer = dao.CarOfferDAO.listCarOfferByStatus(1);
                    session.setAttribute("listOffer", offer);
                    request.getRequestDispatcher("Caroffer.jsp").forward(request, response);
                }
            } else if (sta.equals("un")) {
                boolean cof = dao.CarOfferDAO.changeStatusCarOffer(ofid, 3);
                if (cof != false) {
                    offer = dao.CarOfferDAO.listCarOfferByStatus(1);
                    session.setAttribute("listOffer", offer);
                    request.getRequestDispatcher("Caroffer.jsp").forward(request, response);

                }
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
