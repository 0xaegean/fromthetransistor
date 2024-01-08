import binascii

class ArmAssemblerInstruction:
    def __init__(self, mnemonic, operands):
        self.mnemonic = mnemonic
        self.operands = operands

        def __str__(self):
            return f"{self.mnemonic} {self.operands}"

        def to_binary(self):
            return binascii.unhexlify(f"{self.mnemonic} {self.operands}")

def assemble_arm_instruction(mnemonic, operands):
    instruction = ArmAssemblerInstruction(mnemonic, operands)
    return instruction

def disassemble_arm_instruction(instruction):
    mnemonic = insruction.mnemonic
    operands = instruction.operands
    return mnemonic, operands

def main():
    instruction = assemble_arm_instruction("add", ["r0", "r1", "r2"])
    print(instruction)
    print(instruction.to_binary())

    mnemonic, operands = disassemble_arm_instruction(instruction)
    print(mnemonic, operands)

if __name__ == "__main__":
    main()
