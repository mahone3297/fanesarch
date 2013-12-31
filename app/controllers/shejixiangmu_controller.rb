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
    }
  }
end
