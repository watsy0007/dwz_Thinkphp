-- phpMyAdmin SQL Dump
-- version 4.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2014-10-30 16:56:07
-- 服务器版本： 5.5.37-log
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dwz_framework`
--

-- --------------------------------------------------------

--
-- 表的结构 `think_article`
--

CREATE TABLE IF NOT EXISTS `think_article` (
`id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `content` text,
  `editor_id` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `createtime` char(30) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `think_article`
--

INSERT INTO `think_article` (`id`, `class_id`, `title`, `pic`, `content`, `editor_id`, `sort`, `status`, `createtime`) VALUES
(7, 3, '咨询、规划和实施', NULL, '<table border="0" cellpadding="0" cellspacing="0" width="524" style="font-family: STHeiti;"><tbody><tr><td align="right" class="font-12-h2" colspan="2" height="84" valign="top" style="font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 20px;">&nbsp;</td></tr><tr><td class="font-12-h2" width="315" style="font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 20px;"><span class="font-12-h3" style="font-size: 13px; color: rgb(140, 140, 140); line-height: 18px;">SOREHA 咨询服务包括:</span><br /><table border="0" cellpadding="0" cellspacing="0" class="font-12-h2  " width="100%" style="font-size: 12px; color: rgb(0, 0, 0); line-height: 20px;"><tbody><tr><td align="left" valign="top" width="4%"></td><td width="96%"><span class="STYLE1">经济分析咨询-专业化的商业计划</span></td></tr><tr><td align="left" valign="top">&nbsp;</td><td><span class="STYLE1">康复中心空间设计-空间需求</span></td></tr><tr><td align="left" valign="top">&nbsp;</td><td><p class="STYLE1">康复中心的组织与管理</p></td></tr><tr><td align="left" valign="top">&nbsp;</td><td><span class="STYLE1">人力资源管理</span></td></tr><tr><td align="left" valign="top">&nbsp;</td><td><span class="STYLE1">临床康复技术</span></td></tr><tr><td align="left" colspan="2" height="39" valign="top"><br /><span class="font-12-h3 STYLE1" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; color: rgb(140, 140, 140); line-height: 18px;">康复概念:</span></td></tr><tr><td align="left" valign="top">&nbsp;</td><td><p class="STYLE1">根据国际卫生组织ICF制定的循证医学临床康复治疗标准</p></td></tr><tr><td align="left" valign="top">&nbsp;</td><td>&nbsp;</td></tr></tbody></table></td><td class="font-12-h2" valign="top" width="209" style="font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 20px;">&nbsp;</td></tr></tbody></table>', '5195f455477f3', 100, 0, '1368782032'),
(14, NULL, 'sddfas', NULL, 'dfassdfasdf', NULL, 100, 1, ''),
(15, 2, 'asdf', NULL, 'asdfasdfassdf', '51fb742dbf66a', 100, 0, '1375433795'),
(16, NULL, 'asdf', NULL, 'asdfadsf', NULL, 100, 0, ''),
(17, NULL, '爱上地方撒地方', NULL, '撒地方撒地方鞍山市地方', NULL, 100, 0, ''),
(18, NULL, '发方法', NULL, '反反复复', NULL, 100, 0, ''),
(19, NULL, '爱上地方爱上地方爱上地方爱上地方', NULL, '是打算地方爱上地方爱上地方', NULL, 100, 0, ''),
(20, NULL, '阿斯顿发生地方', NULL, '爱上地方', NULL, 100, 0, ''),
(21, NULL, '撒的发生地方', NULL, '阿斯顿发生的发生地方鞍山市地方爱上地方', NULL, 100, 1, ''),
(22, NULL, '爱上地方', NULL, '阿斯顿发生地方', NULL, 100, 0, ''),
(23, NULL, '爱上地方', NULL, '爱上地方爱上地方爱上地方爱上地方爱上地方阿斯顿发是地方爱上地方', NULL, 100, 0, ''),
(24, NULL, '阿斯顿发放的', NULL, '阿斯顿发的方式的士大夫爱上地方啊第三方啊的发生的发生是的发的发生的方法啊啊鞍山市地方', NULL, 100, 0, ''),
(25, NULL, 'vvvvv', NULL, 'vvvv', NULL, 100, 0, ''),
(26, NULL, '笑嘻嘻', NULL, '谢谢详细信息', NULL, 100, 0, ''),
(27, NULL, '是的分公司的风格', NULL, '是的风格是的风格是否大概是的风格是的分公司的分公司的是的的分公司的的分公司的分公司的的分公司的是的风格是的风格', NULL, 100, 0, ''),
(8, 3, '培训和教育', NULL, '<table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-family: STHeiti;"><tbody><tr><td width="81%" align="right"><div class="conbody" style="margin-top: 25px; width: 550px; overflow: hidden; margin-left: 20px;"><table border="0" cellpadding="0" cellspacing="0" width="524"><tbody><tr><td align="left" class="font-12-h2" height="162" valign="top" width="315" style="font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 20px;"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr><td class="font-12-h2" style="font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 20px;">与国际专家、临床医生以及大学合作，我们将提供综合全面的培训教育课程，教授应用最先进循证医学治疗方案<img src="http://ordtest-attach.stor.sinaapp.com/day_130520/201305201350337794.jpg" alt="" /></td></tr></tbody></table></td><td class="font-12-h2" valign="top" width="209" style="font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 20px;">&nbsp;</td></tr><tr><td class="font-12-h2" colspan="2" valign="top" style="font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 20px;"><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr class="tr-shixian"><td align="left" class="td-shixian STYLE3" valign="top" width="32%" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(196, 153, 73); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: rgb(196, 153, 73); font-weight: bold;">A级培训课程</td><td align="left" class="td-shixian STYLE3" valign="top" width="34%" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(196, 153, 73); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: rgb(196, 153, 73); font-weight: bold;">B级培训课程</td><td align="left" class="td-shixian STYLE3" valign="top" width="34%" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(196, 153, 73); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: rgb(196, 153, 73); font-weight: bold;">C级培训课程</td></tr><tr><td align="left" class="td-shixian2 STYLE3" height="80" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(196, 153, 73); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;"><p>主动康复疗法简介</p></td><td align="left" class="td-shixian2" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(196, 153, 73); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;"><p class="STYLE3">主动康复疗法-基础课程<br />• 医学训练疗法<br />• 主动康复疗法中的理疗<br />• 康复医师培训<br />&nbsp;</p></td><td align="left" class="td-shixian2 STYLE3" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(196, 153, 73); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;"><p>主动功能康复疗法（认证课程）</p></td></tr><tr><td align="left" class="td-shixian2 STYLE3" height="32" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(196, 153, 73); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;">康复中心的组织和管理</td><td align="left" class="td-shixian2 STYLE3" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(196, 153, 73); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;">康复技术和设备的临床应用</td><td align="left" class="td-shixian2 STYLE3" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(196, 153, 73); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;">质量管理（认证课程）</td></tr><tr><td align="left" class="td-shixian2 STYLE3" height="30" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(196, 153, 73); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;">产品操作培训</td><td align="left" class="td-shixian2 STYLE3" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(196, 153, 73); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;">海外培训课程</td><td align="left" class="td-shixian2 STYLE3" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(196, 153, 73); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;">&nbsp;</td></tr></tbody></table></td></tr></tbody></table></div></td><td width="11%">&nbsp;</td></tr></tbody></table>', '5195f715783a5', 100, 1, '1368782640'),
(9, 3, '康复模块', NULL, '<table border="0" cellpadding="0" cellspacing="0" width="528" style="font-family: STHeiti;"><tbody><tr><td align="left" class="font-12-h2" rowspan="2" valign="top" width="227" style="font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 20px;"><table border="0" cellpadding="0" cellspacing="0" width="96%"><tbody><tr><td class="font-12-h2" style="font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 20px;">SOREHA提供针对不同适应症和不同病人群体需求的康复治疗模块<br /><br /><p>客户将得到：</p><table border="0" cellpadding="0" cellspacing="0" class="font-12-h2 " width="100%" style="font-size: 12px; color: rgb(0, 0, 0); line-height: 20px;"><tbody><tr><td align="left" valign="top" width="6%"></td><td width="93%"><p class="STYLE3">商业计划和市场宣传方案</p></td></tr><tr><td align="left" valign="top">&nbsp;</td><td><p class="STYLE3">员工教育培训计划</p></td></tr><tr><td align="left" valign="top">&nbsp;</td><td><p class="STYLE3">质量管理课程（认证课程）</p></td></tr></tbody></table></td></tr></tbody></table></td><td align="middle" class="font-12-h3" height="31" valign="top" width="301" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; color: rgb(140, 140, 140); line-height: 18px;">SOREHA 康复治疗模块</td></tr><tr><td class="font-12-h2" valign="top" style="font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 20px;">&nbsp;</td></tr></tbody></table>', '5195f73ae8d99', 100, 1, '1368782671'),
(10, 3, '售后服务', NULL, '<table width="1000" height="100%" border="0" cellpadding="0" cellspacing="0" style="font-family: STHeiti;"><tbody><tr><td width="660" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tbody><tr><td width="81%" align="right"><div class="conbody" style="margin-top: 25px; width: 550px; overflow: hidden; margin-left: 20px;"><table border="0" cellpadding="0" cellspacing="0" width="525"><tbody><tr><td class="font-12-h2" valign="top" width="320" style="font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 20px;"><table border="0" cellpadding="0" cellspacing="0" width="99%"><tbody><tr><td class="font-12-h2" valign="top" style="font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 20px;"><p>SOREHA 承诺良好的售后服务<br /><br />我们的目标是通过良好的产品质量和全方位的售后服务与客户建立长期合作关系。我们售后服务包括设备的软硬件的技术维护和临床技术的培训和临床技术支持<br /><br />专业人员会通过热线电话解答您所有的问题。技术支持小组会在最短的时间里解决您的技术问题<br /><br />我们还将提供服务和质量保证合同</p></td></tr></tbody></table></td><td align="middle" class="font-12-h3" valign="top" width="205" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; color: rgb(140, 140, 140); line-height: 18px;">&nbsp;</td></tr></tbody></table></div></td><td width="11%">&nbsp;</td></tr></tbody></table></td></tr><tr><td height="7%" colspan="2" valign="bottom">&nbsp;</td></tr></tbody></table>', '5195f7591bb7d', 100, 1, '1368782723'),
(11, 2, '为用户提供完整解决方案', NULL, '<p><span style="font-family:Microsoft YaHei;font-size:16px;">除了提供世界一流的康复设备以外，我公司也为我们的客户提供康复机构的规划、设计咨询。总体而言，我们会从以下多个方面搜集用户信息，从而为用户提供更进一步的服务：</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;</span></p><p><strong><span style="font-family:Microsoft YaHei;font-size:16px;">康复机构的性质：</span></strong></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">□康复专科医院 □综合医院康复科 □门诊康复中心</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;</span></p><p><strong><span style="font-family:Microsoft YaHei;font-size:16px;">康复机构的适应症：</span></strong></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">□骨科 </span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">□创伤 □脊柱外科 □关节外科 □关节镜 □颈肩腰腿痛的保守治疗</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">□神经科 </span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">□儿童康复（小儿脑瘫）</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">□运动员康复</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">□老年康复</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">□残疾人康复</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">□工伤康复（工作模拟、工作强化）</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;</span></p><p><strong><span style="font-family:Microsoft YaHei;font-size:16px;">如果是康复专科医院或者综合医院康复科</span></strong></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">康复病床数&nbsp; □50以下 □50-100 □100-150 □150-200 □200以上</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">骨科病床数&nbsp; □50以下 □50-100 □100-150 □150-200 □200以上</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">神经科病床数□50以下 □50-100 □100-150 □150-200 □200以上</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;</span></p><p><strong><span style="font-family:Microsoft YaHei;font-size:16px;">预计每天多少病人在康复中心介绍治疗</span></strong></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">□50人以下 □50-100人 □100-150人 □150-200人 □200人以上</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;</span></p><p><strong><span style="font-family:Microsoft YaHei;font-size:16px;">康复机构的运营面积及建筑施工图</span></strong></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;</span></p><p><strong><span style="font-family:Microsoft YaHei;font-size:16px;">大致的预算 （人民币 万元）</span></strong></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">□100以下 □100-300 □300-500 □500-1000 □1000以上</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">我们将根据用户提供的以上信息，依据中国卫生部对相关康复医疗机构的建设要求和欧洲康复机构的质量管理标准，为用户提供一个以主动康复内容为主的康复机构建设解决方案：</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">包括：</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 康复中心功能区的规划</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 康复设备的配置表</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 设备摆放示意图</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 康复中心人员配置</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 - 3年临床教育培训和临床技术支持计划</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">（下面是一个综合医院康复中心的功能区平面图和设备摆放示意图。然后我对这个示意图所代表的康复中心做一个简单描述。）</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;</span></p>', '5195f7dd6f5cd', 100, 1, '1368782857'),
(12, 1, '核心竞争力', NULL, '<p align="center">&nbsp;</p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 欧培德公司之所以能够在中国康复医疗市场独树一帜，持续发展是因为具有如下竞争优势：</span></p><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;</span></p><ul><li><strong><span style="font-family:Microsoft YaHei;font-size:16px;">深刻理解现代医学康复发展潮流，完整掌握主动康复理论思想和临床应用方法</span></strong></li></ul><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我公司经过多年对康复医学发展的跟踪研究和市场调研，确定了推广主动康复的明确指导方向。公司的核心成员大多接受过西方主动康复教育，都是主动康复坚定的支持者。他们根据多年在欧洲从事主动康复的临床经验，建立了一整套主动临床应用的教学方法</span></p><ul><li><strong><span style="font-family:Microsoft YaHei;font-size:16px;">与欧洲开展主动康复的著名医疗机构建立广泛深入的合作，为主动康复在中国的推广提供了坚实的物质基础</span></strong></li></ul><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我公司先后与德国科隆大学附属医院康复中心、德国勒沃库森Rehatrain 康复中心、德国orthotrain 康复中心和瑞士莱茵费尔登康复医院签订了临床培训合作协议。近年来，公司安排多批国内康复机构的医生和治疗师到这些合作机构中进修、学习。</span></p><ul><li><span style="font-size:16px;"><span style="font-family:Microsoft YaHei;">&nbsp;<strong>德国临床康复专家团队系统推广主动康复</strong></span></span></li></ul><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我公司历来把临床康复的培训教育视为公司业务发展的核心内容。为此公司在创办初期就开始着手临床康复专家团队的建设。经过多年努力，目前以公司CEO Oliver Kieffer博士为首的德国康复专家团队已经建立，他们为公司几十个客户单位的数百名康复医生和治疗师提供了系统的临床康复教育培训。因为有了这只专家团队，公司与客户1-3年的临床教育培训项目才得以顺利实施。</span></p><ul><li><strong><span style="font-family:Microsoft YaHei;font-size:16px;">与世界国际最知名品牌的主动康复技术和设备厂家合作</span></strong></li></ul><p><span style="font-family:Microsoft YaHei;font-size:16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 由于与公司推广主动康复的发展方向和重视临床康复教育培训的指导思想高度一致，许多国际一流品牌的康复技术设备提供商与我公司结成市场战略同盟。MTT（医学训练疗法）的先驱德国Proxomed公司，工作模拟和工作强化测试评估设备的世界领导企业美国BTE公司，世界康复机器人联盟领袖瑞士Hocoma公司等多家国际知名企业先后与公司合作共同开拓中国康复市场。</span></p>', '5195f829c4a26', 100, 1, '1368782930'),
(13, 1, '神经康复训练', NULL, '<span style="color: rgb(140, 140, 140); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px;">步态训练和神经肌肉再训练</span>', '5195f85fa596e', 100, 1, '1368782956'),
(29, NULL, '公仔一个', NULL, 'gasdgasdg', NULL, 100, 0, ''),
(30, NULL, 'ddddd', NULL, 'dddddddd', NULL, 100, 0, ''),
(31, NULL, '再测试一下吧', NULL, '再测试一下吧', NULL, 100, 0, ''),
(32, NULL, 'ddddd2324', NULL, 'dddddd', NULL, 100, 1, ''),
(34, NULL, '你想说啥？', NULL, '我想说我想你了。', NULL, 100, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `think_form`
--

CREATE TABLE IF NOT EXISTS `think_form` (
`id` smallint(4) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `think_log`
--

CREATE TABLE IF NOT EXISTS `think_log` (
`id` bigint(20) NOT NULL,
  `vc_module` char(50) DEFAULT NULL,
  `vc_operation` char(200) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `creator_name` char(50) NOT NULL,
  `vc_ip` char(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createtime` char(30) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=354 ;

--
-- 转存表中的数据 `think_log`
--

INSERT INTO `think_log` (`id`, `vc_module`, `vc_operation`, `creator_id`, `creator_name`, `vc_ip`, `status`, `createtime`) VALUES
(193, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1357458137'),
(194, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1357465574'),
(195, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1357465641'),
(196, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1357466884'),
(197, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1357467126'),
(198, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1357651253'),
(199, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1357782822'),
(200, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1357797558'),
(201, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1357800986'),
(202, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359093817'),
(203, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359094193'),
(204, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359094345'),
(205, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359094584'),
(206, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359095428'),
(207, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359095848'),
(208, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359096462'),
(209, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359096633'),
(210, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359098124'),
(211, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359100841'),
(212, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359101561'),
(213, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359103097'),
(214, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359105228'),
(215, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359106258'),
(216, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359121924'),
(217, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359125362'),
(218, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359125571'),
(219, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359125627'),
(220, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359185573'),
(221, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359267144'),
(222, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359267684'),
(223, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359272715'),
(224, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359272873'),
(225, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359273452'),
(226, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359273592'),
(227, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359276852'),
(228, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359280386'),
(229, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359290308'),
(230, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359337085'),
(231, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359340361'),
(232, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359422581'),
(233, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359526603'),
(234, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359681824'),
(235, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359971788'),
(236, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1359986370'),
(237, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1360027242'),
(238, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1360030220'),
(239, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1360034854'),
(240, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1360044287'),
(241, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1360049122'),
(242, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1360049790'),
(243, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1360072973'),
(244, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1360118308'),
(245, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1360123971'),
(246, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1360901668'),
(247, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1361282013'),
(248, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1361419199'),
(249, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1361425888'),
(250, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1361523138'),
(251, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1361523296'),
(252, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1361844689'),
(253, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1361952062'),
(254, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1362102219'),
(255, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1362473189'),
(256, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1362535063'),
(257, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1362536424'),
(258, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1362707577'),
(259, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1362713668'),
(260, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1362972108'),
(261, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1363226347'),
(262, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1363570392'),
(263, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1363855305'),
(264, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1363857327'),
(265, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1363857406'),
(266, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1363873286'),
(267, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1363919952'),
(268, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1363922817'),
(269, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1363922932'),
(270, '系统管理', '用户登录：登录成功！', 2, 'demo', '127.0.0.1', 1, '1363923072'),
(271, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1363923348'),
(272, '系统管理', '用户登录：登录成功！', 2, 'demo', '127.0.0.1', 1, '1363923450'),
(273, '系统管理', '用户登录：登录成功！', 2, 'demo', '127.0.0.1', 1, '1363923613'),
(274, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1363923669'),
(275, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1364372564'),
(276, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1367918555'),
(277, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1367919475'),
(278, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1367930908'),
(279, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1367933590'),
(280, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1367934584'),
(281, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1367934697'),
(282, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1367978752'),
(283, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1367979176'),
(284, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1368008929'),
(285, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1368085596'),
(286, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1368149159'),
(287, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1368152124'),
(288, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1368159516'),
(289, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1368163146'),
(290, '系统管理', '用户登录：登录成功！', 1, 'admin', '218.249.123.122', 1, '1368677212'),
(291, '系统管理', '用户登录：登录成功！', 1, 'admin', '219.143.150.255', 1, '1368682645'),
(292, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.237.235, 123.116.237.235', 1, '1368696109'),
(293, '系统管理', '用户登录：登录成功！', 1, 'admin', '1.202.5.53', 1, '1368778169'),
(294, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.237.235, 123.116.237.235', 1, '1368782595'),
(295, '系统管理', '用户登录：登录成功！', 1, 'admin', '219.143.151.68', 1, '1369028980'),
(296, '系统管理', '用户登录：登录成功！', 1, 'admin', '124.126.222.134', 1, '1369293589'),
(297, '系统管理', '用户登录：登录成功！', 1, 'admin', '124.126.222.134', 1, '1369294148'),
(298, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.244.81, 123.116.244.81', 1, '1369647246'),
(299, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.244.81, 123.116.244.81', 1, '1369647473'),
(300, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.244.81, 123.116.244.81', 1, '1369726229'),
(301, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.244.81, 123.116.244.81', 1, '1369734806'),
(302, '系统管理', '用户登录：登录成功！', 1, 'admin', '1.202.7.211', 1, '1369735092'),
(303, '系统管理', '用户登录：登录成功！', 1, 'admin', '1.202.7.211', 1, '1369736194'),
(304, '系统管理', '用户登录：登录成功！', 1, 'admin', '1.202.7.211', 1, '1369736543'),
(305, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.122.94.188, 123.122.94.188', 1, '1369748666'),
(306, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.244.81, 123.116.244.81', 1, '1369797917'),
(307, '系统管理', '用户登录：登录成功！', 1, 'admin', '1.202.7.211', 1, '1369815797'),
(308, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.234.192, 123.116.234.192', 1, '1369816898'),
(309, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.234.192, 123.116.234.192', 1, '1369822196'),
(310, '系统管理', '用户登录：登录成功！', 1, 'admin', '1.202.7.211', 1, '1369822239'),
(311, '系统管理', '用户登录：登录成功！', 1, 'admin', '1.202.7.211', 1, '1369823923'),
(312, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.234.192, 123.116.234.192', 1, '1369824096'),
(313, '系统管理', '用户登录：登录成功！', 1, 'admin', '219.142.232.230', 1, '1369881820'),
(314, '系统管理', '用户登录：登录成功！', 1, 'admin', '219.142.232.230', 1, '1369882594'),
(315, '系统管理', '用户登录：登录成功！', 1, 'admin', '219.142.232.230', 1, '1369882839'),
(316, '系统管理', '用户登录：登录成功！', 1, 'admin', '219.142.232.230', 1, '1369891797'),
(317, '系统管理', '用户登录：登录成功！', 1, 'admin', '219.142.232.230', 1, '1369892498'),
(318, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.234.192, 123.116.234.192', 1, '1369897214'),
(319, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.234.192, 123.116.234.192', 1, '1369905994'),
(320, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.229.89, 123.116.229.89', 1, '1369916770'),
(321, '系统管理', '用户登录：登录成功！', 1, 'admin', '114.244.5.58, 114.244.5.58', 1, '1369926815'),
(322, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.234.192, 123.116.234.192', 1, '1369963985'),
(323, '系统管理', '用户登录：登录成功！', 1, 'admin', '219.143.150.115', 1, '1369966141'),
(324, '系统管理', '用户登录：登录成功！', 1, 'admin', '123.116.234.192, 123.116.234.192', 1, '1369979193'),
(325, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374580271'),
(326, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374634907'),
(327, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374807183'),
(328, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374807183'),
(329, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374808641'),
(330, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374808641'),
(331, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374810400'),
(332, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374810611'),
(333, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374811182'),
(334, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374811182'),
(335, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374811469'),
(336, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374812108'),
(337, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1374833449'),
(338, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1375068511'),
(339, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1375172123'),
(340, '系统管理', '用户登录：登录成功！', 2, 'demo', '127.0.0.1', 1, '1375172148'),
(341, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1375172161'),
(342, '系统管理', '用户登录：登录成功！', 2, 'demo', '127.0.0.1', 1, '1375172199'),
(343, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1375172208'),
(344, '系统管理', '用户登录：登录成功！', 2, 'demo', '127.0.0.1', 1, '1375172281'),
(345, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1375172297'),
(346, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1375327649'),
(347, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1375350540'),
(348, '系统管理', '用户登录：登录成功！', 1, 'admin', '127.0.0.1', 1, '1375433752'),
(349, '系统管理', '用户登录：登录成功！', 1, 'admin', '10.0.2.2', 1, '1411351921'),
(350, '系统管理', '用户登录：登录成功！', 1, 'admin', '10.0.2.2', 1, '1411521234'),
(351, '系统管理', '用户登录：登录成功！', 1, 'admin', '10.0.2.2', 1, '1414476021'),
(352, '系统管理', '用户登录：登录成功！', 1, 'admin', '10.0.2.2', 1, '1414488745'),
(353, '系统管理', '用户登录：登录成功！', 1, 'admin', '10.0.2.2', 1, '1414659244');

-- --------------------------------------------------------

--
-- 表的结构 `think_p_node`
--

CREATE TABLE IF NOT EXISTS `think_p_node` (
`id` int(11) NOT NULL COMMENT '自增id',
  `pid` int(11) NOT NULL COMMENT '父类id',
  `level` int(11) NOT NULL COMMENT '等级',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `controller` varchar(32) NOT NULL COMMENT '控制器名称',
  `orderIndex` int(11) NOT NULL COMMENT '排序',
  `active` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否生效'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='菜单节点' AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `think_p_node`
--

INSERT INTO `think_p_node` (`id`, `pid`, `level`, `name`, `controller`, `orderIndex`, `active`) VALUES
(2, 0, 1, '系统设置', 'SystemSettings', 1, 1),
(3, 2, 1, '系统节点', 'SystemNode', 1, 1),
(4, 0, 1, '业务管理', 'LogicManage', 2, 1),
(5, 2, 2, '角色管理', 'Role', 2, 1),
(6, 4, 2, '合同管理', 'ContractCommon', 3, 1),
(7, 6, 3, '全部合同', 'ContractAll', 1, 1),
(8, 6, 2, '收入合同', 'ReceiveContract', 2, 1),
(9, 8, 3, '经营性合同', 'JINGYING', 1, 1),
(10, 9, 4, '评审收入', 'PINGSENSHOURU', 1, 1),
(11, 10, 5, '评审批次', 'PICI', 1, 1),
(12, 8, 1, '收入子合同', 'subShouRu', 100, 1),
(13, 2, 1, '用户管理', 'User', 3, 1),
(14, 2, 1, '登陆日志', 'Log', 4, 1),
(15, 2, 1, '数据备份', 'Bak', 5, 1),
(16, 2, 1, ' 附件管理', 'File', 6, 1);

-- --------------------------------------------------------

--
-- 表的结构 `think_p_node_button`
--

CREATE TABLE IF NOT EXISTS `think_p_node_button` (
`id` int(11) NOT NULL COMMENT '自增ID',
  `node_id` int(11) NOT NULL COMMENT '节点id',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `content` varchar(256) NOT NULL COMMENT '内容',
  `file_path` varchar(128) DEFAULT NULL COMMENT '写入缓存文件地址',
  `code` text COMMENT '过滤代码',
  `content_path` varchar(128) DEFAULT NULL COMMENT '内容文件保存地址'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='节点功能表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `think_p_node_button`
--

INSERT INTO `think_p_node_button` (`id`, `node_id`, `name`, `content`, `file_path`, `code`, `content_path`) VALUES
(1, 0, '增加', '&lt;li&gt;&lt;a class=&quot;add&quot; href=&quot;ContractAll/add&quot; target=&quot;dialog&quot; mask=&quot;true&quot; width=&quot;700&quot; height=&quot;400&quot;&gt;&lt;span&gt;新增&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;', NULL, 'function($userId,$roleId,$departmentId,$params){}&lt;div id=&quot;xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd&quot;&gt;&lt;/div&gt;', NULL),
(2, 7, '编辑', '&lt;li&gt;&lt;a class=&quot;edit&quot; href=&quot;__URL__/edit/id/{sid_role}&quot; target=&quot;dialog&quot; mask=&quot;true&quot; warn=&quot;请选择角色&quot;&gt;&lt;span&gt;编辑&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;', NULL, '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `think_p_node_role`
--

CREATE TABLE IF NOT EXISTS `think_p_node_role` (
`id` int(11) NOT NULL COMMENT '自增',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `node_id` int(11) NOT NULL COMMENT '节点id'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=108 ;

--
-- 转存表中的数据 `think_p_node_role`
--

INSERT INTO `think_p_node_role` (`id`, `role_id`, `node_id`) VALUES
(94, 8, 4),
(95, 8, 6),
(96, 8, 7),
(97, 8, 8),
(98, 8, 9),
(99, 8, 10),
(100, 8, 11),
(101, 8, 12),
(102, 8, 2),
(103, 8, 3),
(104, 8, 5),
(105, 8, 13),
(106, 8, 14),
(107, 8, 16);

-- --------------------------------------------------------

--
-- 表的结构 `think_p_role_node_button`
--

CREATE TABLE IF NOT EXISTS `think_p_role_node_button` (
`id` int(11) NOT NULL COMMENT '自增',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `node_id` int(11) NOT NULL COMMENT '节点id',
  `button_id` int(11) NOT NULL COMMENT '按钮id'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `think_p_role_node_button`
--

INSERT INTO `think_p_role_node_button` (`id`, `role_id`, `node_id`, `button_id`) VALUES
(5, 8, 7, 2),
(6, 8, 7, 1);

-- --------------------------------------------------------

--
-- 表的结构 `think_role`
--

CREATE TABLE IF NOT EXISTS `think_role` (
`id` smallint(6) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `ename` varchar(5) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `think_role`
--

INSERT INTO `think_role` (`id`, `name`, `pid`, `status`, `remark`, `ename`, `create_time`, `update_time`) VALUES
(1, '领导组', 0, 1, '', '', 1208784792, 1254325558),
(2, '员工组', 0, 1, '', '', 1215496283, 1254325566),
(7, '演示组', 0, 1, '', NULL, 1254325787, 0),
(8, 'test123', 0, 1, 'test', NULL, 1400423752, 1400423869);

-- --------------------------------------------------------

--
-- 表的结构 `think_role_user`
--

CREATE TABLE IF NOT EXISTS `think_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_role_user`
--

INSERT INTO `think_role_user` (`role_id`, `user_id`) VALUES
(4, '27'),
(4, '26'),
(4, '30'),
(5, '31'),
(3, '22'),
(3, '1'),
(1, '4'),
(2, '3'),
(7, '2'),
(3, '35'),
(8, '1');

-- --------------------------------------------------------

--
-- 表的结构 `think_user`
--

CREATE TABLE IF NOT EXISTS `think_user` (
`id` smallint(5) unsigned NOT NULL,
  `account` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `bind_account` varchar(50) NOT NULL,
  `last_login_time` int(11) unsigned DEFAULT '0',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` mediumint(8) unsigned DEFAULT '0',
  `verify` varchar(32) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `type_id` tinyint(2) unsigned DEFAULT '0',
  `info` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- 转存表中的数据 `think_user`
--

INSERT INTO `think_user` (`id`, `account`, `nickname`, `password`, `bind_account`, `last_login_time`, `last_login_ip`, `login_count`, `verify`, `email`, `remark`, `create_time`, `update_time`, `status`, `type_id`, `info`) VALUES
(1, 'admin', '管理员', '21232f297a57a5a743894a0e4a801fc3', '', 1414659244, '10.0.2.2', 900, '8888', 'liu21st@gmail.com', '备注信息123341111呃呃呃呃', 1222907803, 1400338549, 1, 0, ''),
(2, 'demo', '演示', 'fe01ce2a7fbac8fafaed7c982a04e229', '', 1254326091, '127.0.0.1', 90, '8888', '', '', 1239783735, 1254325770, 1, 0, ''),
(3, 'member', '员工', 'aa08769cdcb26674c6706093503ff0a3', '', 1326266720, '127.0.0.1', 17, '', '', '', 1253514375, 1254325728, 1, 0, ''),
(4, 'leader', '领导', 'c444858e0aaeb727da73d2eae62321ad', '', 1254325906, '127.0.0.1', 15, '', '', '领导', 1253514575, 1254325705, 1, 0, ''),
(35, 'lxz123', '哈哈', 'e10adc3949ba59abbe56e057f20f883e', '', 0, NULL, 0, NULL, '646649009@qq.com', '', 1400424386, 1400424438, 1, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `think_article`
--
ALTER TABLE `think_article`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_form`
--
ALTER TABLE `think_form`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_log`
--
ALTER TABLE `think_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_p_node`
--
ALTER TABLE `think_p_node`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_p_node_button`
--
ALTER TABLE `think_p_node_button`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_p_node_role`
--
ALTER TABLE `think_p_node_role`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_p_role_node_button`
--
ALTER TABLE `think_p_role_node_button`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_role`
--
ALTER TABLE `think_role`
 ADD PRIMARY KEY (`id`), ADD KEY `parentId` (`pid`), ADD KEY `ename` (`ename`), ADD KEY `status` (`status`);

--
-- Indexes for table `think_role_user`
--
ALTER TABLE `think_role_user`
 ADD KEY `group_id` (`role_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `think_user`
--
ALTER TABLE `think_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `account` (`account`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `think_article`
--
ALTER TABLE `think_article`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `think_form`
--
ALTER TABLE `think_form`
MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `think_log`
--
ALTER TABLE `think_log`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=354;
--
-- AUTO_INCREMENT for table `think_p_node`
--
ALTER TABLE `think_p_node`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `think_p_node_button`
--
ALTER TABLE `think_p_node_button`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `think_p_node_role`
--
ALTER TABLE `think_p_node_role`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增',AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `think_p_role_node_button`
--
ALTER TABLE `think_p_role_node_button`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `think_role`
--
ALTER TABLE `think_role`
MODIFY `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `think_user`
--
ALTER TABLE `think_user`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
