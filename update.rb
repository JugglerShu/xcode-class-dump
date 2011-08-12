require 'fileutils'

for file in Dir["/Developer/Library/Xcode/PrivatePlugIns/*"]
  filename = File.basename(file, ".*")
  `class-dump '#{file}' > #{filename}.h`
end