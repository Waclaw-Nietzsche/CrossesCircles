package model;

import javax.servlet.*;
import java.io.IOException;

/**
 * Фильтр UTF-8 с поддержкой кириллицы
 */
public class CharacterSetFilter implements Filter
{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException
    { }

    /** Метод фильтрации получаемого контента
     * @param request
     * @param response
     * @param next
     * @throws IOException
     * @throws ServletException
     */
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain next) throws IOException, ServletException
    {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        next.doFilter(request, response);
    }

    @Override
    public void destroy()
    { }
}
