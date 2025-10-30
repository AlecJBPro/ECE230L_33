module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    
    wire [7:0] d0, d1, d2, d3;
    wire s0, s1, s2, s3;
    wire [7:0] m0, m1, m2, m3;
    demux dmux (data, addr, d0, d1, d2, d3);
    
    demux1 dmuxs (store, addr, s0, s1, s2, s3);
    
    byte_memory bm0 (d0, s0, m0);
    byte_memory bm1 (d1, s1, m1);
    byte_memory bm2 (d2, s2, m2);
    byte_memory bm3 (d3, s3, m3);
    
    mux mux (addr, m0, m1, m2, m3, memory);
    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule
