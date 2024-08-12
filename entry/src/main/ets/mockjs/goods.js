const goods = [
    {
        classifyId: 1,
        classifyName: "慈善捐助",
        courseList: [
            {
                courseId: 1,
                name: "城市无家可归者援助项目",
                total_price: "5万",
                used_price: "500",
                start_time: "2024-02-01",
                end_time: "2024-12-01",
                company: "城市救助基金会",
                isObject: true,
                object_content: "提供临时住宿，日常饮食支持以及职业培训",
                pic: $r("app.media.DonateSite1")
            },
            {
                courseId: 2,
                name: "社区文化振兴计划",
                total_price: "8万",
                used_price: "1600",
                start_time: "2024-03-01",
                end_time: "2025-02-01",
                company: "社区文化发展中心",
                isObject: true,
                object_content: "建设社区图书馆，组织文化节，开展艺术工作坊",
                pic: $r("app.media.DonateSite1")
            },
            {
                courseId: 3,
                name: "青少年体育活动支持",
                total_price: "7万",
                used_price: "1400",
                start_time: "2024-04-01",
                end_time: "2024-11-01",
                company: "青少年体育基金会",
                isObject: true,
                object_content: "支持校园体育设施建设，举办校际运动会",
                pic: $r("app.media.DonateSite1")
            },
            {
                courseId: 4,
                name: "社区环境改善计划",
                total_price: "6万",
                used_price: "1200",
                start_time: "2024-05-01",
                end_time: "2025-01-01",
                company: "环境保护组织",
                isObject: true,
                object_content: "改善公园绿化，安装太阳能街灯，促进垃圾分类",
                pic: $r("app.media.DonateSite1")
            }
        ]
    },
    {
        classifyId: 2,
        classifyName: "爱佑新生",
        courseList: [
            {
                courseId: 1,
                name: "孕妇营养支持项目",
                total_price: "9万",
                used_price: "1800",
                start_time: "2024-06-01",
                end_time: "2025-03-01",
                company: "妇幼保健基金会",
                isObject: true,
                object_content: "为孕妇提供营养包和定期健康检查",
                pic: $r("app.media.DonateSite2")
            },
            {
                courseId: 2,
                name: "新生儿健康监护计划",
                total_price: "11万",
                used_price: "2200",
                start_time: "2024-07-01",
                end_time: "2025-04-01",
                company: "儿童健康基金会",
                isObject: true,
                object_content: "提供新生儿疾病筛查和预防接种",
                pic: $r("app.media.DonateSite2")
            },
            {
                courseId: 3,
                name: "儿童早教发展项目",
                total_price: "10万",
                used_price: "2000",
                start_time: "2024-08-01",
                end_time: "2025-05-01",
                company: "早期教育中心",
                isObject: true,
                object_content: "开设早教班级，提供儿童发展玩具和图书",
                pic: $r("app.media.DonateSite2")
            },
            {
                courseId: 4,
                name: "婴儿护理与成长支持",
                total_price: "12万",
                used_price: "2400",
                start_time: "2024-09-01",
                end_time: "2025-06-01",
                company: "婴儿护理基金会",
                isObject: true,
                object_content: "教育新手父母关于婴儿护理和营养的知识",
                pic: $r("app.media.DonateSite2")
            }
        ]
    },
    {
        classifyId: 3,
        classifyName: "公益捐助",
        courseList: [
            {
                courseId: 1,
                name: "国家公园保护与维护",
                total_price: "20万",
                used_price: "4000",
                start_time: "2024-10-01",
                end_time: "2025-07-01",
                company: "自然保护基金会",
                isObject: true,
                object_content: "维护自然步道，保护野生动植物，举办环保教育活动",
                pic: $r("app.media.DonateSite3")
            },
            {
                courseId: 2,
                name: "城市低碳环保倡议",
                total_price: "18万",
                used_price: "3600",
                start_time: "2024-11-01",
                end_time: "2025-08-01",
                company: "城市环保组织",
                isObject: true,
                object_content: "推广电动汽车使用，增设公共自行车点",
                pic: $r("app.media.DonateSite3")
            },
            {
                courseId: 3,
                name: "水资源保护与管理",
                total_price: "16万",
                used_price: "3200",
                start_time: "2024-12-01",
                end_time: "2025-09-01",
                company: "水务局合作项目",
                isObject: true,
                object_content: "清洁河流，提升水质，普及节水意识",
                pic: $r("app.media.DonateSite3")
            },
            {
                courseId: 4,
                name: "野生动物保护计划",
                total_price: "22万",
                used_price: "4400",
                start_time: "2025-01-01",
                end_time: "2025-10-01",
                company: "野生生物保护基金会",
                isObject: true,
                object_content: "保护濒危物种，反对非法狩猎，教育公众",
                pic: $r("app.media.DonateSite3")
            }
        ]
    },
    {
        classifyId: 4,
        classifyName: "助学圆梦",
        courseList: [
            {
                courseId: 1,
                name: "贫困学生大学入学支持",
                total_price: "14万",
                used_price: "2800",
                start_time: "2024-01-01",
                end_time: "2024-06-01",
                company: "教育扶贫基金会",
                isObject: true,
                object_content: "资助贫困学生大学学费，提供生活补助",
                pic: $r("app.media.DonateSite4")
            },
            {
                courseId: 2,
                name: "高中生国际交流项目",
                total_price: "13万",
                used_price: "2600",
                start_time: "2024-02-01",
                end_time: "2024-07-01",
                company: "国际教育交流中心",
                isObject: true,
                object_content: "资助高中生参与国际学术交流，提升国际视野",
                pic: $r("app.media.DonateSite4")
            },
            {
                courseId: 3,
                name: "科技兴趣小组资助计划",
                total_price: "11万",
                used_price: "2200",
                start_time: "2024-03-01",
                end_time: "2024-08-01",
                company: "青少年科技俱乐部",
                isObject: true,
                object_content: "为学生提供科技实验材料和设备，举办科技竞赛",
                pic: $r("app.media.DonateSite4")
            },
            {
                courseId: 4,
                name: "艺术才能培养资助项目",
                total_price: "12万",
                used_price: "2400",
                start_time: "2024-04-01",
                end_time: "2024-09-01",
                company: "青少年艺术基金会",
                isObject: true,
                object_content: "支持音乐、舞蹈、绘画等艺术形式的教育和展览",
                pic: $r("app.media.DonateSite4")
            }
        ]
    },
    {
        classifyId: 5,
        classifyName: "扶老助残",
        courseList: [
            {
                courseId: 1,
                name: "老年疾病预防和康复计划",
                total_price: "10万",
                used_price: "2000",
                start_time: "2024-05-01",
                end_time: "2024-10-01",
                company: "老年健康基金会",
                isObject: true,
                object_content: "为老年人提供预防性健康检查和康复治疗",
                pic: $r("app.media.DonateSite5")
            },
            {
                courseId: 2,
                name: "视力恢复与辅助计划",
                total_price: "9万",
                used_price: "1800",
                start_time: "2024-06-01",
                end_time: "2024-11-01",
                company: "视力保护组织",
                isObject: true,
                object_content: "为视障人士提供眼科治疗和视力辅助设备",
                pic: $r("app.media.DonateSite5")
            },
            {
                courseId: 3,
                name: "残疾儿童教育支持项目",
                total_price: "11万",
                used_price: "2200",
                start_time: "2024-07-01",
                end_time: "2024-12-01",
                company: "残疾儿童教育基金会",
                isObject: true,
                object_content: "提供特殊教育资源和个性化教学",
                pic: $r("app.media.DonateSite5")
            },
            {
                courseId: 4,
                name: "老年活动中心建设项目",
                total_price: "8万",
                used_price: "1600",
                start_time: "2024-08-01",
                end_time: "2024-12-01",
                company: "老年人社区服务中心",
                isObject: true,
                object_content: "建设老年活动中心，举办各类休闲和健康活动",
                pic: $r("app.media.DonateSite5")
            }
        ]
    },
    {
        classifyId: 6,
        classifyName: "慈善军营",
        courseList: [
            {
                courseId: 1,
                name: "退伍军人就业培训项目",
                total_price: "17万",
                used_price: "3400",
                start_time: "2024-09-01",
                end_time: "2025-02-01",
                company: "退伍军人支援基金会",
                isObject: true,
                object_content: "提供专业技能培训和职业咨询服务",
                pic: $r("app.media.DonateSite6")
            },
            {
                courseId: 2,
                name: "军人家庭紧急援助计划",
                total_price: "15万",
                used_price: "3000",
                start_time: "2024-10-01",
                end_time: "2025-03-01",
                company: "军人家庭支持中心",
                isObject: true,
                object_content: "为军人家庭提供医疗和生活紧急援助",
                pic: $r("app.media.DonateSite6")
            },
            {
                courseId: 3,
                name: "心理健康支持项目",
                total_price: "13万",
                used_price: "2600",
                start_time: "2024-11-01",
                end_time: "2025-04-01",
                company: "心理健康中心",
                isObject: true,
                object_content: "为退役军人提供心理健康咨询和治疗",
                pic: $r("app.media.DonateSite6")
            },
            {
                courseId: 4,
                name: "军人残疾康复支持",
                total_price: "19万",
                used_price: "3800",
                start_time: "2024-12-01",
                end_time: "2025-05-01",
                company: "残疾军人康复中心",
                isObject: true,
                object_content: "提供物理治疗和康复设备支持",
                pic: $r("app.media.DonateSite6")
            }
        ]
    },
    {
        classifyId: 7,
        classifyName: "免费捐助",
        courseList: [
            {
                courseId: 1,
                name: "社区免费法律咨询服务",
                total_price: "4万",
                used_price: "800",
                start_time: "2024-01-01",
                end_time: "2024-06-01",
                company: "社区法律支援中心",
                isObject: true,
                object_content: "为社区居民提供免费法律咨询和援助",
                pic: $r("app.media.DonateSite7")
            },
            {
                courseId: 2,
                name: "无偿医疗援助项目",
                total_price: "6万",
                used_price: "1200",
                start_time: "2024-02-01",
                end_time: "2024-07-01",
                company: "健康医疗基金会",
                isObject: true,
                object_content: "为低收入家庭提供基本医疗服务",
                pic: $r("app.media.DonateSite7")
            },
            {
                courseId: 3,
                name: "城市低收入者食品银行",
                total_price: "3万",
                used_price: "600",
                start_time: "2024-03-01",
                end_time: "2024-08-01",
                company: "食品支持基金会",
                isObject: true,
                object_content: "设立食品银行，定期为低收入者提供食品援助",
                pic: $r("app.media.DonateSite7")
            },
            {
                courseId: 4,
                name: "教育资源平等化项目",
                total_price: "5万",
                used_price: "1000",
                start_time: "2024-04-01",
                end_time: "2024-09-01",
                company: "教育平等基金会",
                isObject: true,
                object_content: "为边远地区学校提供教育资源和网络设备",
                pic: $r("app.media.DonateSite7")
            }
        ]
    },
    {
        classifyId: 8,
        classifyName: "突发事件",
        courseList: [
            {
                courseId: 1,
                name: "地震紧急救援基金",
                total_price: "30万",
                used_price: "6000",
                start_time: "2024-05-01",
                end_time: "2024-10-01",
                company: "灾害应急响应基金会",
                isObject: true,
                object_content: "提供地震灾区的紧急救援和物资支援",
                pic: $r("app.media.DonateSite8")
            },
            {
                courseId: 2,
                name: "洪水灾害救助计划",
                total_price: "25万",
                used_price: "5000",
                start_time: "2024-06-01",
                end_time: "2024-11-01",
                company: "洪水救助基金会",
                isObject: true,
                object_content: "救助洪水灾区，提供紧急食品和清洁用品",
                pic: $r("app.media.DonateSite8")
            },
            {
                courseId: 3,
                name: "野火救援与恢复项目",
                total_price: "20万",
                used_price: "4000",
                start_time: "2024-07-01",
                end_time: "2024-12-01",
                company: "野火救援基金会",
                isObject: true,
                object_content: "救援野火灾区，支持生态恢复和再造林",
                pic: $r("app.media.DonateSite8")
            },
            {
                courseId: 4,
                name: "疫情应对与支持计划",
                total_price: "18万",
                used_price: "3600",
                start_time: "2024-08-01",
                end_time: "2025-01-01",
                company: "公共卫生基金会",
                isObject: true,
                object_content: "支持疫情严重地区的医疗设施和防疫物资",
                pic: $r("app.media.DonateSite8")
            }
        ]
    }


]

export default goods;