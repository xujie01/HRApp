# 基于Spring MVC + MyBatis3.4的人事管理系统

## 项目介绍

基于Spring MVC + MyBatis + JQuery 技术开发的人事管理系统。

### 系统功能：

系统包括用户管理、部门管理、职位管理、员工管理、公告管理、下载中心等常用人事系统功能。

### 技术选型

**后端技术**:

* Spring MVC
* MyBatis
* JSP

**前端技术**:

* jQuery
* my97datepicker——日期控件
* TinyMCE——文档上传下载

### 模块介绍

* 公共类设计

Web.xml中配置Struts及初始化Spring容器，制定WEB-INF路径下applicationContex.xml文件作为Spring配置文件，在Spring中定义数据源Bean，使用C3P0数据源，将MyBatis的SqlSessionFactory纳入容器中。

* magicgis.hrm.domain

持久化实体类。

* magicgis.hrm.dao 

实现DAO持久层。

* magicgis.hrm.services

Service层。

* magicgis.hrm.controller

web层。

* magicgis.hrm.util 

common：常量类，tag：分页实体、分页JSP标签类（在WEB-INF/page.tld中使用）。

* magicgis.hrm.interceptor

判断用户权限的Spring MVC的拦截器。

* JSP模块

WEB-INF/jsp。

### 数据模型

![数据模型](/documents/data-model.png)

## 环境搭建

### 开发工具

* MySQL: 数据库

* Tomcat: 应用服务器

* SVN: 版本管理

* MyEclipse: 开发IDE

* PowerDesigner: 建模工具

### 开发环境

* Jdk8

## 演示地址

演示地址：http://47.92.7.213:8080/HRApp/index.jsp

### 预览图

![预览图](/documents/preview1.png)
![预览图](/documents/preview2.png)
