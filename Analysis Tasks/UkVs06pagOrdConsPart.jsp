<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
<%response.setHeader("Pragma", "no-cache");%>
<%response.setDateHeader("Expires", 0);%>
<%@page import="com.gv.it.framework.CodeTableManager"%>

<%
	int colspanNR36 = 2;
//SSU conversion change - add .getInstance ()
	String enableNR_134 = (String) CodeTableManager.getInstance().getDescription("piloting",System.getProperty("aftersales.sector")+upf.getPdCode()+"NR134");
	if (null != enableNR36 && enableNR36.equalsIgnoreCase("Y")) {
		colspanNR36 = 3;
	}
	String enableNR_256= (String) CodeTableManager.getInstance().getDescription("piloting", System.getProperty("aftersales.sector")+ upf.getPdCode()+"NR256");
	if("Y".equalsIgnoreCase(enableNR_256)&& upf.isInternal()&&"Y".equalsIgnoreCase((String)request.getAttribute("NR256"))){
		enableNR_256="Y";
	}else{
		enableNR_256="N";
		}
	String enableNR_443= (String) CodeTableManager.getInstance().getDescription("piloting", System.getProperty("aftersales.sector")+ upf.getPdCode()+"NR443");
%>
<input type="hidden" name="NR256" value="Y">
<table border="1">
	<tr>
		<%
					if (!"Y".equalsIgnoreCase(enableNR_134)) {
					%>
		<th colspan="2"><bean:message key="UkAp11.lbl_VettFerme"
			bundle="governoMessages" /></th>
		<%
					}
					%>
		<%
						if (attivo != null && !attivo.equalsIgnoreCase("N")) {
						%>
		<th colspan="<%=colspanNR36%>"><bean:message
			key="UkAp11.lbl_InevasoUrgenteCBR" bundle="governoMessages" /></th>
		<th colspan="<%=colspanNR36%>"><bean:message
			key="UkAp11.lbl_InevasoNormaleCBR" bundle="governoMessages" /></th>

		<%
													String enableNR43 = (String) CodeTableManager.getInstance().getDescription(
													"piloting", System.getProperty("aftersales.sector")
															+ upf.getPdCode() + "NR43");

													if (null != enableNR43 && enableNR43.equalsIgnoreCase("Y")) {
											%>
	
		<!--  <th colspan="2" onclick="javascript:window.open('<%=request.getContextPath()%>/UkAp11pagSceltaBackOrder.do?submitDispatchAction=displayPageEvent&txtPartNumber='+document.getElementById('partNumber')+'&wareHouseCode='+document.getElementById('wareHouseCode'),'','menubar=no,status=no,toolbar=no,scrollbars=yes,resizable=no');"> -->

		<th colspan="<%=colspanNR36%>" onclick="mypopup()"
			style="cursor: hand; color: #0000aa;text-decoration: underline">
		<div style="display: none"><a href="#"></a></div>
		<bean:message key="UkAp11.lbl_TotaleInevasoCBR"
			bundle="governoMessages" /></th>
		<%
						} else {
						%>
		<th colspan="2"><bean:message key="UkAp11.lbl_TotaleInevasoCBR"
			bundle="governoMessages" /></th>
		<%
						}
						%>

		<%
					if (null != enableNR36 && enableNR36.equalsIgnoreCase("Y")) {
					%>
					<%if("Y".equalsIgnoreCase(enableNR_256)){ %>
					<th colspan="2" onclick="mypopups()"
			style="cursor: hand; color: #0000aa;text-decoration: underline">
			<div style="display: none"><a href="#"></a></div>
			<bean:message key="UkVs06.lbl_FutureOrders"
			bundle="governoMessages" /></th>
					<%} else{%>
		<th colspan="2"><bean:message key="UkVs06.lbl_FutureOrders"
			bundle="governoMessages" /></th>
			<%} %>
		<% } %>
		<%
						} else {
						%>
		<th colspan="2"><bean:message key="UkAp11.lbl_InevasoUrgente"
			bundle="governoMessages" /></th>
		<th colspan="2"><bean:message key="UkAp11.lbl_InevasoNormale"
			bundle="governoMessages" /></th>
		<th colspan="2"><bean:message key="UkAp11.lbl_TotaleInevaso"
			bundle="governoMessages" /></th>
		<%
						}
						%>
		<th colspan="2"><bean:message key="UkAp11.lbl_Entrate"
			bundle="governoMessages" /></th>
			<%
					if (null != enableNR36 && enableNR36.equalsIgnoreCase("Y")) {
					%>
		<th rowspan="2"><bean:message key="UkVs06.lbl_RegionAvailability"
			bundle="governoMessages" /></th>
			<% } %>
			
		<th colspan="3" onclick="vorpopup()"
			style="cursor: hand; color: #0000aa;text-decoration: underline">
		<div style="display: none"><a href="#"></a></div>
		<bean:message key="UkAp11.lbl_Totale_Vor_Backlog"
			bundle="governoMessages" /></th>
			
	</tr>
	<tr>
		<%
				if (!"Y".equalsIgnoreCase(enableNR_134)) {
				%>
		<th>
		<%
					if (attivo != null && !attivo.equalsIgnoreCase("N")) {
					%> <bean:message key="UkAp11.lbl_InevasoVFCBR"
			bundle="governoMessages" /> <%
					} else {
					%> <bean:message key="UkAp11.lbl_InevasoVF"
			bundle="governoMessages" /> <%
					}
					%>
		</th>
		<th><bean:message key="UkAp11.lbl_PrevVF"
			bundle="governoMessages" /></th>
		<% } %>
		<th>
		<%
					if (attivo != null && !attivo.equalsIgnoreCase("N")) {
					%> <bean:message key="UkAp11.lbl_InevasoUCBR"
			bundle="governoMessages" /> <%
					} else {
					%> <bean:message key="UkAp11.lbl_InevasoU" bundle="governoMessages" />
		<%
					}
					%>
		</th>
		<%
					if (null != enableNR36 && enableNR36.equalsIgnoreCase("Y")) {
					%>
		<th><bean:message key="UkAp11.lbl_Lines" bundle="governoMessages" /></th>
		<%
					}
					%>
		<th><bean:message key="UkAp11.lbl_PrevU" bundle="governoMessages" /></th>
		<th>
		<%
					if (attivo != null && !attivo.equalsIgnoreCase("N")) {
					%> <bean:message key="UkAp11.lbl_InevasoNCBR"
			bundle="governoMessages" /> <%
					} else {
					%> <bean:message key="UkAp11.lbl_InevasoN" bundle="governoMessages" />
		<%
					}
					%>
		</th>
		<%
					if (null != enableNR36 && enableNR36.equalsIgnoreCase("Y")) {
					%>
		<th><bean:message key="UkAp11.lbl_Lines" bundle="governoMessages" /></th>
		<%
					}
					%>
		<th><bean:message key="UkAp11.lbl_PrevN" bundle="governoMessages" /></th>
		<th>
		<%
					if (attivo != null && !attivo.equalsIgnoreCase("N")) {
					%> <bean:message key="UkAp11.lbl_InevasoTCBR"
			bundle="governoMessages" /> <%
					} else {
					%> <bean:message key="UkAp11.lbl_InevasoT" bundle="governoMessages" />
		<%
					}
					%>
		</th>
		<%
					if (null != enableNR36 && enableNR36.equalsIgnoreCase("Y")) {
					%>
		<th><bean:message key="UkAp11.lbl_Lines" bundle="governoMessages" /></th>
		<%
					}
					%>
		<th><bean:message key="UkAp11.lbl_PrevT" bundle="governoMessages" /></th>

		<%
					if (null != enableNR36 && enableNR36.equalsIgnoreCase("Y")) {
					%>
		<th><bean:message key="UkVs06.lbl_FutureQuantity"
			bundle="governoMessages" /></th>
		<th><bean:message key="UkVs06.lbl_FutureLines"
			bundle="governoMessages" /></th>
		<%
					}
					%>
		
		    <th><bean:message key="UkAp11.lbl_MatEntrata" bundle="governoMessages" /></th>
			<th><bean:message key="UkAp11.lbl_MatTransito" bundle="governoMessages" /></th> 
			
			<th><bean:message key="UkAp11.lbl_InevasoTCBR" bundle="governoMessages" /></th> 
			<th><bean:message key="UkAp16rgda.lbl_InevasoULinee" bundle="governoMessages" /></th> 
			<th><bean:message key="UkAp11.lbl_ExpectedQty" bundle="governoMessages" /></th> 
	</tr>
	<tr>
		<%
				if (!"Y".equalsIgnoreCase(enableNR_134)) {
				%>
		<td align="center"><bean:write name="cInevasi"
			property="inevasoVettFerma" formatKey="doubleFormat1" /></td>

		<td align="center"><%=((java.util.ArrayList) session.getAttribute("prevQta"))
							.get(0).toString()%></td>
		<%
					}
					%>
		<td align="center"><bean:write name="cInevasi"
			property="inevasoUrgente" formatKey="doubleFormat1" /></td>
		<%
					if (null != enableNR36 && enableNR36.equalsIgnoreCase("Y")) {
					%>
		<td align="center"><%=((java.util.ArrayList) session
								.getAttribute("prevLines")).get(1).toString()%></td>
		<%
					}
					%>
		<td align="center"><%=((java.util.ArrayList) session.getAttribute("prevQta"))
							.get(1).toString()%></td>
		<td align="center"><bean:write name="cInevasi"
			property="inevasoNormale" formatKey="doubleFormat1" /></td>
		<%
					if (null != enableNR36 && enableNR36.equalsIgnoreCase("Y")) {
					%>
		<td align="center"><%=((java.util.ArrayList) session
								.getAttribute("prevLines")).get(2).toString()%></td>
		<%
					}
					%>
		<td align="center"><%=((java.util.ArrayList) session.getAttribute("prevQta"))
							.get(2).toString()%></td>
		<td align="center"><bean:write name="cInevasi"
			property="inevasoTotale" formatKey="doubleFormat1" /></td>
		<%
					if (null != enableNR36 && enableNR36.equalsIgnoreCase("Y")) {
					%>
		<td align="center"><%=((java.util.ArrayList) session
								.getAttribute("prevLines")).get(3).toString()%></td>
		<%
					}
					%>
		<td align="center"><%=((java.util.ArrayList) session.getAttribute("prevQta"))
							.get(3).toString()%></td>

		<%
				if (null != enableNR36 && enableNR36.equalsIgnoreCase("Y")) {
				%>
		<td align="center"><bean:write name="cInevasi" property="futureQuantity"
			formatKey="doubleFormat1" /></td>
		<td align="center"><%=((java.util.ArrayList) session.getAttribute("prevLines"))
							.get(4).toString()%></td>

		<%} %>
		<%if (enableNR_443 != null && "Y".equalsIgnoreCase(enableNR_443)){%>
			<td align="center" onclick="mypopupReceiving('<bean:write name="cInevasi" property="entrataILivello" formatKey="doubleFormat1" />')" style="cursor: hand; color: #0000aa;text-decoration: underline">
				<div style="display: none"><a href="#"></a></div>
			<bean:write name="cInevasi" property="entrataILivello" formatKey="doubleFormat1" /></td>
			<td align="center" onclick="mypopupTransit()" style="cursor: hand; color: #0000aa;text-decoration: underline">
				<div style="display: none"><a href="#"></a></div>
			<bean:write name="cInevasi" property="transitoIILivelli" formatKey="doubleFormat1" /></td>
		<%}else{ %>
		<td align="center"><bean:write name="cInevasi"
			property="entrataILivello" formatKey="doubleFormat1" /></td>
		<td align="center"><bean:write name="cInevasi"
			property="transitoIILivelli" formatKey="doubleFormat1" /></td>
		<%} %>
			<%
				if (null != enableNR36 && enableNR36.equalsIgnoreCase("Y")) {
				%>
				<%if("Y".equalsIgnoreCase(enableNR_256)){ %>
					<td  align="center" onclick="myWhpopup()"
			style="cursor: hand; color: #0000aa;text-decoration: underline">
			<div style="display: none"><a href="#"></a></div>
			<%=((String) session.getAttribute("regionAvailability"))%>
			</td>
			<%}else{ %>
		<td align="center"><%=((String) session.getAttribute("regionAvailability"))%></td>
		<%} %>
							<% } %>
				<td align="center"><%=((java.util.ArrayList) session.getAttribute("vorPrevLines")).get(0).toString()%></td>
				<td align="center"><%=((java.util.ArrayList) session.getAttribute("vorPrevLines")).get(1).toString()%></td>
				<td align="center"><%=((java.util.ArrayList) session.getAttribute("vorPrevLines")).get(2).toString()%></td>
				 
	</tr>
</table>
