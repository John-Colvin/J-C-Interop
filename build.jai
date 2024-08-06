#run {
    set_build_options_dc(.{do_output = false});
    w := compiler_create_workspace();
    options := get_build_options();
    options.output_type = .STATIC_LIBRARY;
    options.output_executable_name = "lib-jai";
    new_path: [..] string;
    array_add(*new_path, ..options.import_path);
    array_add(*new_path, ".");
    options.import_path = new_path;
    set_build_options(options, w);
    add_build_file("lib.jai", w);
}

#import "Compiler";
#import "Basic";
