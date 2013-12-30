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

    @text = ''
    @num_array = []
    @image_path = ''

    case @category
    when 'juzhudichan'
      case @idx
      when '1'
        @text =<<EOF
项目名称 东湖林语（规划、建筑）
项目规模 占地53360平方米，建筑面积70000平方米
项目状况 建成
坐落  湖北武汉东湖路368号
EOF
        @num_array = (1..8).to_a
        @image_path = @category + '/detail/1武汉东湖林语/'
      when '2'
        @text =<<EOF
项目名称 良渚文化村白鹭郡北(规划、建筑)
项目规模 占地80000平方米、建筑面积100000平方米
项目状况 建成
坐落  浙江杭州良渚
EOF
        @num_array = (1..21).to_a
        @image_path = @category + '/detail/2杭州良渚文化村白鹭郡北/'
      when '3'
        @text =<<EOF
项目名称 良渚文化村阳光天际(规划、建筑)
项目规模 占地115000平方米、建筑面积50000平方米
项目状况 建成
坐落  浙江杭州良渚
EOF
        @num_array = (1..32).to_a
        @image_path = @category + '/detail/3杭州良渚文化村阳光天际/'
      when '4'
        @text =<<EOF
项目名称 杭州良渚瑞和园（规划、建筑）
项目规模 占地22291平方米、建筑面积60196平方米
项目状况 在建
坐落  浙江杭州良渚
EOF
        @num_array = (1..10).to_a
        @image_path = @category + '/detail/4杭州良渚瑞和园/'
      when '5'
        @text =<<EOF
项目名称 双囍花园（规划、建筑、景观、室内及项目设计管理）
项目规模 占地78464平方米，建筑面积196777平方米
项目状况 建成
坐落  浙江宁波慈溪
EOF
        @num_array = (1..25).to_a
        @image_path = @category + '/detail/5慈溪双囍花园/'
      when '6'
        @text =<<EOF
项目名称 官河锦庭（规划、建筑）
项目规模 占地54315平方米、建筑面积175132平方米
项目状况 在建
坐落  浙江杭州滨江
EOF
        @num_array = (1..7).to_a
        @image_path = @category + '/detail/6杭州萧山官河锦庭/'
      when '7'
        @text =<<EOF
项目名称 洛城中央御景（规划、建筑）
项目规模 占地121059.5平方米，建筑面积312115平方米
项目状况 在建，局部建成
坐落  江苏无锡
EOF
        @num_array = (1..16).to_a
        @image_path = @category + '/detail/7无锡洛城中央御景/'
      when '8'
        @text =<<EOF
项目名称 上林·原著（规划、建筑）
项目规模 占地86744.42平方米，建筑面积128215平方米
项目状况 在建
坐落  浙江慈溪匡堰
EOF
        @num_array = (1..29).to_a
        @image_path = @category + '/detail/8慈溪匡堰上林原著/'
      when '9'
        @text =<<EOF
项目名称 余杭双溪径山园二期(规划、建筑)
项目规模 占地32000平方米、建筑面积23100平方米
项目状况 在建
坐落  浙江余杭双溪竹海路1号
EOF
        @num_array = (1..8).to_a
        @image_path = @category + '/detail/9余杭双溪径山园二期/'
      when '10'
        @text =<<EOF
项目名称 杭州余杭创新基地
项目规模 占地51686.8平方米、建筑面积117416.2平方米
项目状况 在建
坐落  浙江杭州余杭
EOF
        @num_array = (1..5).to_a
        @image_path = @category + '/detail/10杭州余杭区创新基地/'
      when '11'
        @text =<<EOF
项目名称 岳阳岸芷汀兰住宅小区(规划、建筑)
项目规模 占地156403平方米、建筑面积180000平方米
项目状况 在建
项目位置 湖南省岳阳市南湖西岸
EOF
        @num_array = (1..11).to_a
        @image_path = @category + '/detail/11岳阳岸芷汀兰/'
      when '12'
        @text =<<EOF
项目名称 西溪泽第（规划、建筑）
项目规模 占地168398.9平方米，建筑面积181600平方米
项目状况 方案
坐落  浙江杭州
EOF
        @num_array = (1..10).to_a
        @image_path = @category + '/detail/12杭州西溪泽第/'
      when '13'
        @text =<<EOF
项目名称 博大山水天地（规划、建筑）
项目规模 占地30946平方米，建筑面积93359.2平方米
项目状况 建成
坐落  浙江新昌
EOF
        @num_array = (1..9).to_a
        @image_path = @category + '/detail/13新昌博大山水天地/'
      when '14'
        @text =<<EOF
项目名称 高尔夫精英名城（规划、建筑）
项目规模 占地186509平方米，建筑面积2863320平方米
项目状况 建成
坐落  浙江绍兴诸暨
EOF
        @num_array = (1..28).to_a
        @image_path = @category + '/detail/14诸暨高尔夫精英名城/'
      when '15'
        @text =<<EOF
项目名称 湖州长岛府（规划、建筑）
项目规模 占地15574平方米，建筑面积89134.1平方米
项目状况 在建
坐落  浙江湖州
EOF
        @num_array = (1..8).to_a
        @image_path = @category + '/detail/15湖州长岛府/'
      when '16'
        @text =<<EOF
项目名称 又见康桥（规划、建筑）
项目规模 占地23234平方米，建筑面积23287平方米
项目状况 建成
坐落  浙江金华
EOF
        @num_array = (1..13).to_a
        @image_path = @category + '/detail/16金华又见康桥/'
      when '17'
        @text =<<EOF
EOF
        @num_array = (1..19).to_a
        @image_path = @category + '/detail/17慈溪壹方大厦/'
      end
    
    end
    render 'detail'
  end
end
