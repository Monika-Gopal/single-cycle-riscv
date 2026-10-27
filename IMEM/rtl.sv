
module imem(
    input  logic [31:0] a,
    output logic [31:0] rd
);

    logic [31:0] rom [0:63];

    initial begin
        $readmemh("IMEM/memfile.txt", rom);
    end

    always_comb begin
        if (a[1:0] != 2'b00)
            rd = 32'b0;
        else
            rd = rom[a[7:2]];
    end

endmodule
