# See LICENSE.vyoma for details

# SPDX-License-Identifier: CC0-1.0

import os
import random
from pathlib import Path

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge

@cocotb.test()
async def test_seq_bug1(dut):
     """Test for seq detection """

     clock = Clock(dut.clk, 10, units="us")  # Create a 10us period clock on port clk
     cocotb.start_soon(clock.start())        # Start the clock

     # reset
     dut.reset.value = 1
     await FallingEdge(dut.clk)  
     dut.reset.value = 0
     await FallingEdge(dut.clk)

      # input driving
     
     for i in range(4):
        dut.inp_bit.value = random.randint(0,1)
        await FallingEdge(dut.clk)

        assert dut.seq_seen.value == 1, "Randomised test failed with: {}  = {}".format(dut.inp_bit.value, dut.seq_seen.value)


