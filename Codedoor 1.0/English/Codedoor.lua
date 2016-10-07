local component = require("component")
local io = require("io")
local rs
local colors = require("colors")
local term = require("term")
local os = require("os")

component.gpu.setForeground(0xFFFF00)
term.write("========================================= \n")
component.gpu.setForeground(0xFFa700)
term.write("            Login system                  \n")
term.write("                      v1.0                \n")
component.gpu.setForeground(0x00c5ff)
term.write("                   User Edition           \n") 
component.gpu.setForeground(0xFFFF00)
term.write("========================================= \n")

component.gpu.setForeground(0xff0000)
term.write("Note:\n")
term.write("If you dont know the user\n")
term.write("You can't login\n")
term.write("\n")

component.gpu.setForeground(0xFFFF00)
term.write("User> ")
component.gpu.setForeground(0xFFFFFF)
input = io.read()

if input == "Gamerexde" then
  component.gpu.setForeground(0xFF0000)
  term.write("\n")
  term.write("Matching user please wait...\n")
  term.write("\n")
  os.sleep(2)
  end

if input ~= "Gamerexde" then
  component.gpu.setForeground(0xff0000)
  term.write("\n")
  term.write("Wrong user, try again!\n")
  component.gpu.setForeground(0xffffff)
  return end

component.gpu.setForeground(0x00ffec)
term.write("Passowrd> ")
component.gpu.setForeground(0xFFFFFF)

input = io.read()

if input ~= "9010" then
  component.gpu.setForeground(0xff0000)
  term.write("The password is not the correct, try again.")
  term.write("\n")
  component.gpu.setForeground(0xffffff)
  return end 
if input == "9010" then
  component.gpu.setForeground(0x15ff00)
  term.write("Access Granted!\n")
  term.write("Duration time is (3 Seconds) ")
  component.gpu.setForeground(0xFFFFFF)
  component.redstone.setOutput(4, 9)
end

os.sleep(3)

component.redstone.setOutput(4, 0)
component.gpu.setForeground(0xFF0000)
term.write("\n")
term.write("Returning to shell...\n")
component.gpu.setForeground(0xFFFFFF)