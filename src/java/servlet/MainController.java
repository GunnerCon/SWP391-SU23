/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

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
                url = "index.html";
            } else if (action.equals("login")) {
                url = "LoginServlet";
            } else if (action.equals("sigup")) {
                url = "registerServlet";
            } else if (action.equals("logout")) {
                url = "LogoutServlet";
            } else if (action.equals("searchCars")) {
                url = "SearchCarServlet";
            } else if (action.equals("searchCarIndex")) {
                url = "searchCarIndexServlet";
            } else if (action.equals("ShowRoomHN")) {
                url = "ShowRoomHNServlet";
            } else if (action.equals("ShowRoomDN")) {
                url = "ShowRoomDNServlet";
            } else if (action.equals("ShowRoomHCM")) {
                url = "ShowRoomHCMServlet";
            }
            
            else if (action.equals("ShowRoomHCMz")) {
                url = "ShowRoomHCMServlet";
            }
            
            else if (action.equals("ShowRoomDNz")) {
                url = "ShowRoomDNzServlet";
            }
            
            
             else if (action.equals("viewCarUser")) {
                url = "viewCarUser";
            } 
            else if (action.equals("viewCar")) {
                url = "viewCarServlet";
            } else if (action.equals("searchBrand")) {
                url = "searchBrandServlet";
            } else if (action.equals("addtocart")) {
                url = "addtocartServlet";
            } else if (action.equals("listAll")) {
                url = "listCarServlet";
            } else if (action.equals("listCarbybrand")) {
                url = "ListCarbyBrandServlet";
            } 
             else if (action.equals("listCarbybranduser")) {
                url = "ListCarbyBrandUserSevlet";
            }
            
            else if (action.equals("search")) {
                url = "SearchCarByNameServlet";
            }
            
            else if (action.equals("payment")) {
                url = "PaymentServlet";
            }
            
             else if (action.equals("searchSeller")) {
                url = "SearchCarByNameSellerServlet";
            }
            
              else if (action.equals("notemuaxe")) {
                url = "NoteOfByCarServlet";
            }
            
            else if (action.equals("saveChange")) {
                url = "ChangeInfoServlet";
            } 
             else if (action.equals("saveOfferUser")) {
                url = "CarOfferUserServlet";
            }
              else if (action.equals("saveOffer")) {
                url = "DatxeServlet";
            }
            
            
            else if (action.equals("newCar")) {
                url = "";
            } 
            else if (action.equals("new")) {
                url = "NewCarAccServlet";
            }
              else if (action.equals("notemuaxeAdmin")) {
                url = "NoteOfByCarAdminServlet";
            }
            else if (action.equals("newCarInfo")) {
                url = "SaveCarInfoAddServlet";
            } else if (action.equals("Luu")) {
                url = "ByCar";
            }
            
            else if (action.equals("Mua")) {
                url = "ByCarUserOder";
            }
            else if (action.equals("accept")) {
                url = "UpdateSatusOffer";
            } else if (action.equals("updatest")) {
                url = "UpdateSatusOrder";
            } else if (action.equals("newCarAdd")) {
                url = "NewCar.jsp";
            } else if (action.equals("listAllSeller")) {
                url = "listAllSellerServlet";
            } else if (action.equals("acceptSeller")) {
                url = "UpdateSatusOfferSeller";
            } else if (action.equals("updatestSeller")) {
                url = "UpdateSatusOrderS";
            }
             else if (action.equals("luungayhen")) {
                url = "SaveDateOfferServlet";
            }
            else if (action.equals("luuhuy")) {
                url = "SaveRejectServlet";
            }
            
            else if (action.equals("thongtinxe")) {
                url = "PaymentServlet";
            }
              else if (action.equals("pay")) {
                url = "PaymentCarServlet";
            }
              
                else if (action.equals("feedback")) {
                url = "FeedbackServlet";
            }
                
            else if (action.equals("luuhuyAdmin")) {
                url = "SaveRejectAdminServlet";
            }
              else if (action.equals("luuthongtinxe")) {
                url = "SaveinfoCarOfGuestServlet";
            }
             else if (action.equals("luuthongtinxeAdmin")) {
                url = "SaveinfoCarAdminServlet";
            }
             else if (action.equals("updateDate")) {
                url = "UpdateDateOfferServlet";
            }
            else if (action.equals("infoUser")) {
                url = "InfoUserServlet";
            }
              else if (action.equals("reviewCarInfo")) {
                url = "ReviewCarInfoSerVlet";
            }
             else if (action.equals("xacnhanmuaxe")) {
                url = "XacnhanmuaxeServlet";
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
