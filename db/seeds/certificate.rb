# coding: utf-8
# 导入 证书 数据


certificates = {
  "外语证书" => ["托福", "托业", "GRE", "GMAT", "雅思", "全国公共英语等级考试 PETS", "通用英语初级", "通用英语中级", "大学英语四级", "大学英语六级", "中级口译证书", "高级口译证书", "俄语四级证书", "俄语六级证书", "法语四级证书", "法语六级证书", "日语一级证书", "日语二级证书", "日语三级证书", "日语四级证书", "德语四级证书", "德语六级证书", "英语专业四级", "英语专业八级"],
  "计算机证书" => ["全国计算机应用技术证书", "全国计算机软件技术资格与水平考试", "初级程序员", "程序员", "高级程序员", "系统分析员", "全国计算机等级一级", "全国计算机等级二级", "全国计算机等级三级A", "全国计算机等级三级B", "全国计算机等级四级", "计算机初级", "计算机中级", "网络初级证书", "MCDST微软认证操作系统技术支持工程师", "MCAD 微软认证应用程序开发专家", "MCP 微软专家认证", "MCSA 微软认证系统管理员", "MCSA: Messaging 微软认证信息系统管理员", "MCSE 微软认证系统工程师", "MCSD 微软认证解决方案开发专家", "MCSE: Messaging 微软认证信息系统工程师", "MCSE: Security 微软认证安全系统工程师", "MCDBA 微软认证数据库系统管理员", "MCT 微软认证培训师", "CCCP 思科认证网络规划和网络支持工程师", "CCIE 思科认证互联网专家", "CCNA 思科认证网络工程师", "CCNP 思科认证网络专业人员", "CCIP 思科认证的互联网专业人员", "CCDA 思科认证网络设计工程师", "CCDP 思科认证网络设计专业人员", "思科认证专家-- 有线", "思科认证专家--互联网解决方案", "思科认证专家--安全性思科认证专家--SNA/IP", "Novell授权网络管理师", "Novell 授权网络工程师", "Novell授权高级网络工程师", "Novell授权Internet专家", "3com 认证网络大师", "SUN 认证", "Java程序员", "Intel 认证方案咨询专家", "Intel 认证方案集成专家", "Adobe认证专家", "Domino R5 Application Development CLP", "Domino R5 System Administration CLP", "Sybase 认证考试", "IBM Certified AIX User", "IBM eServer pSeries AIX System Administration", "IBM eServer pSeries AIX System Support", "IBM Certified Advanced Technical Expert - RS/6000 AIXIBM AS/400 Associate System Operator", "IBM AS/400 Professional System Operator", "IBM Certified Specialist - DB2 V6.1/V7.1 User", "IBM Certified Solutions Expert - Business Intelligence", "IBM Expert - DB2 UDB V7.1 Database AdministrationIBM Expert - DB2 UDB V7.1 Family Application Development", "IBM Expert - DB2 UDB V6.1 Database Administration", "IBM Expert - DB2 UDB V6.1 Application Development", "IBM Certified for e-business - Solution Advisor", "IBM Certified for e-business - Solution Designer", "IBM Certified for e-business - Solution Technologist", "IBM Certified Specialist - MQSeries", "IBM Certified Solutions Expert - MQSeries", "IBM Certified Developer - MQSeries", "IBM Certified Specialist - MQSeries Adapter Offering", "IBM Certified Specialist - WebSphere MQ Integrator", "IBM Certified Solutions Expert - WebSphere MQ Integrator", "IBM Certified Solutions Expert - MQSeries Workflow", "IBM Specialist - IBM VisualAge", "IBM Solution Developer - IBM VisualAge", "IBM - WebSphere Server", "IBM Enterprise Developer - WebSphere Server", "IBM Specialist - WebSphere Server  VisualAge for Java based", "IBM Enterprise Developer - WebSphere Server  VisualAge for Java based", "IBM Systems Expert - Administration for WebSphere Server", "IBM - WebSphere Commerce  Business Edition V5.4  Implementation", "IBM  -  WebSphere Commerce  Business Edition V5.4  Customization", "IBM WebSphere Commerce Suite V5.1 Implementation", "IBM - WebSphere Studio  Professional or Advanced Edition", "IBM  WebSphere Studio Family of Products  V4.0", "IBM WebSphere Studio Application Developer for Windows", "IBM WebSphere Studio Application Developer for Window", "IBM - XML and Related Technologies", "Domino R5 Application Development CLS", "Domino R5 Application Development PCLP", "Domino R5 System Administration CLS", "Domino R5 System Administration PCLP", "LPI Certification Level 1", "LPI Certification Level 2"],
  "会计证书" => ["注册会计师", "高级会计师", "中级会计师", "助理会计师", "会计上岗证", "会计电算化证书", "国际财务会计证书"],
  "职称证书" => ["初级工程师", "中级工程师", "高级工程师", "初级经济师", "中级经济师", "高级经济师", "助理工程师", "助理经济师"],
  "其他证书" => ["全国律师资格证书", "企业法律顾问执业资格证书", "注册建筑师", "注册结构师", "注册土木工程师", "监理工程师", "执业资格证书", "造价工程师", "执业资格证书", "注册咨询工程师(投资)执业资格证书", "房地产估价师执业资格证书", "房地产经纪人执业资格证书", "电子商务师职业资格证书", "注册税务师", "注册资产评估师", "统计上岗证执业药师资格证书", "公共关系资格证书", "ISO体系内审员/注册审核员", "报关员资格证书", "报检员资格证书", "外销员资格证书", "保险代理人资格证书", "导游人员资格证书", "办公自动化证书", "珠算技术等级证书", "普通话等级证书", "驾驶执照"],
  "自定义" => []
}


Certificate.delete_all

puts "===============开始导入 证书 数据================"

certificates.each do |key, value|
  certificate = Certificate.create(name: key)
  value.each do |value|
    certificate.children.create(name: value)
  end
end


puts "===============成功导入 证书 数据================"
