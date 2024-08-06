#run {
    set_build_options_dc(.{do_output = false});
    opts: Generate_Bindings_Options;
    array_add(*opts.source_files,  "test.h");
    generate_bindings(opts, "test.jai");
}

#import "Compiler";
#import "Bindings_Generator";
#import "Basic";
