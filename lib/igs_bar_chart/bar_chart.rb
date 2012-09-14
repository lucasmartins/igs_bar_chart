class Igs::BarChart
  attr_reader :title,:size,:target_element,:data
  # data=[100,299,234,55]
  def initialize(title,width,height,target_element='body',data)
    @title = title
    @width = width
    @height = height
    @data = data.values
    @labels = data.keys
    @target_element = target_element
    @default_attribution=false
  end

  def script
    return eval_erb('script.html')
  end

  def style
    return eval_erb('style.css')
  end

  def labels
    return eval_erb('labels.html')
  end

  def render
    rendering = "<style>\n"
    rendering+= self.style
    rendering+= "</style>\n"
    rendering+= self.script
    #rendering+= self.labels
    
    return rendering
  end

  def to_s
    render
  end

  def data=(data)
    @data=data
  end

  def width=(width)
    @width = width
  end

  def height=(height)
    @height = height
  end

private
  
  def eval_erb(partial)
    begin
      default_attributions

      path = File.expand_path("../../../templates/_#{partial}.erb", __FILE__)
      output = ERB.new(File.read(path)).result(binding)
    rescue Exception => e
      STDERR.puts "Erro ao renderizar '#{partial}'! #{e}"
      output = nil
    end
    return output
  end

  def default_attributions

    if @default_attribution == true
      return
    end

    @default_attribution=true
    #Default value attribution
    @width = 500 if @width == nil
    @height = 100 if @height == nil
    #@width = @height = @size if @size!=nil
    
    if @data==nil
      @data=[1,1,1]
    end

  end

end