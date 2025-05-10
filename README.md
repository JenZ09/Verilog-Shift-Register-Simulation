<h1>4-Bit Shift Register in Verilog</h1>

This project is a Verilog-based implementation of a 4-bit shift register, which includes both the <b>shift register module</b> and a <b>testbench</b> to simulate its behavior.

<h2>Features</h2>

<h3>Shift Register Module:</h3>
<ul>
  <li>A 4-bit serial-in, parallel-out shift register</li>
  <li>Supports <b>reset</b> functionality</li>
  <li>Serial input is shifted through the register on each clock cycle</li>
  <li>Parallel output provides the current state of the register</li>
</ul>

<h3>Testbench:</h3>
<ul>
  <li>Simulates the shift register behavior with various serial input values</li>
  <li>Generates a <b>VCD file</b> for waveform visualization</li>
  <li>Waveform monitoring using <code>$monitor</code> to observe the signals during simulation</li>
</ul>

<h2>Requirements</h2>
<ul>
  <li>iverilog (for simulation)</li>
  <li>gtkwave (for viewing the waveform)</li>
</ul>

<h2>To install dependencies</h2>
<ul>
  <li>To install iverilog (if not already installed):</li>
  
  ```
  sudo apt install iverilog
  ```
  
  <li>To install gtkwave (for waveform visualization):</li>
  
  ```
  sudo apt install gtkwave
  ```
</ul>

<h2>Folder Structure</h2>
<p>Ensure your project folder has the following files:</p>
<pre>
shift_register/
├── shift_register.v        # 4-bit shift register module
├── shift_register_tb.v     # Testbench for the shift register
└── shift_register.vcd      # VCD file generated during simulation (after running the testbench)
</pre>

<h2>How to Run</h2>

1. Compile the Verilog files using iverilog:
   ```
   iverilog -o shift_register_tb.vvp shift_register.v shift_register_tb.v
   ```

3. Run the simulation:
   ```
   vvp shift_register_tb.vvp
   ```

5. View the waveform:
   After running the simulation, the shift_register.vcd file is generated.
   You can open it with GTKWave:
   ```
   gtkwave shift_register.vcd
   ```

<h2>Notes</h2>
<ul>
  <li>The shift_register.vcd file contains the waveform data for visualizing the simulation output</li>
  <li>The simulation monitors the behavior of the shift register based on different serial input values</li>
  <li>You can modify the testbench to simulate additional scenarios</li>
</ul>

This project demonstrates a basic implementation of a <b>4-bit shift register</b> in Verilog with simulation and waveform analysis.

<h2>License</h2>
This project is open-source and available under the MIT License.
