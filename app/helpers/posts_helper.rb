module PostsHelper
  def translate_class_name(class_name)
    case class_name
    when "Question"
      "問"
    when "Answer"
      "解"
    when "Heart"
      "心"
    else
      "不明なタイプ"
    end
  end
end
