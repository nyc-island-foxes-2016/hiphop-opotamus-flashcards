require 'pry'

module Txtable

def generate_line_pairs_from_txt(file_path)
  txt_lines = File.read(file_path).join('\n')
  pair_txt_lines(txt_lines)
end

Private

def pair_txt_lines(txt_lines)
  line_pairs = []
  txt_lines = txt_lines.reject{|line| line == ""}
  txt_lines.each_slice(2) {|pair| line_pairs << pair}
  line_pairs
end

end
