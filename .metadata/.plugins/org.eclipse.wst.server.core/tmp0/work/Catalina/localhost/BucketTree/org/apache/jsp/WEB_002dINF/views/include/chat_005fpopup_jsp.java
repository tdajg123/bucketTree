/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.36
 * Generated at: 2016-08-27 04:35:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.include;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class chat_005fpopup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"popup-box chat-popup\" id=\"qnimate\" style= \"z-index: 99999\">\r\n");
      out.write("\t\t<div class=\"popup-head\">\r\n");
      out.write("\t\t\t<div class=\"popup-head-left pull-left\">\r\n");
      out.write("\t\t\t\t<img src=\"/BucketTree/images/user1-128x128.jpg\"\r\n");
      out.write("\t\t\t\t\talt=\"iamgurdeeposahan\"> name\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"popup-head-right pull-right\">\r\n");
      out.write("\t\t\t\t<div class=\"btn-group\"></div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!-- Chat Exit Button -->\r\n");
      out.write("\t\t\t\t<button data-widget=\"remove\" id=\"removeClass\"\r\n");
      out.write("\t\t\t\t\tclass=\"chat-header-button pull-right\" type=\"button\">\r\n");
      out.write("\t\t\t\t\t<i class=\"glyphicon glyphicon-off\"></i>\r\n");
      out.write("\t\t\t\t</button>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"popup-messages\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"direct-chat-messages\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"chat-box-single-line\">\r\n");
      out.write("\t\t\t\t\t<abbr class=\"timestamp\">August 23th, 2016</abbr>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!-- Message. Default to the left -->\r\n");
      out.write("\t\t\t\t<div class=\"direct-chat-msg doted-border\">\r\n");
      out.write("\t\t\t\t\t<div class=\"direct-chat-info clearfix\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"direct-chat-name pull-left\">name</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- /.direct-chat-info -->\r\n");
      out.write("\t\t\t\t\t<img alt=\"message user image\"\r\n");
      out.write("\t\t\t\t\t\tsrc=\"/kr/resources/img/user1-128x128.jpg\" class=\"direct-chat-img\">\r\n");
      out.write("\t\t\t\t\t<!-- /.direct-chat-img -->\r\n");
      out.write("\t\t\t\t\t<div class=\"direct-chat-text\">Hey bro, howâs everything going\r\n");
      out.write("\t\t\t\t\t\t?</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"direct-chat-info clearfix\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"direct-chat-timestamp pull-right\">3.36 PM</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<!-- send-chat -->\r\n");
      out.write("\t\t\t\t\t<div class=\"direct-chat-text-send pull-right\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"direct-chat-text-send \">So-so</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"direct-chat-info clearfix\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"direct-chat-timestamp pull-left\">3.37 PM</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- /.direct-chat-text -->\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- /.direct-chat-msg -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"chat-box-single-line\">\r\n");
      out.write("\t\t\t\t\t<abbr class=\"timestamp\">August 24th, 2016</abbr>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!-- Message. Default to the left -->\r\n");
      out.write("\t\t\t\t<div class=\"direct-chat-msg doted-border\">\r\n");
      out.write("\t\t\t\t\t<div class=\"direct-chat-info clearfix\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"direct-chat-name pull-left\">name</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- /.direct-chat-info -->\r\n");
      out.write("\t\t\t\t\t<img alt=\"iamgurdeeposahan\"\r\n");
      out.write("\t\t\t\t\t\tsrc=\"/BucketTree/images/user1-128x128.jpg\" class=\"direct-chat-img\">\r\n");
      out.write("\t\t\t\t\t<!-- /.direct-chat-img -->\r\n");
      out.write("\t\t\t\t\t<div class=\"direct-chat-text\">Chaaaaaaaaaaaaaaaaaaatting</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"direct-chat-info clearfix\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"direct-chat-timestamp pull-right\">3.36 PM</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<!-- /.direct-chat-text -->\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- /.direct-chat-msg -->\r\n");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"popup-messages-footer\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t<textarea id=\"status_message\" placeholder=\"Type a message...\"\r\n");
      out.write("\t\t\t\trows=\"10\" cols=\"40\" name=\"message\"></textarea>\r\n");
      out.write("\t\t\t<!-- sendButton -->\r\n");
      out.write("\t\t\t<a class=\"btn btn-default\" id=\"send_button\">\r\n");
      out.write("\t\t\t<i class=\"fa fa-paper-plane-o\"></i>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t\t<div class=\"btn-footer\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
