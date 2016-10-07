local component = require("component")
local io = require("io")
local rs
local colors = require("colors")
local term = require("term")
local os = require("os")

component.gpu.setForeground(0xFFFF00)
term.write("========================================= \n")
component.gpu.setForeground(0xFFa700)
term.write("            Sistema de logueo             \n")
term.write("                      v1.0                \n")
component.gpu.setForeground(0x00c5ff)
term.write("                   User Edition           \n") 
component.gpu.setForeground(0xFFFF00)
term.write("========================================= \n")

component.gpu.setForeground(0xff0000)
term.write("Nota:\n")
term.write("Si no sabes el usuario\n")
term.write("No podras acceder\n")
term.write("\n")

component.gpu.setForeground(0xFFFF00)
term.write("Usuario> ")
component.gpu.setForeground(0xFFFFFF)
input = io.read()

if input == "Gamerexde" then
  component.gpu.setForeground(0xFF0000)
  term.write("\n")
  term.write("Identificando espere...\n")
  term.write("\n")
  os.sleep(2)
  end

if input ~= "Gamerexde" then
  component.gpu.setForeground(0xff0000)
  term.write("\n")
  term.write("Usuario incorecto intenta de nuevo\n")
  component.gpu.setForeground(0xffffff)
  return end

component.gpu.setForeground(0x00ffec)
term.write("Contra> ")
component.gpu.setForeground(0xFFFFFF)

input = io.read()

if input ~= "9010" then
  component.gpu.setForeground(0xff0000)
  term.write("Incorecto! Intenta de nuevo mas tarde.")
  term.write("\n")
  component.gpu.setForeground(0xffffff)
  return end 
if input == "9010" then
  component.gpu.setForeground(0x15ff00)
  term.write("Acceso consedido!\n")
  term.write("El tiempo de duracion es de (3 Segundos) ")
  component.gpu.setForeground(0xFFFFFF)
  component.redstone.setOutput(4, 9)
end

os.sleep(3)

component.redstone.setOutput(4, 0)
component.gpu.setForeground(0xFF0000)
term.write("\n")
term.write("Volviendo a shell...\n")
component.gpu.setForeground(0xFFFFFF)