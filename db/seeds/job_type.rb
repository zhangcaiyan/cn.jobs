# coding: utf-8
# 导入职业/职位类别数据


job_types = {
  "销售业务" => ["销售代表", "客户代表", "电话销售", "销售工程师", "渠道/分销专员", "医药销售代表", "网站推广", "团购业务员", "经销商", "其他"],
  "销售管理" => ["销售总监", "销售经理", "销售主管", "客户经理", "客户主管", "区域销售总监/经理", "渠道/分销总监", "渠道/分销经理/主管", "业务拓展主管/经理", "团购经理/主管", "售前/售后管理", "零售/百货/连锁管理", "其他"],
  "销售支持/商务" => ["销售行政经理/主管", "销售行政专员/助理", "商务专员/助理", "商务经理/主管", "业务分析", "销售培训讲师", "其他"],
  "客户服务/售前/售后支持" => ["客户服务总监", "客户服务经理", "客户服务主管", "客户关系/投诉/协调人员", "客户咨询热线/呼叫中心人员", "客户服务专员/助理", "售前/售后技术支持管理", "售前/售后技术支持工程师", "其他"],
  "采购/贸易" => ["采购总监/经理", "采购主管", "采购专员/助理", "外贸/贸易专员/助理", "外贸/贸易经理/主管", "业务跟单", "报关员", "其他"],
  "计算机软件/系统集成" => ["软件工程师", "高级软件工程师", "软件测试", "研发工程师", "系统工程师", "数据库开发工程师", "数据库管理员", "ERP技术/开发应用", "实施工程师", "其他"],
  "互联网/电子商务/网游" => ["网站运营管理", "产品经理/主管", "电子商务/SEO", "网络管理员", "网站编辑", "网页设计/制作", "网络工程师", "互联网研发工程师", "系统管理员", "系统分析师/架构师", "网络与信息安全工程师", "语音/视频/图形", "UI/UE设计师/顾问", "三维/3D设计/制作", "Flash设计/开发", "游戏设计/开发", "其他"],
  "计算机硬件/设备" => ["高级硬件工程师", "硬件工程师", "硬件测试人员", "其他"],
  "电信/通信" => ["无线/射频通信工程师", "电信/通信工程师", "通信电源工程师", "移动通信工程师", "电信网络工程师", "电信交换工程师", "数据通信工程师", "有线传输工程师", "项目经理/主管", "标准化工程师", "研发工程师", "其他"],
  "电子/电气/半导体/仪器仪表" => ["半导体技术", "研发工程师", "无线电工程师", "测试/可靠性工程师", "项目管理/产品管理", "产品工艺/规划/制程工程师", "灯光/照明", "版图设计工程师", "激光/光电子技术", "仪器/仪表/计量", "IC验证工程师", "集成电路IC设计/应用工程师", "家用电器/数码产品研发", "FAE现场应用工程师", "设备工程师（调试/安装/维护）", "嵌入式硬件/软件工程师", "电子/电气工程师", "电子/电器维修", "电路工程师/技术员", "机电工程师", "电子元器件工程师", "电池/电源开发", "自动化工程师", "音频/视频工程师/技术员", "模拟电路设计/应用工程师", "空调工程/设计", "其他"],
  "IT支持及其它" => ["首席技术官CTO/首席信息官CIO", "技术总监/经理", "信息技术经理/主管", "信息技术专员", "技术支持/维护经理", "技术支持/维护工程师", "项目经理/主管", "质量工程师", "其他"],
  "建筑装修/市政建设" => ["高级建筑工程师/总工", "建筑师/土建工程师", "工程监理/质量工程师", "给排水工程/暖通/制冷工程", "结构工程师", "电气设计", "造价师/预算师", "项目管理/招投标", "城市规划", "市政工程师", "室内外装潢设计", "景观/园林设计", "幕墙工程师", "智能大厦/布线/弱电/安防", "测绘/测量/制图", "铁路/道路/桥梁技术", "安全管理/安全员", "施工员", "其他"],
  "房地产开发/经纪/中介" => ["房地产中介/交易", "房地产开发/策划", "项目管理/招投标", "房地产评估", "其他"],
  "物业管理" => ["物业经理/主管", "物业管理专员/助理", "招商经理/主管", "物业招商/租赁/租售", "物业维修", "其他"],
  "财务/审计/税务" => ["首席财务官CFO", "财务总监", "财务经理", "财务主管/总帐主管", "财务分析经理/主管", "成本经理/主管", "会计经理/主管", "会计师", "会计", "成本会计", "出纳员", "审计经理/主管", "审计专员/助理", "资产/资金管理", "财务助理/会计助理", "税务经理/主管", "税务专员/助理", "统计员", "财务分析员", "其他"],
  "银行" => ["银行经理/主任", "银行会计/柜员", "信用卡/银行卡业务", "信贷管理/资信评估", "客户服务", "公司业务", "个人业务", "其他"],
  "金融/证券/期货/投资" => ["证券总监/部门经理", "证券/期货/外汇经纪人", "证券分析/金融研究", "客户经理/主管", "投资/理财服务", "项目经理/主管", "融资总监", "投资银行业务", "融资经理/融资主管/专员", "股票/期货操盘手", "风险管理/控制/稽查", "基金管理", "外汇交易/基金/国债经理人", "资产评估", "担保/拍卖/典当业务", "储备经理人", "其他"],
  "保险" => ["业务经理/主管", "项目经理/主管", "保险代理/经纪人/客户经理", "保险顾问/财务规划师", "保险产品开发/项目策划", "保险培训师", "契约管理", "核保理赔", "受理", "精算/投资/稽核/律师/法务/合规", "保险精算师", "客户服务/续期管理", "保险内勤", "储备经理人", "其他"],
  "汽车/摩托车制造" => ["项目工程管理", "设计工程师", "研发工程师", "发动机/底盘/总装工程师", "机械工程师", "电子工程师", "安全性能工程师", "装配工艺工程师", "理赔专员/顾问", "其他"],
  "汽车销售与服务" => ["销售/经纪人", "汽车/摩托车修理", "售后服务/客户服务", "4S店管理", "零配件销售", "装饰美容", "检验检测", "二手车评估师", "其他"],
  "工程机械" => ["工程机械经理", "工程机械主管", "工程/设备工程师", "机械工程师", "技术研发工程师", "技术文档工程师", "产品工艺/制程工程师", "结构工程师", "气动工程师", "模具工程师", "机械设计师", "机械制图员", "维修工程师", "铸造/锻造工程师/技师", "CNC/数控工程师", "其他"],
  "生产/加工/制造" => ["工厂厂长/副厂长", "生产总监/经理/车间主任", "项目经理/主管", "质量管理", "生产主管/督导/组长", "制造工程师", "项目工程师", "维修工程师", "铸造/锻造/注塑工程师", "工业工程师", "生产计划", "设备管理", "产品开发/技术/工艺", "化验/检验", "仓库物料", "采购管理", "包装工程师", "材料工程师", "其他"],
  "交通运输" => ["司机/驾驶员", "航空/列车/船舶操作维修", "航空/列车/船舶乘务", "公交/地铁", "飞机/列车/船舶设计与制造", "其他"],
  "服装/纺织/食品/饮料" => ["服装/店面/纺织设计", "面料辅料开发/采购", "服装打样/制版", "项目经理/主管", "生产管理", "服装/纺织/皮革跟单", "销售/市场推广", "质量管理/验货员(QA/QC)", "样衣工", "裁床", "食品/饮料研发检验", "其他"],
  "物流/仓储" => ["物流总监/经理", "物流主管", "物流专员/助理", "仓库经理/主管", "仓库/物料管理员", "供应链管理", "运输经理/主管", "快递员/速递员", "调度员", "单证员", "搬运工", "其他"],
  "技工" => ["车床/磨床/铣床/冲床工", "钳工/钣工", "电焊工/铆焊工", "电工", "汽车修理工/机修工", "水工/木工/油漆工", "模具工", "普工", "铲车/叉车工", "空调工/电梯工/锅炉工", "其他"],
  "质控/安防" => ["质量管理/测试经理(QA/QC经理)", "质量管理/测试主管(QA/QC主管)", "质量检验员/测试员", "质量管理/测试工程师(QA/QC工程师)", "安全消防", "认证/体系工程师/审核员", "供应商/采购设备与材料质量管理", "安全管理", "HSE工程师", "其他"],
  "市场/营销" => ["市场总监", "市场营销经理", "市场拓展经理/主管", "市场专员/市场助理", "市场经理", "市场营销主管", "市场拓展专员/助理", "市场营销专员/助理", "产品/品牌经理", "产品/品牌主管", "产品/品牌专员/助理", "市场主管", "市场调研与分析", "市场策划/企划经理/主管", "市场策划/企划专员/助理", "促销督导", "会务专员", "其他"],
  "公关/媒介" => ["公关总监/经理", "公关主管", "公关专员/助理", "媒介经理/主管", "媒介专员/媒介购买", "其他"],
  "美术/设计/创意" => ["创意指导/总监", "美术编辑/美术设计", "产品/包装设计", "展示/装潢设计", "平面设计", "家具设计", "工艺品/珠宝设计", "店面/陈列/展览设计", "多媒体/动画设计", "印刷排版/制版", "设计管理人员", "CAD设计/制图", "其他"],
  "广告/会展" => ["客户总监/经理", "客户主管/专员", "项目管理", "业务拓展", "媒介策划/管理", "设计/创意管理", "会展策划/设计", "企业策划人员", "文案策划", "婚礼策划服务", "美术指导", "制作执行", "其他"],
  "传媒/影视/报刊/出版/印刷" => ["导演/编导/影视制作", "总编/副总编/主编", "艺术指导/舞美设计", "摄影师/摄像师", "后期制作/音效师", "主持人/演员/模特/配音", "编辑/撰稿", "记者/采编", "文案/策划", "校对/录入", "出版/发行", "排版设计/完稿/美编", "印刷操作", "化妆师/造型师/服装/道具", "经纪人", "其他"],
  "生物工程/制药/医疗器械" => ["医药代表", "医疗器械推广", "产品研发/注册", "项目经理/主管", "药品生产/质量管理", "生物工程/生物制药", "招商经理/主管", "临床研究/协调", "其他"],
  "化工" => ["化工工程师", "化学分析", "化学制剂研发", "化学操作", "化学技术", "研发工程师", "项目经理/主管", "塑料工程师", "实验技术员/研究员", "油漆/化工涂料", "其他"],
  "环境科学/环保" => ["污水处理工程师", "环境工程技术/园林景区", "环境管理/保护", "环保技术", "EHS管理", "其他"],
  "能源/矿产/地质勘查" => ["项目经理/主管", "石油天然气技术人员", "空调/热能工程师", "核力/火力工程师", "电力工程师/技术员", "地质勘查/选矿/采矿", "水利/水电工程师", "其他"],
  "高级管理" => ["首席执行官CEO/总裁/总经理", "首席运营官COO/运营总监", "首席财务官CFO", "首席技术官CTO/首席信息官CIO", "副总裁/副总经理", "总裁助理/总经理助理", "总监", "分公司经理/代表处首代", "合伙人", "其他"],
  "人力资源" => ["人力资源总监", "人力资源经理", "人力资源主管", "人力资源专员/助理", "培训经理/主管", "培训专员/助理/培训师", "招聘专员/助理", "招聘经理/主管", "薪酬福利管理", "绩效考核管理", "员工关系/企业文化/工会", "猎头顾问/助理", "其他"],
  "行政/后勤/文秘" => ["行政总监", "行政主管", "行政经理/办公室主任", "行政专员/助理", "助理/秘书", "前台/总机/接待", "后勤人员", "合同管理", "电脑操作/打字/录入员", "文员", "其他"],
  "咨询/顾问" => ["咨询总监", "咨询经理/主管", "咨询顾问", "专业顾问", "情报信息分析", "培训师", "市场调研", "其他"],
  "教育/培训" => ["培训师/讲师", "招生/课程顾问", "教练", "教学/教务管理人员", "教育产品开发", "家教", "校长", "大学教师", "高中教师", "职业中专/技校教师", "初中教师", "小学教师", "幼教", "其他"],
  "律师/法务/合规" => ["律师/律师助理", "法务经理/主管", "律师/法务/合规顾问", "律师/法务/合规部经理/主任", "产权/专利顾问/专业代理", "法务专员/助理", "其他"],
  "翻译（口译与笔译）" => ["英语类", "法语类", "日语类", "德语类", "俄语类", "韩语类", "西班牙语翻译", "意大利语翻译", "葡萄牙语翻译", "阿拉伯语翻译", "其他语种类"],
  "零售/百货/超市" => ["店员/营业员/导购员", "店长/卖场经理", "理货员/陈列员", "收银员", "促销专员/导购", "兼职店员", "防损员/内保", "招商经理/主管", "奢侈品业务", "品类管理", "食品加工/处理", "其他"],
  "酒店/餐饮/旅游/娱乐" => ["酒店管理", "大堂经理/领班", "前厅接待/礼仪/迎宾", "娱乐或餐饮管理", "服务员", "客房服务", "厨师/面点师", "调酒师/茶艺师", "营养师", "导游/票务", "旅游顾问", "计划调度/旅游产品", "主持/司仪", "救生员", "保安", "其他"],
  "保健/美容/美发/健身" => ["美发/发型师", "健身/美体/舞蹈教练", "整形/美容/美甲", "化妆师", "按摩/足疗", "其他"],
  "医疗/护理" => ["医药代表", "医生/医师", "护士/护理人员", "内科医生", "外科医生", "儿科医生", "牙科医生", "中医科医生", "麻醉医生", "心理医生", "眼科医生/验光师", "药库主任/药剂师", "医药质检", "医疗管理人员", "营养师", "宠物护理/兽医", "针灸推拿", "其他"],
  "保安/家政/普通劳动力" => ["保安", "保洁", "普工", "话务员", "家政人员", "其他"],
  "公务员/事业单位/科研机构" => ["公务员/事业单位", "科研管理人员", "科研人员", "人文/社会科学", "航空航天", "声光学技术·激光技术", "气象", "其他"],
  "农/林/牧/渔业" => ["农/林/牧/渔", "饲料业务", "养殖人员", "农艺师", "畜牧师", "其他"],
  "毕业生/实习生/培训生" => ["志愿者", "培训生", "实习生", "储备干部", "毕业生", "其他"],
  "兼职/临时" => ["兼职", "临时", "其他"],
  "其他" => ["其他"]
}


JobType.delete_all

puts "===============开始导入 职业/职位类别 数据================"

job_types.each do |key, value|
  job_type = JobType.create(name: key)
  value.each do |value|
    job_type.children.create(name: value)
  end
end


puts "===============成功导入 职业/职位类别 数据================"
