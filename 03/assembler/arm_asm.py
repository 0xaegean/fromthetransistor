import re

def assemble(assembly_code):
    """Assembles ARM assembly code into machine code."""

    instructions = []

    patterns = {
        r"ADD (\w+), (\w+), (\w+)": 0b00000000000000000000000000000001,
        r"MOV (\w+), #(\d+)": 0b11100011000000000000000000000000,  


    }

    for line in assembly_code.splitlines():
        line = line.strip()
        if line and not line.startswith("#"):
            for pattern,encoding in patterns.items():
                match = re.match(pattern, line)
                if match:
                    instructions.append((encoding, match.groups()))
                    break
                else:
                    raise ValueError(f"Invalid instruction: {line}")

    # generate binary_data
    binary_data = bytearray()
    for encoding, operands in instructions:
        # Assemble each instruction's binary representation here
        # Use operands to determine specific values within the encoding
        binary_data.extend(encoding.to_bytes(4, byteorder='little')) # example

    return binary_data

# example usage
assembly_code = """
ADD R0, R1, R2
MOV R3, #10
#  more instructions here
"""

binary_data =  assemble(assembly_code)

with open("output.bin", "wb") as f:
    f.write(binary_data)
