# puts "A
# Australia
# F
# Fiji
# K
# Kiribati
# M
# Marshall Islands
# Micronesia
# S
# Samoa
# Solomon Islands
# N
# Nauru
# New Zealand
# P
# Palau
# Papua New Guinea
# T
# Tonga
# Tuvalu
# V
# Vanuatu".split("\n").delete_if {|entry| entry.length == 1 }.join(", ")