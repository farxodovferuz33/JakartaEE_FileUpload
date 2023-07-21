package com.file.fileupload;

import java.io.*;
import java.util.UUID;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "uploadServlet", value = "/upload")
@MultipartConfig(location = "C:\\Users\\Feruz\\IdeaProjects\\fileUpload\\src\\main\\resources\\uploaded_photo")
public class UploadServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("upload_page.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Part file = req.getPart("photo");
        String s = UUID.randomUUID() + file.getSubmittedFileName().substring(file.getSubmittedFileName().indexOf("."));
        file.write(s);
        resp.sendRedirect("/");
    }
}