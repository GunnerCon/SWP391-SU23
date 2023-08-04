/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import dao.AccountDAO;
import dto.Account;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author hoang
 */
public class saveChangeProfileUser extends HttpServlet {

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
//       int id = Integer.parseInt(request.getParameter("userId"));
//            String fullName = request.getParameter("txtfullname");
//            String phoneNumber = request.getParameter("txtphonenumber");
//           
//            String email = request.getParameter("txtemail");
//             String password = request.getParameter("txtpass");
//  
//            HttpSession session = request.getSession(true);
//            if (session != null) {
//                String oldemail = (String) session.getAttribute("email");
//                String oldname = (String) session.getAttribute("name");
//                String oldPhone = (String) session.getAttribute("phone");
//                String oldpass = (String) session.getAttribute("password");
//                AccountDAO dao = new AccountDAO();
//               
//                    dao.updateProfileUser(id, fullName, phoneNumber, email, password);
//                    session.setAttribute("name", oldname);
//                    session.setAttribute("phone", oldPhone);
//                    session.setAttribute("email", oldemail);
//                    session.setAttribute("password", oldpass);
//                
//            }
//            request.getRequestDispatcher("ChangeProfile.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
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
