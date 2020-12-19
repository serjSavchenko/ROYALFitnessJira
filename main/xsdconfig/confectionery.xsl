<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
							  xmlns:tns="http://www.example.org/confectionery_main" >
	<xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr>
						<th>Id Order</th>
						<th>Order Status</th>
						<th>Payment Type</th>
						<th>Order Date</th>
						<th>Delivery Client</th>
						<th>Sending Client</th>
						<th>Delivery Department</th>
						<th>Sending Department</th>
						<th>Product</th>
					</tr>
					<xsl:for-each select="tns:Cakes/Order">
						
						<tr>
							<td>
								<xsl:value-of select="Id" />
							</td>
							<td>
								<xsl:value-of select="OrderStatus/StatusName" />
							</td>
							<td>
								<xsl:value-of select="PaymentType/PaymentName" />
							</td>
							<td>
								<xsl:value-of select="OrderDate" />
							</td>
							<td>
								<xsl:for-each select="DeliveryClient">
									<xsl:for-each select="./*">
										<xsl:value-of select="." />
										<br />
									</xsl:for-each>
								</xsl:for-each>
							</td>
							<td>
								<xsl:for-each select="SendingClient">
									<xsl:for-each select="./*">
										<xsl:value-of select="." />
										<br />
									</xsl:for-each>
								</xsl:for-each>
							</td>
							<td>
								<xsl:for-each select="DeliveryDepartment">
									<xsl:for-each select="./*">
										<xsl:value-of select="." />
										<br />
									</xsl:for-each>
								</xsl:for-each>
							</td>
							<td>
								<xsl:for-each select="SendingDepartment">
									<xsl:for-each select="./*">
										<xsl:value-of select="." />
										<br />
									</xsl:for-each>
								</xsl:for-each>
							</td>
							<td>
								<xsl:for-each select="Product">
									<xsl:for-each select="./*">
										<xsl:value-of select="." />
										<br />
									</xsl:for-each>
								</xsl:for-each>
							</td>
						</tr>
						
					</xsl:for-each>
				</table>
			</body>
		</html>

	</xsl:template>
</xsl:stylesheet>