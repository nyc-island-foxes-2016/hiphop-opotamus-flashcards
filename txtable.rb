require 'pry'

module Txtable

def generate_array_from_txt(file_path)
  txt_lines = File.read(file_path).join('\n')
end

Private

def organize_txt_lines(txt_lines)
  txt_lines.reject{|line| line == ""}
end

end
