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
      else
        @text = ''
        @num_array = []
        @image_path = ''
      end
    end
    render 'detail'
  end
end
