FILES = "files/"

last_file_path = "files/input.txt"
last_file_name = "input"
last_file = io.open(last_file_path)

local function executeFile(fileName)
  -- Start
  local finalString = ""
  local pathTo = FILES .. (fileName or last_file_name) .. ".txt"

  last_file = io.open(pathTo)  

  for char in last_file:lines() do 
    finalString = finalString .. char
  end

  loadstring(finalString)()

  last_file_path = pathTo
  last_file_name = fileName or last_file_name
  last_file = io.open(last_file_path)
  -- End
end

executeFile(last_file_name) -- Put the file name in there

