# coding: utf-8

industries = ["计算机硬件及网络设备", "计算机软件", "IT服务（系统/数据/维护）/多领域经营", "互联网/电子商务", "网络游戏", "通讯（设备/运营/增值服务）", "电子技术/半导体/集成电路", "仪器仪表及工业自动化", "金融/银行/投资/基金/证券", "保险", "房地产/建筑/建材/工程", "家居/室内设计/装饰装潢", "物业管理/商业中心", "广告/会展/公关/市场推广", "媒体/出版/影视/文化/艺术", "印刷/包装/造纸", "咨询/管理产业/法律/财会", "教育/培训", "检验/检测/认证", "中介服务", "贸易/进出口", "零售/批发", "快速消费品（食品/饮料/烟酒/化妆品）", "耐用消费品（服装服饰/纺织/皮革/家具/家电）", "办公用品及设备", "礼品/玩具/工艺美术/收藏品", "大型设备/机电设备/重工业", "加工制造（原料加工/模具）", "汽车/摩托车（制造/维护/配件/销售/服务）", "交通/运输/物流", "医药/生物工程", "医疗/护理/美容/保健", "医疗设备/器械", "酒店/餐饮", "娱乐/体育/休闲", "旅游/度假", "石油/石化/化工", "能源/矿产/采掘/冶炼", "电气/电力/水利", "航空/航天", "学术/科研", "政府/公共事业/非盈利机构", "环保", "农/林/牧/渔", "跨领域经营", "其它"]


Industry.delete_all
puts "===============开始导入行业数据================"
industries.each {|industry_name| Industry.create(name: industry_name)}
puts "===============成功导入行业数据================"
