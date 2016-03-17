=begin
Program read file line by line and push it to array. If there is substring "word"
replace it by "inserted word".
Another method write array to the same file.
=end


def get_file_path(file_name)
    File.expand_path(File.dirname(__FILE__)) + '/' + file_name
end

def read_from_file(name_with_extension)
  content = Array.new
  input = name_with_extension
  begin
    file = File.open(input, 'r')
    file.each do |line|
      content.push(line.sub('word', 'inserted word'))
    end
  ensure
    file.close unless file == nil
  end
  content
end

def write_to_file(name_with_extension, content)
    output = name_with_extension
    begin
      file = File.open(output, 'w')
      file.puts(content)
    ensure
      file.close unless file == nil
    end
end

  file_path = get_file_path("testfile.txt")
  content = read_from_file(file_path)
  write_to_file(file_path, content)
