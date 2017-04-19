local component = require("component")
local io = require("io")
local rs
local colors = require("colors")
local term = require("term")
local os = require("os")

component.gpu.setForeground(0xFFFF00)
term.write("========================================= \n")
component.gpu.setForeground(0xFFa700)
term.write("            Logging-System             \n")
term.write("                   v1.0                \n")
component.gpu.setForeground(0x00c5ff)
term.write("                   User Edition           \n") 
component.gpu.setForeground(0xFFFF00)
term.write("========================================= \n")

component.gpu.setForeground(0xff0000)
term.write("Aufmerksamkeit:\n")
term.write("Wenn Sie nicht den Benutzernamen kennen,\n")
term.write("sie können nicht darauf zugreifen.\n")
term.write("\n")

component.gpu.setForeground(0xFFFF00)
term.write("Benutzer> ")
component.gpu.setForeground(0xFFFFFF)
input = io.read()

if input == "Gamerexde" then
  component.gpu.setForeground(0xFF0000)
  term.write("\n")
  term.write("Identifizierung warten...\n")
  term.write("\n")
  os.sleep(2)
  end
  
if input ~= "Gamerexde" then
  component.gpu.setForeground(0xff0000)
  term.write("\n")
  term.write("Falscher Benutzername, versuchen Sie es erneut!\n")
  component.gpu.setForeground(0xffffff)
  return end

component.gpu.setForeground(0x00ffec)
term.write("Kennwort> ")
component.gpu.setForeground(0xFFFFFF)

input = io.read()

if input ~= "9010" then
  component.gpu.setForeground(0xff0000)
  term.write("Fehler! Versuchen Sie es später erneut.")
  term.write("\n")
  component.gpu.setForeground(0xffffff)
  return end 
if input == "9010" then
  component.gpu.setForeground(0x15ff00)
  term.write("Zugang Zugegeben!\n")
  term.write("Die Sitzungszeit beträgt 3 Sekunden ")
  component.gpu.setForeground(0xFFFFFF)
  component.redstone.setOutput(4, 9)
end

os.sleep(3)

component.redstone.setOutput(4, 0)
component.gpu.setForeground(0xFF0000)
term.write("\n")
term.write("Zurückkommend auf Shell...\n")
component.gpu.setForeground(0xFFFFFF)
