<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
	String nowDate = date.format(cal.getTime());
	response.setContentType("application/octet-stream");
	response.setHeader("Content-Disposition", "attachment;filename=bookAdmin_" + nowDate + ".xls");
%>
<%@page
	import="org.apache.poi.hssf.usermodel.HSSFSheet,
     org.apache.poi.hssf.usermodel.HSSFWorkbook, 
     org.apache.poi.hssf.usermodel.*,
     java.io.FileOutputStream,java.util.*,
    java.io.*,
    org.apache.poi.hssf.usermodel.*
"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
</head>
<body>
	<%
		List<HashMap<String, Object>> list = (List<HashMap<String, Object>>) request.getAttribute("chkList");
		String[] chkHead = (String[]) request.getAttribute("chkHead");

		HSSFWorkbook workbook = new HSSFWorkbook();

		HSSFSheet sheet = workbook.createSheet("상품목록");
		HSSFRow row;
		HSSFCell cell;
		row = sheet.createRow(0);

		for (int i = 0; i < chkHead.length; i++) {
			row.createCell(i).setCellValue(chkHead[i]);
		}

		for (int i = 0; i < list.size(); i++) {
			row = sheet.createRow(i + 1);
			Iterator<String> mapIter = list.get(i).keySet().iterator();
			int j = 0;
			while(mapIter.hasNext()){
	            String key = mapIter.next();
	            if(key.equals("bookStatus"))
	            {
	            	String status = list.get(i).get(key).toString();
	            	if(status.equals("1"))
	            		status = "대출 가능";
	            	else
	            		status = "대출 불가";
					row.createCell(j++).setCellValue(status);
	            }else
	            {
					row.createCell(j++).setCellValue(list.get(i).get(key).toString());
	            }
	        }
		}
		out.clear();
		out = pageContext.pushBody();
		OutputStream xlsOut = response.getOutputStream();
		workbook.write(xlsOut);
		xlsOut.close();
	%>
</body>
</html>