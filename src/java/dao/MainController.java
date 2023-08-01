/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package dao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author hoang
 */
public class MainController extends HttpServlet {

    String url = "";

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
            String action = request.getParameter("action");
            if (action.equals("") || action == null) {
                url = "index.jsp";
            } else if (action.equals("login")) {
                url = "LoginServlet";
            } else if (action.equals("sigup")) {
                url = "registerServlet";
            } else if (action.equals("logout")) {
                url = "LogoutServlet";
            } else if (action.equals("searchCars")) {
                url = "SearchCarServlet";
            } else if (action.equals("ShowRoomHN")) {
                url = "ShowRoomHNServlet";
            } else if (action.equals("ShowRoomDN")) {
                url = "ShowRoomDNServlet";
            } else if (action.equals("ShowRoomHCM")) {
                url = "ShowRoomHCMServlet";
            } else if (action.equals("ShowRoomHNz")) {
                url = "ShowRoomHNzServlet";
            } else if (action.equals("ShowRoomDNz")) {
                url = "ShowRoomDNzServlet";
            } else if (action.equals("ShowRoomHCMz")) {
                url = "ShowRoomHCMzServlet";
            } else if (action.equals("viewCar")) {
                url = "viewCarServlet";
            } else if (action.equals("viewCarUser")) {
                url = "viewCarUserServlet";
            } else if (action.equals("searchBrand")) {
                url = "searchBrandServlet";
            } else if (action.equals("addtocart")) {
                url = "addtocartServlet";
            } else if (action.equals("listAll")) {
                url = "listCarServlet";
            } else if (action.equals("listCarbybrand")) {
                url = "ListCarbyBrandServlet";

            } else if (action.equals("search")) {
                url = "SearchCarByNameServlet";
            } else if (action.equals("listCarbybranduser")) {
                url = "ListCarbyBrandUser";

            } else if (action.equals("xemchitiet")) {
                url = "ProfileShowRoomServlet";
            } else if (action.equals("saveOffer")) {
                url = "SaveOfferServlet";
            } else if (action.equals("saveChangeProfileUser")) {
                url = "saveChangeProfileUser";
            }
             else if (action.equals("saveChangeProfileUser")) {
                url = "saveChangeProfileUser";
            }
            else if (action.equals("userPage")) {
                url = "userPageServlet";
            }
                   else if (action.equals("Luu")) {
                url = "ByCar";
            }
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
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
