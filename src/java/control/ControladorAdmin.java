/*
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.
 *
 * Copyright (c) 2021 Oracle and/or its affiliates. All rights reserved.
 *
 * Oracle and Java are registered trademarks of Oracle and/or its affiliates.
 * Other names may be trademarks of their respective owners.
 *
 * The contents of this file are subject to the terms of either the GNU
 * General Public License Version 2 only ("GPL") or the Common
 * Development and Distribution License("CDDL") (collectively, the
 * "License"). You may not use this file except in compliance with the
 * License. You can obtain a copy of the License at
 * http://www.netbeans.org/cddl-gplv2.html
 * or nbbuild/licenses/CDDL-GPL-2-CP. See the License for the
 * specific language governing permissions and limitations under the
 * License.  When distributing the software, include this License Header
 * Notice in each file and include the License file at
 * nbbuild/licenses/CDDL-GPL-2-CP.  Oracle designates this
 * particular file as subject to the "Classpath" exception as provided
 * by Oracle in the GPL Version 2 section of the License file that
 * accompanied this code. If applicable, add the following below the
 * License Header, with the fields enclosed by brackets [] replaced by
 * your own identifying information:
 * "Portions Copyrighted [year] [name of copyright owner]"
 *
 * If you wish your version of this file to be governed by only the CDDL
 * or only the GPL Version 2, indicate your decision by adding
 * "[Contributor] elects to include this software in this distribution
 * under the [CDDL or GPL Version 2] license." If you do not indicate a
 * single choice of license, a recipient has the option to distribute
 * your version of this file under either the CDDL, the GPL Version 2 or
 * to extend the choice of license to its licensees as provided above.
 * However, if you add GPL Version 2 code and therefore, elected the GPL
 * Version 2 license, then the option applies only if the new code is
 * made subject to such option by the copyright holder.
 *
 * Contributor(s):
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.AdminDAO;
import modelo.Administrador;

/**
 *
 * @author Duvan Felipe
 */
@WebServlet(name = "ControladorAdmin", urlPatterns = {"/ControladorAdmin"})
public class ControladorAdmin extends HttpServlet {

    AdminDAO dao = new AdminDAO();
    Administrador admin = new Administrador();

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
        String accion = request.getParameter("accion");

        switch (accion) {
            case "home":
                request.getRequestDispatcher("Index.jsp").forward(request, response);
                break;
            case "home1":
                request.getRequestDispatcher("Index_1.jsp").forward(request, response);
                break;
            case "ficha":
                request.getRequestDispatcher("Ficha.jsp").forward(request, response);
                break;
            case "ficha1":
                request.getRequestDispatcher("Ficha_1.jsp").forward(request, response);
                break;
            case "autor":
                request.getRequestDispatcher("Autor.jsp").forward(request, response);
                break;
            case "autor1":
                request.getRequestDispatcher("Autor_1.jsp").forward(request, response);
                break;
            case "admin":
                request.getRequestDispatcher("LoginAdmin.jsp").forward(request, response);
                break;
            case "gestionadmin":
                request.getRequestDispatcher("Admin.jsp").forward(request, response);
                break;

            default:
                throw new AssertionError();
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

        String accion = request.getParameter("accion");
        switch (accion) {

            case "Listar":
                List<Administrador> datos = dao.listar();
                request.setAttribute("datos", datos);
                request.getRequestDispatcher("Admin.jsp").forward(request, response);
                break;
            case "Nuevo":
                request.getRequestDispatcher("AddAdmin.jsp").forward(request, response);
                break;
            case "Guardar":
                String idAdmin = request.getParameter("txtidAdmin");
                String nombreAdmin = request.getParameter("txtnombreAdmin");
                String apellidoAdmin = request.getParameter("txtapellidoAdmin");
                String correoAdmin = request.getParameter("txtcorreoAdmin");
                String contraseñaAdmin = request.getParameter("txtcontraAdmin");
                String claveAdmin = request.getParameter("txtclaveAdmin");
                admin.setId(idAdmin);
                admin.setNombre(nombreAdmin);
                admin.setApellido(apellidoAdmin);
                admin.setEmail(correoAdmin);
                admin.setContraseña(contraseñaAdmin);
                admin.setClave(claveAdmin);
                dao.agregar(admin);
                request.getRequestDispatcher("ControladorAdmin?accion=ListarAdmin").forward(request, response);
                break;
            case "Editar":
                String idAdmin1 = request.getParameter("idAdmin");
                Administrador admine = dao.listarId(idAdmin1);
                request.setAttribute("administrador", admine);
                request.getRequestDispatcher("EditAdmin.jsp").forward(request, response);
                break;
            case "Actualizar":
                String acidAdmin = request.getParameter("txtidAdmin");
                String acNombreAdmin = request.getParameter("txtnombreAdmin");
                String acApellidoAdmin = request.getParameter("txtapellidoAdmin");
                String acCorreoAdmin = request.getParameter("txtcorreoAdmin");
                String acContraAdmin = request.getParameter("txtcontraAdmin");
                admin.setId(acidAdmin);
                admin.setNombre(acNombreAdmin);
                admin.setApellido(acApellidoAdmin);
                admin.setEmail(acCorreoAdmin);
                admin.setContraseña(acContraAdmin);
                dao.actualizar(admin);
                request.getRequestDispatcher("ControladorAdmin?accion=ListarAdmin").forward(request, response);
                break;
            case "Borrar":
                String idAdmin2 = request.getParameter("idAdmin");
                dao.delete(idAdmin2);
                request.getRequestDispatcher("ControladorAdmin?accion=ListarAdmin").forward(request, response);
                break;
            case "Principal":
                request.getRequestDispatcher("Index.jsp").forward(request, response);
                break;

            default:
                throw new AssertionError();
        }
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
