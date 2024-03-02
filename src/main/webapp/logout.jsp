<%

    if (session != null) {
        session.invalidate();
        response.sendRedirect("logout-page.jsp");
    }

%>
