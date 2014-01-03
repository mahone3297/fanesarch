class ShejixiangmuController < ApplicationController
  # 首页
  def index
    render :layout => false
  end

  # 次首页
  def vice_index
  end

  # 居住地产
  def juzhudichan
    @num_array = (1..17).to_a
    render 'list'
  end

  # 综合商业
  def zongheshangye
    @num_array = (1..22).to_a
    render 'list'
  end

  # 酒店度假
  def jiudiandujia
    @num_array = (1..4).to_a
    render 'list'
  end

  # 办公研发
  def bangongyanfa
    @num_array = (1..11).to_a
    render 'list'
  end

  # 展示会所
  def zhanshihuisuo
    @num_array = (1..5).to_a
    render 'list'
  end

  # 教育科研
  def jiaoyukeyan
    @num_array = (1..9).to_a
    render 'list'
  end

  # 工业建筑
  def gongyejianzhu
    @num_array = (1..11).to_a
    render 'list'
  end

  # 室内设计
  def shineisheji
    @num_array = (1..6).to_a
    render 'list'
  end

  # 景观设计
  def jingguansheji
    @num_array = (1..9).to_a
    render 'list'
  end

  # 显示详细页面
  def detail
    @category = params[:category]
    @idx = params[:idx]

    @item = @@data[@category][@idx]
    @text = @item.nil? ? '' : @item['text']
    @num_array = @item.nil? ? [] : @item['num_array']
    @image_path = @item.nil? ? '' : @category + @item['image_path']

    render 'detail'
  end

  @@data = {
    'juzhudichan' => {
      '1' => {
        'text' => '
项目名称 东湖林语（规划、建筑）
项目规模 占地53360平方米，建筑面积70000平方米
项目状况 建成
坐落  湖北武汉东湖路368号
', 'num_array' => (1..8).to_a, 'image_path' => '/detail/1武汉东湖林语/',
      },
      '2' => {
        'text' => '
项目名称 良渚文化村白鹭郡北(规划、建筑)
项目规模 占地80000平方米、建筑面积100000平方米
项目状况 建成
坐落  浙江杭州良渚
', 'num_array' => (1..21).to_a, 'image_path' => '/detail/2杭州良渚文化村白鹭郡北/',
      },
      '3' => {
        'text' => '
项目名称 良渚文化村阳光天际(规划、建筑)
项目规模 占地115000平方米、建筑面积50000平方米
项目状况 建成
坐落  浙江杭州良渚
', 'num_array' => (1..32).to_a, 'image_path' => '/detail/3杭州良渚文化村阳光天际/',
      },
      '4' => {
        'text' => '
项目名称 杭州良渚瑞和园（规划、建筑）
项目规模 占地22291平方米、建筑面积60196平方米
项目状况 在建
坐落  浙江杭州良渚
', 'num_array' => (1..10).to_a, 'image_path' => '/detail/4杭州良渚瑞和园/',
      },
      '5' => {
        'text' => '
项目名称 双囍花园（规划、建筑、景观、室内及项目设计管理）
项目规模 占地78464平方米，建筑面积196777平方米
项目状况 建成
坐落  浙江宁波慈溪
', 'num_array' => (1..25).to_a, 'image_path' => '/detail/5慈溪双囍花园/',
      },
      '6' => {
        'text' => '
项目名称 官河锦庭（规划、建筑）
项目规模 占地54315平方米、建筑面积175132平方米
项目状况 在建
坐落  浙江杭州滨江
', 'num_array' => (1..7).to_a, 'image_path' => '/detail/6杭州萧山官河锦庭/',
      },
      '7' => {
        'text' => '
项目名称 洛城中央御景（规划、建筑）
项目规模 占地121059.5平方米，建筑面积312115平方米
项目状况 在建，局部建成
坐落  江苏无锡
', 'num_array' => (1..16).to_a, 'image_path' => '/detail/7无锡洛城中央御景/',
      },
      '8' => {
        'text' => '
项目名称 上林·原著（规划、建筑）
项目规模 占地86744.42平方米，建筑面积128215平方米
项目状况 在建
坐落  浙江慈溪匡堰
', 'num_array' => (1..29).to_a, 'image_path' => '/detail/8慈溪匡堰上林原著/',
      },
      '9' => {
        'text' => '
项目名称 余杭双溪径山园二期(规划、建筑)
项目规模 占地32000平方米、建筑面积23100平方米
项目状况 在建
坐落  浙江余杭双溪竹海路1号
', 'num_array' => (1..8).to_a, 'image_path' => '/detail/9余杭双溪径山园二期/',
      },
      '10' => {
        'text' => '
项目名称 杭州余杭创新基地
项目规模 占地51686.8平方米、建筑面积117416.2平方米
项目状况 在建
坐落  浙江杭州余杭
', 'num_array' => (1..5).to_a, 'image_path' => '/detail/10杭州余杭区创新基地/',
      },
      '11' => {
        'text' => '
项目名称 岳阳岸芷汀兰住宅小区(规划、建筑)
项目规模 占地156403平方米、建筑面积180000平方米
项目状况 在建
项目位置 湖南省岳阳市南湖西岸
', 'num_array' => (1..11).to_a, 'image_path' => '/detail/11岳阳岸芷汀兰/',
      },
      '12' => {
        'text' => '
项目名称 西溪泽第（规划、建筑）
项目规模 占地168398.9平方米，建筑面积181600平方米
项目状况 方案
坐落  浙江杭州
', 'num_array' => (1..10).to_a, 'image_path' => '/detail/12杭州西溪泽第/',
      },
      '13' => {
        'text' => '
项目名称 博大山水天地（规划、建筑）
项目规模 占地30946平方米，建筑面积93359.2平方米
项目状况 建成
坐落  浙江新昌
', 'num_array' => (1..9).to_a, 'image_path' => '/detail/13新昌博大山水天地/',
      },
      '14' => {
        'text' => '
项目名称 高尔夫精英名城（规划、建筑）
项目规模 占地186509平方米，建筑面积2863320平方米
项目状况 建成
坐落  浙江绍兴诸暨
', 'num_array' => (1..28).to_a, 'image_path' => '/detail/14诸暨高尔夫精英名城/',
      },
      '15' => {
        'text' => '
项目名称 湖州长岛府（规划、建筑）
项目规模 占地15574平方米，建筑面积89134.1平方米
项目状况 在建
坐落  浙江湖州
', 'num_array' => (1..8).to_a, 'image_path' => '/detail/15湖州长岛府/',
      },
      '16' => {
        'text' => '
项目名称 又见康桥（规划、建筑）
项目规模 占地23234平方米，建筑面积23287平方米
项目状况 建成
坐落  浙江金华
', 'num_array' => (1..13).to_a, 'image_path' => '/detail/16金华又见康桥/',
      },
      '17' => {
        'text' => '
', 'num_array' => (1..19).to_a, 'image_path' => '/detail/17慈溪壹方大厦/',
      },
    },
    'zongheshangye' => {
      '1' => {
        'text' => '
项目名称 大通商城购物中心（规划、建筑）
项目规模 占地18966平方米，建筑面积212349平方米
项目状况 建成
坐落  浙江上虞
', 'num_array' => (1..19).to_a, 'image_path' => '/detail/1上虞大通商城购物中心/',
      },
      '2' => {
        'text' => '
项目名称 周巷新天地（规划、建筑）
项目规模 占地47674平方米，建筑面积82795平方米
项目状况 方案
坐落  浙江宁波周巷
', 'num_array' => (1..11).to_a, 'image_path' => '/detail/2周巷新天地/',
      },
      '3' => {
        'text' => '
项目名称 塘栖新天地（规划、建筑）
项目规模 占地60607平方米，建筑面积134900平方米
项目状况 方案
坐落  浙江杭州塘栖
', 'num_array' => (1..9).to_a, 'image_path' => '/detail/3塘栖新天地/',
      },
      '4' => {
        'text' => '
项目名称 鹿山广场商业综合体（规划、建筑）
项目规模 占地55527平方米，建筑面积263290平方米
项目状况 在建
坐落  浙江嵊州
', 'num_array' => (1..9).to_a, 'image_path' => '/detail/4嵊州鹿山广场/',
      },
      '5' => {
        'text' => '
项目名称 靖鹰广场（规划、建筑）
项目规模 占地82989平方米，建筑面积190950平方米
项目状况 方案
坐落  浙江临海
', 'num_array' => (1..10).to_a, 'image_path' => '/detail/5台州临海靖鹰广场/',
      },
      '6' => {
        'text' => '
项目名称 联策威尼达广场（规划、建筑）
项目规模 占地59379平方米，建筑面积226440平方米
项目状况 方案
坐落  浙江杭州江干区
', 'num_array' => (1..6).to_a, 'image_path' => '/detail/6杭州联策威尼达广场/',
      },
      '7' => {
        'text' => '
项目名称 泰成大厦（建筑）
项目规模 占地20631平方米，建筑面积180286平方米
项目状况 方案
坐落  浙江东阳
', 'num_array' => (1..12).to_a, 'image_path' => '/detail/7东阳泰成大厦/',
      },
      '8' => {
        'text' => '
项目名称 凯虹广场（建筑）
项目规模 占地18794平方米，建筑面积96593平方米
项目状况 方案
坐落  浙江舟山
', 'num_array' => (1..5).to_a, 'image_path' => '/detail/8舟山凯虹广场/',
      },
      '9' => {
        'text' => '
项目名称 雄风永利商业广场（建筑）
项目规模 占地82587平方米，建筑面积281434平方米
项目状况 在建
坐落  浙江绍兴诸暨
', 'num_array' => (1..10).to_a, 'image_path' => '/detail/9诸暨雄风永利商业广场/',
      },
      '10' => {
        'text' => '
项目名称 新兴广场（建筑）
项目规模 占地7391平方米，建筑面积42660平方米
项目状况 方案
坐落  浙江东阳
', 'num_array' => (1..10).to_a, 'image_path' => '/detail/10东阳新兴广场/',
      },
      '11' => {
        'text' => '
项目名称 蓝色公馆（建筑）
项目规模 占地13786平方米，建筑面积64559.3平方米
项目状况 建成
坐落  安徽广德
', 'num_array' => (1..12).to_a, 'image_path' => '/detail/11广德蓝色公馆/',
      },
      '12' => {
        'text' => '
项目名称 恒一广场（建筑）
项目规模 占地29673平方米，建筑面积86770平方米
项目状况 方案
坐落  浙江宁波
', 'num_array' => (1..6).to_a, 'image_path' => '/detail/12宁波恒一广场/',
      },
      '13' => {
        'text' => '
项目名称 新昌世贸中心（规划、建筑）
项目规模 占地19577平方米，建筑面积100705平方米
项目状况 在建
坐落  浙江新昌
', 'num_array' => (1..9).to_a, 'image_path' => '/detail/13新昌国大世贸广场/',
      },
      '14' => {
        'text' => '
项目名称 中百青山店（规划、建筑）
项目规模 占地15587平方米，建筑面积102563平方米
项目状况 方案
坐落  湖北武汉
', 'num_array' => (1..4).to_a, 'image_path' => '/detail/14武汉中百青山店/',
      },
      '15' => {
        'text' => '
项目名称 轻纺城财富中心（建筑）
项目规模 占地30320平方米，建筑面积104910平方米
项目状况 方案
坐落  浙江绍兴
', 'num_array' => (1..6).to_a, 'image_path' => '/detail/15绍兴轻纺城财富中心/',
      },
      '16' => {
        'text' => '
项目名称 鱼米乡（规划、建筑）
项目规模 占地14206平方米，建筑面积48376平方米
项目状况 方案
坐落  浙江德清
', 'num_array' => (1..6).to_a, 'image_path' => '/detail/16德清鱼米乡/',
      },
      '17' => {
        'text' => '
项目名称 中百仙桃店（建筑）
项目规模 占地22500平方米
项目状况 方案
坐落  湖北武汉
', 'num_array' => (1..2).to_a, 'image_path' => '/detail/17武汉中百仙桃店/',
      },
      '18' => {
        'text' => '
项目名称 晨光名都（规划、建筑）
项目规模 占地14770平方米，建筑面积78636平方米
项目状况 建成
坐落  浙江东阳
', 'num_array' => (1..4).to_a, 'image_path' => '/detail/18东阳晨光名都/',
      },
      '19' => {
        'text' => '
项目名称 万隆广场（规划、建筑）
项目规模 占地21000平方米，建筑面积78600平方米
项目状况 在建
坐落  辽宁锦州
', 'num_array' => (1..8).to_a, 'image_path' => '/detail/19锦州万隆广场/',
      },
      '20' => {
        'text' => '
项目名称 良渚文化村玉鸟流苏二期(规划、建筑)
项目规模 占地83800平方米、建筑面积32600平方米
项目状况 方案
项目位置 浙江杭州
', 'num_array' => (1..9).to_a, 'image_path' => '/detail/20杭州良渚文化村玉鸟流苏/',
      },
      '21' => {
        'text' => '
项目名称 浙江和乡园生态农业园(规划、建筑)
项目规模 占地166500平方米、建筑面积3000平方米
项目状况 在建
项目位置 浙江德清莫干山镇
', 'num_array' => (1..11).to_a, 'image_path' => '/detail/21德清莫干天堂/',
      },
      '22' => {
        'text' => '
项目名称 迪荡新城（规划）
项目规模 占地186公顷，建筑面积272万平方米
项目状况 方案
坐落  浙江绍兴
', 'num_array' => (1..7).to_a, 'image_path' => '/detail/22绍兴迪荡新城/',
      },
    },
    'jiudiandujia' => {
      '1' => {
        'text' => '
项目名称远洲豪廷大酒店（规划、建筑）
项目规模 占地10141平方米，建筑面积53814平方米
项目状况 建成
坐落  安徽巢湖
', 'num_array' => (1..11).to_a, 'image_path' => '/detail/1巢湖远洲豪廷大酒店/',
      },
      '2' => {
        'text' => '
项目名称 大云温泉（规划、建筑）
项目规模 占地22.82公顷，建筑面积182538平方米
项目状况 方案
坐落  浙江嘉善
', 'num_array' => (1..6).to_a, 'image_path' => '/detail/2嘉善大云温泉/',
      },
      '3' => {
        'text' => '
项目名称 丽水白云山丽人山庄(规划、建筑)
项目规模 占地31500平方米、建筑面积13680平方米
项目状况 在建
坐落  浙江丽水白云山
', 'num_array' => (1..10).to_a, 'image_path' => '/detail/3丽水白云山丽人山庄/',
      },
      '4' => {
        'text' => '
项目名称 怀化长河温泉酒店(规划、建筑)
项目规模 占地166500平方米、建筑面积40000平方米
项目状况 方案
坐落  湖南怀化麻阳长河文化小镇
', 'num_array' => (1..14).to_a, 'image_path' => '/detail/4怀化长河温泉酒店/',
      },
    },
    'bangongyanfa' => {
      '1' => {
        'text' => '
项目名称 壹向大楼（建筑）
项目规模 占地3177平方米，建筑面积13651.5平方米
项目状况 建成
坐落  浙江杭州
', 'num_array' => (1..13).to_a, 'image_path' => '/detail/1杭州壹向大楼/',
      },
      '2' => {
        'text' => '
项目名称 定海文创园（规划、建筑）
项目规模 占地23181平方米，建筑面积27452平方米
项目状况 在建
坐落  浙江舟山定海
', 'num_array' => (1..9).to_a, 'image_path' => '/detail/2舟山定海文创园/',
      },
      '3' => {
        'text' => '
项目名称 阿里巴巴淘宝城（规划、建筑）
项目规模 占地30公顷，建筑面积26万平方米
项目状况 方案
坐落  浙江杭州余杭区
', 'num_array' => (1..13).to_a, 'image_path' => '/detail/3杭州阿里巴巴淘宝城规划/',
      },
      '4' => {
        'text' => '
项目名称 萧山机场应急保障大楼（建筑）
项目规模 占地15660平方米，建筑面积54290平方米
项目状况 方案
坐落  浙江杭州萧山
', 'num_array' => (1..4).to_a, 'image_path' => '/detail/4杭州萧山机场应急保障大楼/',
      },
      '5' => {
        'text' => '
项目名称 徐龙国际广场（规划、建筑）
项目规模 占地31987平方米，建筑面积157759平方米
项目状况 方案
坐落  浙江杭州
', 'num_array' => (1..13).to_a, 'image_path' => '/detail/5杭州徐龙国际广场/',
      },
      '6' => {
        'text' => '
项目名称 天益中心（建筑）
项目规模 占地21397平方米，建筑面积106510平方米
项目状况 方案
坐落  上海
', 'num_array' => (1..8).to_a, 'image_path' => '/detail/6上海天益中心/',
      },
      '7' => {
        'text' => '
项目名称 西子世贸（规划、建筑）
项目规模 占地50738平方米，建筑面积241700平方米
项目状况 方案
坐落  浙江绍兴诸暨
', 'num_array' => (1..6).to_a, 'image_path' => '/detail/7诸暨西子世贸/',
      },
      '8' => {
        'text' => '
项目名称 杭州城北新天地 (规划、建筑)
项目规模 占地19000平方米、建筑面积100800平方米
项目状况 方案
坐落  浙江杭州下城区北部东新街道
', 'num_array' => (1..13).to_a, 'image_path' => '/detail/8杭州城北新天地/',
      },
      '9' => {
        'text' => '
项目名称 海明公司杭州总部(规划、建筑、室内)
项目规模 占地15000平方米、建筑面积3000平方米
项目状况 建成
坐落  浙江杭州江干区九环路12号
', 'num_array' => (1..18).to_a, 'image_path' => '/detail/9杭州海明总部/',
      },
      '10' => {
        'text' => '
项目名称 七章公园（规划、建筑）
项目规模 占地15500平方米，建筑面积55000平方米
项目状况 在建
坐落  浙江杭州江干区九格路
', 'num_array' => (1..9).to_a, 'image_path' => '/detail/10杭州七章公园/',
      },
      '11' => {
        'text' => '
项目名称 舟山海关大楼（规划、建筑）
项目规模 占地10461平方米，建筑面积7560平方米
项目状况 建成
坐落  浙江舟山
', 'num_array' => (1..11).to_a, 'image_path' => '/detail/11舟山海关大楼/',
      },
    },
    'zhanshihuisuo' => {
      '1' => {
        'text' => '
项目名称 良渚文化村白鹭郡北会所(规划、建筑)
项目规模 占地3000平方米、建筑面积1500平方米
项目状况 建成
坐落  浙江杭州良渚
', 'num_array' => (1..10).to_a, 'image_path' => '/detail/1杭州良渚文化村郡北会所/',
      },
      '2' => {
        'text' => '
项目名称 新荣记临海总部（规划、建筑）
项目规模 占地8000平方米，建筑面积13370平方米
项目状况 建成
坐落  浙江台州临海灵湖
', 'num_array' => (1..10).to_a, 'image_path' => '/detail/2台州临海新荣记灵湖会所/',
      },
      '3' => {
        'text' => '
项目名称 上林·原著会所（建筑）
项目规模 建筑面积400平方米
项目状况 建成
坐落  浙江宁波慈溪
', 'num_array' => (1..10).to_a, 'image_path' => '/detail/3慈溪上林原著会所/',
      },
      '4' => {
        'text' => '
项目名称 福泉市城市展览馆（规划、建筑）
项目规模 占地13175平方米，建筑面积14000平方米
项目状况 方案
坐落  贵州福泉
', 'num_array' => (1..9).to_a, 'image_path' => '/detail/4福泉市城市展览馆/',
      },
      '5' => {
        'text' => '
项目名称 余杭双溪径山园商业会所(建筑)
项目规模 占地1600平方米、建筑面积1750平方米
项目状况 在建
坐落  浙江余杭双溪竹海路1号
', 'num_array' => (1..4).to_a, 'image_path' => '/detail/5余杭双溪径山园商业会所/',
      },
    },
    'jiaoyukeyan' => {
      '1' => {
        'text' => '
项目名称 浙江大学紫金港校区西区规划（规划）
项目规模 总建筑面积1717000平方米
项目状况 方案
坐落  浙江杭州
', 'num_array' => (1..2).to_a, 'image_path' => '/detail/1浙江大学紫金港校区西区规划/',
      },
      '2' => {
        'text' => '
项目名称 杭州师范大学二期规划（规划）
项目规模 占地219.33公顷
项目状况 方案
坐落  浙江杭州
', 'num_array' => (1..13).to_a, 'image_path' => '/detail/2杭州师范大学二期规划/',
      },
      '3' => {
        'text' => '
项目名称 浙江大学国家科技园（规划、建筑）
项目规模 占地29.1公顷，建筑面积50万平方米
项目状况 方案
坐落  浙江杭州西湖区
', 'num_array' => (1..10).to_a, 'image_path' => '/detail/3浙江大学国家科技园/',
      },
      '4' => {
        'text' => '
项目名称 台州大学（规划、建筑）
项目规模 占地749369平方米，建筑面积376735平方米
项目状况 方案
坐落  浙江台州
', 'num_array' => (1..6).to_a, 'image_path' => '/detail/4台州大学/',
      },
      '5' => {
        'text' => '
项目名称 浙江农林大学国家级工程实验中心(规划、建筑)
项目规模 占地16500平方米、建筑面积11136平方米
项目状况 建成
坐落  浙江临安浙江农林大学
', 'num_array' => (1..12).to_a, 'image_path' => '/detail/5浙江农林大学国家级工程实验中心/',
      },
      '6' => {
        'text' => '
项目名称 浙江大学紫金港校区经济学院(规划、建筑)
项目规模 占地6700平方米、建筑面积18000平方米
项目状况 方案
项目位置 浙江杭州
', 'num_array' => (1..13).to_a, 'image_path' => '/detail/6浙江大学紫金港校区经济学院/',
      },
      '7' => {
        'text' => '
项目名称浙江大学紫金港校区研究生院（规划、建筑）
项目规模 占地24000平方米，建筑面积45350平方米
项目状况 方案
坐落  浙江杭州
', 'num_array' => (1..13).to_a, 'image_path' => '/detail/7浙江大学紫金港校区研究生院/',
      },
      '8' => {
        'text' => '
项目名称 椒江中学体育馆（建筑）
项目规模 2600人规模，建筑面积7373平方米
项目状况 建成
坐落  浙江椒江
', 'num_array' => (1..3).to_a, 'image_path' => '/detail/8椒江中学体育馆/',
      },
      '9' => {
        'text' => '
项目名称（规划、建筑）
项目规模 占地19540平方米，建筑面积7820平方米
项目状况 建成
坐落  浙江台州
', 'num_array' => (1..4).to_a, 'image_path' => '/detail/9台州书画院/',
      },
    },
    'gongyejianzhu' => {
      '1' => {
        'text' => '
项目名称 海明公司德清园区(规划、建筑、景观、室内)
项目规模 占地12公顷，建筑面积12.3万平方米
项目状况 建成
坐落  浙江德清
', 'num_array' => (1..38).to_a, 'image_path' => '/detail/1德清海明园区/',
      },
      '2' => {
        'text' => '
项目名称 大华数字安防基地（规划、建筑）
项目规模 占地7997平方米，建筑面积113044平方米
项目状况 在建
坐落  浙江杭州
', 'num_array' => (1..10).to_a, 'image_path' => '/detail/2杭州大华数字安防基地/',
      },
      '3' => {
        'text' => '
项目名称 大华控股物联网基地大楼（建筑）
项目规模 占地116701平方米，建筑面积68982平方米
项目状况 在建
坐落  浙江杭州
', 'num_array' => (1..5).to_a, 'image_path' => '/detail/3杭州大华控股物联网基地大楼/',
      },
      '4' => {
        'text' => '
项目名称 白马湖大华工业园（规划、建筑）
项目规模 占地44834平方米，建筑面积1473300平方米
项目状况 方案
坐落  浙江杭州白马湖
', 'num_array' => (1..7).to_a, 'image_path' => '/detail/4杭州白马湖大华工业园/',
      },
      '5' => {
        'text' => '
项目名称 杭州海康威视（规划、建筑）
项目规模 占地43925平方米，建筑面积119043平方米
项目状况 建成
坐落  浙江杭州
', 'num_array' => (1..4).to_a, 'image_path' => '/detail/5杭州海康威视/',
      },
      '6' => {
        'text' => '
项目名称 杭州马尼托瓦（规划、建筑）
项目规模 占地30125平方米，建筑面积20723平方米
项目状况 建成
坐落  浙江杭州
', 'num_array' => (1..11).to_a, 'image_path' => '/detail/6杭州马尼托瓦/',
      },
      '7' => {
        'text' => '
项目名称 杭州博世（规划、建筑）
项目规模 占地75645平方米，建筑面积45388平方米
项目状况 建成
坐落  浙江杭州
', 'num_array' => (1..2).to_a, 'image_path' => '/detail/7杭州博世/',
      },
      '8' => {
        'text' => '
项目名称 苏泊尔（规划、建筑）
项目规模 占地89594平方米，建筑面积152401平方米
项目状况 建成
坐落  浙江绍兴
', 'num_array' => (1..7).to_a, 'image_path' => '/detail/8苏泊尔绍兴/',
      },
      '9' => {
        'text' => '
项目名称 杭州博雷（规划、建筑）
项目规模 占地53767平方米，建筑面积36399平方米
项目状况 建成
坐落  浙江杭州
', 'num_array' => (1..6).to_a, 'image_path' => '/detail/9杭州博雷/',
      },
      '10' => {
        'text' => '
项目名称 苏泊尔（规划、建筑）
项目规模 占地57990平方米，建筑面积60589方米
项目状况 建成
坐落  浙江杭州滨江
', 'num_array' => (1..6).to_a, 'image_path' => '/detail/10苏泊尔滨江/',
      },
      '11' => {
        'text' => '
项目名称 杭州大有科技（规划、建筑）
项目规模 占地13330平方米，建筑面积30251平方米
项目状况 建成
坐落  浙江杭州
', 'num_array' => (1..8).to_a, 'image_path' => '/detail/11杭州大有科技/',
      },
    },
    'shineisheji' => {
      '1' => {
        'text' => '
项目名称：慈溪双囍花园
项目内容：户型T5（189㎡）、户型T6A（220㎡）、户型T6B（245㎡）样板房深化设计
          公共空间（4077㎡）、会所（1150㎡）深化设计
坐落 浙江宁波慈溪
', 'num_array' => (1..21).to_a, 'image_path' => '/detail/1慈溪双囍花园/',
      },
      '2' => {
        'text' => '
项目名称：壹方大厦
项目内容：商务公共区，办公区，住宅
坐落 浙江宁波慈溪
', 'num_array' => (1..36).to_a, 'image_path' => '/detail/2慈溪壹方大厦/',
      },
      '3' => {
        'text' => '
项目名称：无锡洛成中央御景
项目内容：户型J（348㎡）、户型K1（585㎡）、户型H1（575㎡）、户型G1（575㎡）、12#楼室内（30㎡）样板房深化设计。
坐落 江苏省无锡市洛城
', 'num_array' => (1..20).to_a, 'image_path' => '/detail/3无锡洛城中央御景/',
      },
      '4' => {
        'text' => '
项目名称：慈溪梵石花园
项目内容：2-1号楼西边套（154㎡）、2-1号楼中间套（294㎡）、2-1号楼顶楼（255㎡）、
          2-1号楼东边套（187㎡）、2-3号楼东边套（375㎡）样板房深化设计
          公共空间（690㎡）、售楼处（850㎡）深化设计
坐落 浙江宁波慈溪
', 'num_array' => (1..13).to_a, 'image_path' => '/detail/4梵石花园/',
      },
      '5' => {
        'text' => '
项目名称：杭州壹向办公楼
项目内容：地下室及公共空间（378㎡）、一层大堂（585㎡）、2—8标准层（575㎡）、
          9—10层（1150㎡）办公楼深化设计
坐落 浙江省杭州市莫干山路
', 'num_array' => (1..29).to_a, 'image_path' => '/detail/5杭州壹向大楼/',
      },
      '6' => {
        'text' => '
项目名称：梵石建筑办公空间
项目内容：
坐落 浙江杭州
', 'num_array' => (1..28).to_a, 'image_path' => '/detail/6杭州紫金广场梵石建筑/',
      },
    },
  }
end
